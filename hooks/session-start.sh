#!/usr/bin/env bash
# SessionStart hook for deliberate-decisions plugin

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
PLUGIN_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

# Read using-deliberate-decisions content
using_dd_content=$(cat "${PLUGIN_ROOT}/skills/using-deliberate-decisions/SKILL.md" 2>&1 || echo "Error reading using-deliberate-decisions skill")

# Escape outputs for JSON using pure bash
escape_for_json() {
    local input="$1"
    local output=""
    local i char
    for (( i=0; i<${#input}; i++ )); do
        char="${input:$i:1}"
        case "$char" in
            $'\\') output+='\\' ;;
            '"') output+='\"' ;;
            $'\n') output+='\n' ;;
            $'\r') output+='\r' ;;
            $'\t') output+='\t' ;;
            *) output+="$char" ;;
        esac
    done
    printf '%s' "$output"
}

using_dd_escaped=$(escape_for_json "$using_dd_content")

# Output context injection as JSON
cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "<IMPORTANT>\nYou have access to Deliberate Decisions - a framework for systematic decision-making.\n\n**Below is the 'using-deliberate-decisions' skill. For gate skills, use the Skill tool:**\n\n${using_dd_escaped}\n</IMPORTANT>"
  }
}
EOF

exit 0
