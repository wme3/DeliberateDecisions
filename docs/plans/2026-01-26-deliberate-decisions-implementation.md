# Deliberate Decisions Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Build the Deliberate Decisions plugin - a complete skills framework for AI-assisted decision-making.

**Architecture:** Claude plugin with 13 skills (7 gate + 6 supporting), 5 commands, and session hooks. Mirrors superpowers structure.

**Tech Stack:** Markdown skills, bash hooks, JSON config.

---

## Task 1: Project Scaffolding

**Files:**
- Create: `.claude-plugin/plugin.json`
- Create: `hooks/hooks.json`
- Create: `hooks/session-start.sh`
- Create: `LICENSE`

**Step 1: Create plugin.json**

Create `.claude-plugin/plugin.json`:

```json
{
  "name": "deliberate-decisions",
  "description": "Skills for AI agents to help humans make high-stakes decisions through systematic research and structured analysis",
  "version": "0.1.0",
  "author": {
    "name": "Matt"
  },
  "homepage": "https://github.com/matt/deliberate-decisions",
  "repository": "https://github.com/matt/deliberate-decisions",
  "license": "MIT",
  "keywords": ["decisions", "research", "analysis", "kahneman", "system2", "strategic"]
}
```

**Step 2: Create hooks.json**

Create `hooks/hooks.json`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "startup|resume|clear|compact",
        "hooks": [
          {
            "type": "command",
            "command": "${CLAUDE_PLUGIN_ROOT}/hooks/session-start.sh"
          }
        ]
      }
    ]
  }
}
```

**Step 3: Create session-start.sh**

Create `hooks/session-start.sh`:

```bash
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
```

**Step 4: Make session-start.sh executable**

Run: `chmod +x hooks/session-start.sh`

**Step 5: Create LICENSE**

Create `LICENSE`:

```
MIT License

Copyright (c) 2026 Matt

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

**Step 6: Create directory structure**

Run:
```bash
mkdir -p skills/{using-deliberate-decisions,thesis-framing,landscape-mapping,deep-research,calibration,contrarian-analysis,synthesis,decision-capture,bias-detection,evidence-evaluation,decision-review,decision-advocacy,decision-detraction}
mkdir -p commands
mkdir -p docs/decisions
```

**Step 7: Commit scaffolding**

```bash
git add .claude-plugin hooks LICENSE skills commands docs
git commit -m "chore: initial project scaffolding for deliberate-decisions"
```

---

## Task 2: Core Skill - using-deliberate-decisions

**Files:**
- Create: `skills/using-deliberate-decisions/SKILL.md`

**Step 1: Create the skill**

Create `skills/using-deliberate-decisions/SKILL.md`:

```markdown
---
name: using-deliberate-decisions
description: Introduction to the Deliberate Decisions framework - use when helping humans make high-stakes decisions
---

# Deliberate Decisions

A framework for systematic decision-making. Helps surface hidden assumptions, separate facts from speculation, and make rigorous choices.

## When to Use

Use this framework when a human faces a **high-stakes decision**:
- Strategic business decisions (M&A, market entry, major investments)
- Career decisions (job changes, pivots)
- Technical decisions (architecture, vendor selection)
- Any decision where being wrong is costly

## The Seven Gates

Every decision passes through seven mandatory gates. You can exit early, but you cannot skip gates.

| Gate | Name | Purpose |
|------|------|---------|
| 1 | **Thesis** | Articulate what we're deciding and why |
| 2 | **Landscape** | Map Decision Points, Intersections, alternatives |
| 3 | **Research** | Gather evidence, find reference class |
| 4 | **Calibration** | Separate Facts from Assumptions, update Knowns/Unknowns |
| 5 | **Contrarian** | Pre-mortem, steel-man opposition, surface biases |
| 6 | **Synthesis** | Must-Be-True Conditions, Exit Criteria, recommendation |
| 7 | **Decision** | Human chooses with full picture |

## Starting a Decision

Use `/decide` or invoke `deliberate-decisions:thesis-framing` to begin.

## Core Principles

1. **Decisions fail in small assumptions** - Surface the hidden structure
2. **Facts vs Assumptions** - Rigorous separation of verifiable from speculative
3. **System 2 thinking** - Gates enforce deliberate, not intuitive, analysis
4. **Adversarial by default** - Pre-mortem and steel-manning are required
5. **One question at a time** - AI builds the model incrementally

## Key Concepts

- **Decision Points**: Individual choices or assumptions that influence outcome
- **Decision Intersections**: How Decision Points depend on or conflict with each other
- **Must-Be-True Conditions**: Assumptions that must hold for the decision to succeed
- **Exit Criteria**: Pre-committed tripwires to reverse the decision if needed

## Commands

| Command | Action |
|---------|--------|
| `/decide` | Start new decision from Thesis gate |
| `/advocate` | Generate compelling case FOR |
| `/detract` | Generate compelling case AGAINST |
| `/review-decision` | Review past decision against outcomes |
| `/resume-decision` | Continue paused decision |
```

**Step 2: Commit**

```bash
git add skills/using-deliberate-decisions/SKILL.md
git commit -m "feat: add using-deliberate-decisions core skill"
```

---

## Task 3: Gate 1 - thesis-framing

**Files:**
- Create: `skills/thesis-framing/SKILL.md`

**Step 1: Create the skill**

Create `skills/thesis-framing/SKILL.md`:

```markdown
---
name: thesis-framing
description: Gate 1 - Define the decision, stakeholders, constraints, and reversibility
---

# Gate 1: Thesis Framing

**Purpose:** Articulate what we're deciding and why before any analysis.

**Announce:** "Starting Thesis Gate - let's clearly define the decision."

## Entry Criteria

- Human has indicated a decision needs to be made
- No prior gates completed for this decision

## Process

Ask questions **one at a time** to establish:

### 1. Decision Statement
- What exactly are we deciding?
- Frame as a clear yes/no or choice between alternatives
- "Should we [action]?" or "Which of [options] should we choose?"

### 2. Context & Trigger
- Why is this decision being made now?
- What happens if we don't decide?
- Is there a deadline?

### 3. Stakeholders
- Who is affected by this decision?
- Who has input? Who decides?
- Are there conflicting interests?

### 4. Constraints
- What limits the decision space?
- Budget, time, regulations, resources?
- Which constraints are non-negotiable vs flexible?

### 5. Success Criteria
- How will we know if this decision was right?
- What does success look like in 1 year? 5 years?
- What metrics matter?

### 6. Time Horizon & Reversibility
- One-way door or two-way door? (Bezos framing)
- How long until we know if it worked?
- What's the cost of reversal if wrong?

## Output

Create initial decision artifact:

```markdown
# Decision: [Statement]

## Thesis Gate Summary

**Decision Statement:** [Clear framing]

**Trigger:** [Why now]

**Stakeholders:**
- Affected: [list]
- Input: [list]
- Decider: [name/role]

**Constraints:**
- Non-negotiable: [list]
- Flexible: [list]

**Success Criteria:** [metrics/outcomes]

**Reversibility:** [one-way/two-way, cost of reversal]

**Time Horizon:** [when we'll know]
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/decision.md`

## Exit Criteria

- Decision statement is clear and agreed
- Stakeholders identified
- Constraints documented
- Success criteria defined
- Reversibility assessed

## Bias Watch

Watch for:
- **Framing effects** - Is the question biased toward a particular answer?
- **False dichotomy** - Are there options we're not considering?
- **Urgency bias** - Is the deadline real or artificial?

## Next Gate

Proceed to: `deliberate-decisions:landscape-mapping`
```

**Step 2: Commit**

```bash
git add skills/thesis-framing/SKILL.md
git commit -m "feat: add thesis-framing skill (Gate 1)"
```

---

## Task 4: Gate 2 - landscape-mapping

**Files:**
- Create: `skills/landscape-mapping/SKILL.md`

**Step 1: Create the skill**

Create `skills/landscape-mapping/SKILL.md`:

```markdown
---
name: landscape-mapping
description: Gate 2 - Surface Decision Points, Intersections, alternatives, and initial Knowns/Unknowns
---

# Gate 2: Landscape Mapping

**Purpose:** Map the structure of the decision before gathering evidence.

**Announce:** "Moving to Landscape Gate - let's map the decision structure."

## Entry Criteria

- Thesis Gate completed
- Decision statement is clear

## Process

### 1. Surface Alternatives

Always include "do nothing" as an explicit option.

Ask:
- What are the options we're considering?
- Are there options we haven't considered?
- What would a contrarian suggest?

Document each alternative with a brief description.

### 2. Identify Decision Points

For each alternative, surface the underlying assumptions and choices.

**Decision Point format:**
- Statement: "We assume [X]" or "We would choose [Y]"
- Type: *assumption* (we believe) or *choice* (we decide)
- Confidence: *high / medium / low / unknown*

Ask probing questions one at a time:
- What has to be true for this to work?
- What are we assuming about the market/customers/technology?
- What choices does this lock us into?

### 3. Map Decision Intersections

Identify relationships between Decision Points:

- **Depends on**: If A is wrong, B doesn't matter
- **Conflicts with**: A and B can't both be true
- **Reinforces**: A being true strengthens B

### 4. Initial Knowns/Unknowns

Categorize what we know:

- **Known**: We have reliable information
- **Unknown-Knowable**: We could find out with research
- **Unknown-Unknowable**: Cannot be determined; must assume

## Output

Update decision artifact with:

```markdown
## Landscape Gate Summary

### Alternatives

1. **[Option A]**: [description]
2. **[Option B]**: [description]
3. **Do nothing**: [what happens]

### Decision Points

| ID | Statement | Type | Confidence | Alternative |
|----|-----------|------|------------|-------------|
| DP1 | [assumption/choice] | assumption | medium | Option A |
| DP2 | [assumption/choice] | choice | high | Option A |
| ... | ... | ... | ... | ... |

### Decision Intersections

- DP1 **depends on** DP3
- DP2 **conflicts with** DP5
- DP4 **reinforces** DP1

### Knowns/Unknowns

**Known:**
- [fact with source]

**Unknown-Knowable:**
- [question we can research]

**Unknown-Unknowable:**
- [thing we must assume]
```

## Exit Criteria

- All realistic alternatives documented (including "do nothing")
- Decision Points surfaced for each alternative
- Intersections mapped
- Knowns/Unknowns categorized

## Bias Watch

Watch for:
- **Anchoring** - Over-weighting the first option considered
- **Confirmation bias** - Only surfacing assumptions that support preferred option
- **Groupthink** - Missing alternatives that challenge consensus

## Next Gate

Proceed to: `deliberate-decisions:deep-research`
```

**Step 2: Commit**

```bash
git add skills/landscape-mapping/SKILL.md
git commit -m "feat: add landscape-mapping skill (Gate 2)"
```

---

## Task 5: Gate 3 - deep-research

**Files:**
- Create: `skills/deep-research/SKILL.md`

**Step 1: Create the skill**

Create `skills/deep-research/SKILL.md`:

```markdown
---
name: deep-research
description: Gate 3 - Web search, document analysis, reference class, gather evidence
---

# Gate 3: Deep Research

**Purpose:** Gather evidence to fill knowledge gaps and ground the decision in facts.

**Announce:** "Moving to Research Gate - let's gather evidence."

## Entry Criteria

- Landscape Gate completed
- Unknown-Knowables identified

## Research Sources

Use all available sources:

1. **Conversation** - Ask human for internal knowledge, context, documents
2. **Documents** - Analyze provided reports, financials, memos
3. **Web research** - Search for market data, competitor info, industry analysis

## Process

### 1. Prioritize Research Questions

Review Unknown-Knowables from Landscape Gate. Prioritize by:
- Impact on decision (high impact first)
- Feasibility of finding answer
- Time available

### 2. Gather Evidence

For each research question:

**Ask human first:**
- "Do you have internal data on [X]?"
- "Is there a document that covers [Y]?"

**Then search externally:**
- Market data and trends
- Competitor analysis
- Industry reports
- Academic research
- News and recent developments

### 3. Find Reference Class (Kahneman)

Critical for countering overconfidence.

Ask:
- What similar decisions have been made before?
- What's the base rate of success for decisions like this?
- What happened to others who made this choice?

Example: "M&A deals in this sector have a 60% failure rate in achieving projected synergies."

### 4. Evaluate Evidence Quality

For each piece of evidence, assess:
- **Source credibility**: Who produced this? What's their bias?
- **Recency**: Is this current or outdated?
- **Relevance**: Does this directly apply to our situation?
- **Methodology**: How was this data gathered?

Use `deliberate-decisions:evidence-evaluation` for detailed assessment.

## Output

Create research notes:

```markdown
# Research Notes: [Decision]

## Research Questions

| Question | Priority | Status |
|----------|----------|--------|
| [Unknown-Knowable 1] | High | Researched |
| [Unknown-Knowable 2] | Medium | Partial |

## Findings

### [Topic 1]

**Finding:** [what we learned]
**Source:** [citation]
**Quality:** [high/medium/low]
**Relevance:** [direct/indirect]

### [Topic 2]
...

## Reference Class

**Similar decisions:** [examples]
**Base rate:** [success rate for this type of decision]
**Key lessons:** [what others learned]

## Remaining Gaps

- [Questions we couldn't answer]
- [Areas needing more research]
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/research-notes.md`

## Exit Criteria

- High-priority Unknown-Knowables researched
- Reference class identified with base rates
- Evidence quality assessed
- Remaining gaps documented

## Bias Watch

Watch for:
- **Confirmation bias** - Only seeking evidence that supports preferred option
- **Availability bias** - Over-weighting easily found information
- **Authority bias** - Accepting claims because of source prestige

Actively search for **disconfirming evidence**.

## Next Gate

Proceed to: `deliberate-decisions:calibration`
```

**Step 2: Commit**

```bash
git add skills/deep-research/SKILL.md
git commit -m "feat: add deep-research skill (Gate 3)"
```

---

## Task 6: Gate 4 - calibration

**Files:**
- Create: `skills/calibration/SKILL.md`

**Step 1: Create the skill**

Create `skills/calibration/SKILL.md`:

```markdown
---
name: calibration
description: Gate 4 - Consolidate Facts vs Assumptions, update Knowns/Unknowns, inventory assumptions
---

# Gate 4: Calibration

**Purpose:** Pause and consolidate. What do we actually know vs. what are we still assuming?

**Announce:** "Moving to Calibration Gate - let's separate facts from assumptions."

## Entry Criteria

- Research Gate completed
- Evidence gathered

## Why This Gate Exists

After research, it's tempting to rush to conclusions. This gate forces a pause:
- Research often reveals that "facts" were actually assumptions
- New unknowns emerge
- Confidence levels shift

Without calibration, unexamined assumptions carry into analysis.

## Process

### 1. Review All Claims

Go through every Decision Point and piece of evidence. For each, ask:

**Is this a Fact or an Assumption?**

- **Fact**: Verifiable, sourced, evidence-backed
  - "Company X had $50M revenue in 2025" (from audited financials)

- **Assumption**: Opinion, projection, speculation
  - "Revenue will grow 20% next year" (projection, not fact)

### 2. Update Confidence Levels

For each Decision Point, reassess confidence based on research:
- Did we find supporting evidence?
- Did we find contradicting evidence?
- Is confidence higher, lower, or unchanged?

### 3. Rebuild Knowns/Unknowns

Create updated inventory:

| Category | Before Research | After Research |
|----------|-----------------|----------------|
| Known | [list] | [updated list] |
| Unknown-Knowable | [list] | [what moved to Known?] |
| Unknown-Unknowable | [list] | [updated list] |

### 4. Assumption Inventory

List every assumption the decision rests on:

| Assumption | Confidence | Evidence | Impact if Wrong |
|------------|------------|----------|-----------------|
| [statement] | high/med/low | [cite or "none"] | [consequence] |

Flag assumptions that are:
- Low confidence + high impact = **Critical Risk**
- No evidence + high impact = **Blind Spot**

## Output

Create calibration log:

```markdown
# Calibration Log: [Decision]

## Facts (Verified)

| Statement | Source | Verified |
|-----------|--------|----------|
| [fact] | [source] | Yes |

## Assumptions (Unverified)

| Statement | Confidence | Evidence | Impact if Wrong |
|-----------|------------|----------|-----------------|
| [assumption] | Medium | [partial] | [consequence] |

## Critical Risks (Low Confidence + High Impact)

1. **[Assumption]**: [why it's risky]

## Blind Spots (No Evidence + High Impact)

1. **[Assumption]**: [why it matters]

## Updated Knowns/Unknowns

**Now Known:**
- [things confirmed by research]

**Still Unknown-Knowable:**
- [remaining research gaps]

**Unknown-Unknowable:**
- [things we must assume]

## Confidence Changes

| Decision Point | Before | After | Reason |
|----------------|--------|-------|--------|
| DP1 | Medium | High | Found supporting data |
| DP3 | High | Low | Contradicting evidence |
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/calibration-log.md`

## Exit Criteria

- All claims categorized as Fact or Assumption
- Confidence levels updated
- Critical Risks identified
- Blind Spots flagged

## Bias Watch

Watch for:
- **Overconfidence** - Rating confidence higher than evidence supports
- **Wishful thinking** - Treating hopes as facts
- **Complexity bias** - Assuming sophisticated analysis = accurate analysis

## Next Gate

Proceed to: `deliberate-decisions:contrarian-analysis`
```

**Step 2: Commit**

```bash
git add skills/calibration/SKILL.md
git commit -m "feat: add calibration skill (Gate 4)"
```

---

## Task 7: Gate 5 - contrarian-analysis

**Files:**
- Create: `skills/contrarian-analysis/SKILL.md`

**Step 1: Create the skill**

Create `skills/contrarian-analysis/SKILL.md`:

```markdown
---
name: contrarian-analysis
description: Gate 5 - Pre-mortem, steel-man opposition, surface biases, second-order effects
---

# Gate 5: Contrarian Analysis

**Purpose:** Actively attack the decision. Find the strongest reasons it could fail.

**Announce:** "Moving to Contrarian Gate - let's stress-test this decision."

## Entry Criteria

- Calibration Gate completed
- Facts and Assumptions separated

## Why This Gate Exists

Humans naturally seek confirmation. This gate forces adversarial thinking:
- If we can't find strong counterarguments, we haven't looked hard enough
- The goal is to **want** to find flaws (not reluctantly admit them)

## Process

### 1. Pre-Mortem (Kahneman/Klein)

**Frame:** "It's [time horizon] later. This decision failed catastrophically. Why?"

Ask human to imagine failure, then work backward:
- What went wrong?
- Which assumptions proved false?
- What did we miss?
- What external factors changed?

Document at least 5 failure scenarios.

### 2. Steel-Man the Opposition

For each rejected alternative (including "do nothing"):
- What's the **strongest** case for that option?
- What would a smart advocate argue?
- What evidence supports that path?

Don't strawman. Build the best possible case against the preferred option.

### 3. Surface Cognitive Biases

Review the decision process for biases:

| Bias | Check | Found? |
|------|-------|--------|
| Confirmation | Did we seek disconfirming evidence? | |
| Anchoring | Are we over-weighting initial information? | |
| Sunk Cost | Are past investments influencing future choice? | |
| Availability | Are we over-weighting recent/memorable examples? | |
| Overconfidence | Is our confidence calibrated to evidence? | |
| Groupthink | Have dissenting views been heard? | |

Use `deliberate-decisions:bias-detection` for deeper analysis.

### 4. Second-Order Effects

Ask: "And then what?"

For the preferred option:
- What happens immediately after the decision?
- What are the ripple effects?
- How might competitors/stakeholders respond?
- What unintended consequences could emerge?

Map at least 2 levels deep.

### 5. Identify Decision Killers

Are there any findings that should **stop** the decision?

- Fatal flaws in core assumptions?
- Unacceptable risks in failure scenarios?
- Biases that completely undermine the analysis?

If killers exist, the decision should not proceed without addressing them.

## Output

Update decision artifact with:

```markdown
## Contrarian Gate Summary

### Pre-Mortem: Failure Scenarios

1. **[Scenario]**: [what went wrong, which assumptions failed]
2. **[Scenario]**: [what went wrong]
3. ...

### Steel-Manned Alternatives

**Case for [Alternative A]:**
[Best argument for this option]

**Case for Do Nothing:**
[Best argument for inaction]

### Bias Audit

| Bias | Status | Notes |
|------|--------|-------|
| Confirmation | Found | [how it appeared] |
| Anchoring | Clear | |
| ... | ... | ... |

### Second-Order Effects

**Immediate:** [what happens right after]
**Level 2:** [ripple effects]
**Stakeholder responses:** [how others react]

### Decision Killers

- [ ] None identified
- [ ] **[Killer]**: [why this should stop the decision]
```

## Exit Criteria

- Pre-mortem completed with 5+ failure scenarios
- All alternatives steel-manned
- Bias audit complete
- Second-order effects mapped
- Decision killers identified (or confirmed none)

## Bias Watch

Watch for:
- **Defensive reasoning** - Dismissing valid counterarguments
- **Motivated reasoning** - Finding flaws in opposing views but not preferred option
- **Premature closure** - Rushing through this gate

**This gate should feel uncomfortable.** If it doesn't, you're not doing it right.

## Next Gate

Proceed to: `deliberate-decisions:synthesis`
```

**Step 2: Commit**

```bash
git add skills/contrarian-analysis/SKILL.md
git commit -m "feat: add contrarian-analysis skill (Gate 5)"
```

---

## Task 8: Gate 6 - synthesis

**Files:**
- Create: `skills/synthesis/SKILL.md`

**Step 1: Create the skill**

Create `skills/synthesis/SKILL.md`:

```markdown
---
name: synthesis
description: Gate 6 - Must-Be-True Conditions, Exit Criteria, risk assessment, recommendation
---

# Gate 6: Synthesis

**Purpose:** Integrate all findings into a clear recommendation with explicit conditions.

**Announce:** "Moving to Synthesis Gate - let's integrate our findings."

## Entry Criteria

- Contrarian Gate completed
- Pre-mortem and bias audit done

## Process

### 1. Must-Be-True Conditions

For the preferred option to succeed, what **must** be true?

Focus on:
- Unknown-Unknowables (things we're betting on)
- Low-confidence assumptions with high impact
- External factors outside our control

Format:
| Condition | Why It Must Be True | Consequence if False |
|-----------|---------------------|----------------------|
| [statement] | [reasoning] | [what happens] |

### 2. Exit Criteria (Pre-Commitment)

Define tripwires **before** the decision is made:

- Under what conditions would we reverse this decision?
- What metrics would trigger a reassessment?
- What timeline for evaluation?

This counters sunk-cost fallacy by pre-committing to exit conditions.

Format:
| Trigger | Threshold | Action |
|---------|-----------|--------|
| [metric] | [value] | Reassess / Reverse |

### 3. Risk Assessment

Consolidate risks from all gates:

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [from pre-mortem] | High/Med/Low | High/Med/Low | [action] |
| [from assumptions] | ... | ... | ... |

Calculate overall risk profile:
- **Risk tolerance**: Is the human comfortable with this risk level?
- **Asymmetric payoffs**: Is upside worth the downside?

### 4. Recommendation

Based on all analysis, provide clear recommendation:

**Format:**
```
RECOMMENDATION: [Proceed / Do Not Proceed / Need More Information]

CONFIDENCE: [High / Medium / Low]

RATIONALE: [2-3 sentences summarizing why]

KEY CONDITIONS: [Top 3 Must-Be-True]

PRIMARY RISKS: [Top 3 risks]
```

If "Need More Information":
- What specific information is needed?
- How would it change the decision?

### 5. Decision Options

Present to human:
1. **Proceed** - Accept recommendation and move to Decision Gate
2. **Reject** - Choose different option, document rationale
3. **Pause** - Gather more information on specific gap
4. **Revisit** - Return to earlier gate with new information

## Output

Update decision artifact with:

```markdown
## Synthesis Gate Summary

### Must-Be-True Conditions

| # | Condition | Consequence if False |
|---|-----------|----------------------|
| 1 | [critical assumption] | [impact] |
| 2 | ... | ... |

### Exit Criteria (Pre-Committed)

| Trigger | Threshold | Action |
|---------|-----------|--------|
| [metric] | [value] | [response] |

### Risk Assessment

| Risk | L | I | Mitigation |
|------|---|---|------------|
| [risk] | M | H | [action] |

**Overall Risk Profile:** [High/Medium/Low]
**Risk Tolerance Match:** [Yes/No - explain]

### Recommendation

**RECOMMENDATION:** [Proceed / Do Not Proceed / Need More Information]

**CONFIDENCE:** [High / Medium / Low]

**RATIONALE:**
[Summary of reasoning]

**KEY CONDITIONS:**
1. [Must-Be-True 1]
2. [Must-Be-True 2]
3. [Must-Be-True 3]

**PRIMARY RISKS:**
1. [Risk 1]
2. [Risk 2]
3. [Risk 3]
```

## Exit Criteria

- Must-Be-True Conditions explicitly stated
- Exit Criteria pre-committed
- Risk assessment complete
- Clear recommendation with confidence level

## Next Gate

Proceed to: `deliberate-decisions:decision-capture`
```

**Step 2: Commit**

```bash
git add skills/synthesis/SKILL.md
git commit -m "feat: add synthesis skill (Gate 6)"
```

---

## Task 9: Gate 7 - decision-capture

**Files:**
- Create: `skills/decision-capture/SKILL.md`

**Step 1: Create the skill**

Create `skills/decision-capture/SKILL.md`:

```markdown
---
name: decision-capture
description: Gate 7 - Document final decision, rationale, and commit to artifact
---

# Gate 7: Decision Capture

**Purpose:** Human makes the final decision with full picture documented.

**Announce:** "Final Gate - time to decide."

## Entry Criteria

- Synthesis Gate completed
- Recommendation provided

## Process

### 1. Present Summary

Provide concise summary of the journey:

```
DECISION: [statement]

ALTERNATIVES CONSIDERED:
1. [Option A] - [one-line summary]
2. [Option B] - [one-line summary]
3. Do nothing - [one-line summary]

RECOMMENDATION: [option] with [confidence] confidence

MUST-BE-TRUE:
- [condition 1]
- [condition 2]
- [condition 3]

TOP RISKS:
- [risk 1]
- [risk 2]

EXIT TRIGGERS:
- [trigger 1]
- [trigger 2]
```

### 2. Human Decides

Ask: "What is your decision?"

Options:
- **Accept recommendation**
- **Choose different alternative** (document rationale)
- **Defer** (document what would change mind)
- **Cancel** (document why)

### 3. Document Rationale

Regardless of choice, capture:
- What was decided
- Why (in human's own words)
- What clinched it
- What concerns remain
- When to revisit

### 4. Finalize Artifact

Complete the decision document with:

```markdown
## Decision

**DECIDED:** [Yes/No/Deferred] on [date]

**CHOSEN OPTION:** [option name]

**RATIONALE:**
[Human's reasoning in their own words]

**DECIDING FACTORS:**
- [what clinched it]

**REMAINING CONCERNS:**
- [acknowledged risks/doubts]

**NEXT REVIEW:** [date or trigger]

---

## Document History

| Date | Gate | Status |
|------|------|--------|
| [date] | Thesis | Complete |
| [date] | Landscape | Complete |
| [date] | Research | Complete |
| [date] | Calibration | Complete |
| [date] | Contrarian | Complete |
| [date] | Synthesis | Complete |
| [date] | Decision | **[DECIDED/DEFERRED]** |
```

### 5. Commit and Close

Save final artifact to: `docs/decisions/YYYY-MM-DD-<decision-slug>/decision.md`

Inform human:
- Decision documented
- Available commands: `/advocate`, `/detract`, `/review-decision`

## Exit Criteria

- Human has made explicit choice
- Rationale documented
- Remaining concerns acknowledged
- Review date/trigger set

## Post-Decision

**If Proceed:** Offer to generate advocacy artifact with `/advocate`

**If Deferred:** Document what would trigger resumption

**Later:** Use `/review-decision` to compare outcomes to predictions
```

**Step 2: Commit**

```bash
git add skills/decision-capture/SKILL.md
git commit -m "feat: add decision-capture skill (Gate 7)"
```

---

## Task 10: Supporting Skill - bias-detection

**Files:**
- Create: `skills/bias-detection/SKILL.md`

**Step 1: Create the skill**

Create `skills/bias-detection/SKILL.md`:

```markdown
---
name: bias-detection
description: Library of cognitive biases, how to spot them, and guided corrections
---

# Bias Detection

Reference for identifying and correcting cognitive biases in decision-making.

## Severity Levels

| Severity | Response |
|----------|----------|
| **Minor** | Flag in artifact, note suggestion, continue |
| **Moderate** | Pause, propose correction, human approves before continuing |
| **Major** | Halt progress, guided correction required |

## Common Biases

### Confirmation Bias
**What it is:** Seeking/interpreting information to confirm existing beliefs.

**Signs:**
- Only researching sources that support preferred option
- Dismissing contradicting evidence as "flawed"
- Interpreting ambiguous data as supportive

**Correction:**
- Actively search for disconfirming evidence
- Ask: "What would convince me I'm wrong?"
- Assign someone to argue the opposite

**Severity:** Usually Moderate to Major

---

### Anchoring
**What it is:** Over-weighting the first piece of information received.

**Signs:**
- First option considered becomes default
- Initial numbers dominate estimates
- Difficulty adjusting from starting point

**Correction:**
- Consider alternatives before evaluating any option
- Generate estimates independently before seeing anchors
- Ask: "What if we started from the opposite assumption?"

**Severity:** Usually Moderate

---

### Overconfidence
**What it is:** Believing predictions are more accurate than they are.

**Signs:**
- Narrow confidence intervals
- "This is a sure thing"
- Ignoring base rates (reference class)
- Planning for best-case scenarios

**Correction:**
- Explicitly state confidence intervals
- Look up base rates for similar decisions
- Conduct pre-mortem
- Ask: "What's the outside view?"

**Severity:** Usually Major

---

### Sunk Cost Fallacy
**What it is:** Continuing because of past investment, not future value.

**Signs:**
- "We've already invested so much"
- Reluctance to abandon failing path
- Throwing good money after bad

**Correction:**
- Ask: "If starting fresh, would we make this choice?"
- Separate past costs from future analysis
- Pre-commit to exit criteria

**Severity:** Usually Moderate to Major

---

### Availability Bias
**What it is:** Over-weighting easily recalled examples.

**Signs:**
- Recent events dominate thinking
- Vivid stories outweigh statistics
- "This happened to someone I know"

**Correction:**
- Seek base rate data
- Look for systematic evidence
- Ask: "Is this representative or just memorable?"

**Severity:** Usually Minor to Moderate

---

### Groupthink
**What it is:** Conforming to group consensus, suppressing dissent.

**Signs:**
- No one voices concerns
- "Everyone agrees"
- Pressure to maintain harmony

**Correction:**
- Actively solicit dissent
- Assign devil's advocate role
- Anonymous input channels

**Severity:** Usually Major

---

### Framing Effects
**What it is:** Different conclusions from same data based on presentation.

**Signs:**
- "90% success" feels different than "10% failure"
- Choice of words influences preference
- Gains/losses framed asymmetrically

**Correction:**
- Reframe in multiple ways
- Present data in both positive and negative frames
- Ask: "How would this look framed differently?"

**Severity:** Usually Moderate

---

### Planning Fallacy
**What it is:** Underestimating time, costs, and risks; overestimating benefits.

**Signs:**
- Optimistic timelines
- Underestimated budgets
- "This will be different"

**Correction:**
- Reference class forecasting
- Add buffer to all estimates
- Look at actual completion data from similar projects

**Severity:** Usually Major

---

## Bias Audit Checklist

Use in Contrarian Gate:

- [ ] Confirmation bias: Did we seek disconfirming evidence?
- [ ] Anchoring: Are we over-weighting initial information?
- [ ] Overconfidence: Is confidence calibrated to evidence?
- [ ] Sunk cost: Are past investments influencing future choice?
- [ ] Availability: Are we over-weighting memorable examples?
- [ ] Groupthink: Have dissenting views been heard?
- [ ] Framing: Have we reframed the question multiple ways?
- [ ] Planning fallacy: Have we used outside view / base rates?
```

**Step 2: Commit**

```bash
git add skills/bias-detection/SKILL.md
git commit -m "feat: add bias-detection supporting skill"
```

---

## Task 11: Supporting Skill - evidence-evaluation

**Files:**
- Create: `skills/evidence-evaluation/SKILL.md`

**Step 1: Create the skill**

Create `skills/evidence-evaluation/SKILL.md`:

```markdown
---
name: evidence-evaluation
description: How to assess source quality and separate fact from assumption
---

# Evidence Evaluation

Framework for assessing the quality and reliability of evidence.

## Fact vs Assumption

### Fact
- **Verifiable**: Can be checked independently
- **Sourced**: Has identifiable origin
- **Evidence-backed**: Supported by data

Examples:
- "Company X reported $50M revenue in Q3 2025" (from SEC filing)
- "The market grew 12% last year" (from industry report with methodology)

### Assumption
- **Projection**: About the future
- **Opinion**: Interpretation of facts
- **Speculation**: Reasoning without direct evidence

Examples:
- "Revenue will grow 20% next year" (projection)
- "Customers prefer our product" (opinion without survey data)
- "Competitors will not respond aggressively" (speculation)

**Key test:** Could someone verify this independently right now?

---

## Source Quality Framework

Rate each source on four dimensions:

### 1. Credibility (Who)
| Rating | Criteria |
|--------|----------|
| High | Primary source, recognized authority, no conflicts of interest |
| Medium | Reputable secondary source, some expertise, minor conflicts |
| Low | Unknown source, no clear expertise, significant conflicts |

Questions:
- Who produced this?
- What's their expertise?
- Do they have incentive to mislead?

### 2. Methodology (How)
| Rating | Criteria |
|--------|----------|
| High | Clear methodology, peer review, reproducible |
| Medium | Methodology stated but not rigorous |
| Low | No methodology stated, anecdotal |

Questions:
- How was this data gathered?
- Could someone else replicate it?
- What are the limitations?

### 3. Recency (When)
| Rating | Criteria |
|--------|----------|
| High | Current (within 1 year for fast-moving topics) |
| Medium | Recent (1-3 years) |
| Low | Outdated (3+ years or conditions have changed) |

Questions:
- When was this produced?
- Have conditions changed since then?
- Is there more recent data?

### 4. Relevance (What)
| Rating | Criteria |
|--------|----------|
| High | Directly addresses our question |
| Medium | Related but requires interpretation |
| Low | Tangentially related, significant inference required |

Questions:
- Does this directly answer our question?
- How much are we extrapolating?
- Are the contexts comparable?

---

## Evidence Quality Score

Combine ratings:

| Score | Meaning | Action |
|-------|---------|--------|
| 4 High | Strong evidence | Can treat as reliable fact |
| 3 High, 1 Med | Good evidence | Use with note on limitation |
| 2 High, 2 Med | Moderate evidence | Use cautiously, seek corroboration |
| 1+ Low | Weak evidence | Flag as assumption, not fact |

---

## Red Flags

Immediately downgrade evidence if:

- **Conflict of interest**: Source benefits from conclusion
- **Cherry-picking**: Selective data presentation
- **Missing methodology**: No explanation of how data was gathered
- **Circular sourcing**: Sources cite each other
- **Outdated in fast market**: Old data in rapidly changing context
- **Small sample**: Conclusions from limited data
- **Survivorship bias**: Only looking at successes

---

## Evidence Documentation Template

```markdown
### [Finding]

**Claim:** [what the evidence says]

**Source:** [where it came from]

**Quality Assessment:**
- Credibility: [H/M/L] - [reason]
- Methodology: [H/M/L] - [reason]
- Recency: [H/M/L] - [reason]
- Relevance: [H/M/L] - [reason]

**Overall:** [Strong/Moderate/Weak]

**Classification:** [Fact / Assumption]

**Notes:** [limitations, caveats]
```
```

**Step 2: Commit**

```bash
git add skills/evidence-evaluation/SKILL.md
git commit -m "feat: add evidence-evaluation supporting skill"
```

---

## Task 12: Supporting Skill - decision-review

**Files:**
- Create: `skills/decision-review/SKILL.md`

**Step 1: Create the skill**

Create `skills/decision-review/SKILL.md`:

```markdown
---
name: decision-review
description: Post-decision review - compare outcomes to predictions
---

# Decision Review

Review a past decision to learn from outcomes.

**Announce:** "Using decision-review to analyze how this decision played out."

## When to Use

- Scheduled review date reached
- Exit criteria triggered
- Enough time has passed to assess outcomes
- Want to improve future decision-making

## Process

### 1. Retrieve Original Decision

Load the decision artifact from `docs/decisions/YYYY-MM-DD-<decision-slug>/`

Review:
- What was decided?
- What was the recommendation and confidence?
- What were the Must-Be-True Conditions?
- What were the predicted risks?
- What were the Exit Criteria?

### 2. Document Outcomes

**What actually happened?**

```markdown
## Outcome Assessment

**Decision:** [what was decided]
**Date decided:** [date]
**Review date:** [today]
**Time elapsed:** [duration]

### Results

**Primary outcome:** [Success / Partial Success / Failure / Too Early]

**Key metrics:**
| Metric | Predicted | Actual |
|--------|-----------|--------|
| [metric] | [value] | [value] |
```

### 3. Analyze Predictions

**Must-Be-True Conditions:**
| Condition | Predicted | Actual | Impact |
|-----------|-----------|--------|--------|
| [condition] | Must be true | True/False | [effect] |

**Risks:**
| Risk | Predicted Likelihood | Occurred? | Actual Impact |
|------|----------------------|-----------|---------------|
| [risk] | High/Med/Low | Yes/No | [impact] |

### 4. Identify Lessons

**What did we get right?**
- Predictions that proved accurate
- Risks correctly identified
- Assumptions that held

**What did we get wrong?**
- Predictions that missed
- Risks we didn't see
- Assumptions that failed

**What should we do differently?**
- Process improvements
- Different information sources
- Better calibration

### 5. Update Patterns

Document for future decisions:
- Types of assumptions that tend to fail
- Sources that proved unreliable
- Biases that affected this decision
- Techniques that worked well

## Output Template

```markdown
# Decision Review: [Decision Name]

## Summary

| Aspect | Assessment |
|--------|------------|
| Decision | [what was decided] |
| Date | [when] |
| Outcome | [Success/Partial/Failure] |
| Confidence was | [High/Med/Low] |
| Confidence should have been | [High/Med/Low] |

## Prediction Accuracy

### Must-Be-True Conditions
[table]

### Risk Predictions
[table]

### Assumption Accuracy
| Category | Accurate | Inaccurate |
|----------|----------|------------|
| Market | X/Y | X/Y |
| Technical | X/Y | X/Y |
| People | X/Y | X/Y |

## Key Lessons

### What We Got Right
- [lesson]

### What We Got Wrong
- [lesson]

### Process Improvements
- [improvement]

## Recommendations for Future

1. [recommendation]
2. [recommendation]
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/review-[date].md`
```

**Step 2: Commit**

```bash
git add skills/decision-review/SKILL.md
git commit -m "feat: add decision-review supporting skill"
```

---

## Task 13: Supporting Skill - decision-advocacy

**Files:**
- Create: `skills/decision-advocacy/SKILL.md`

**Step 1: Create the skill**

Create `skills/decision-advocacy/SKILL.md`:

```markdown
---
name: decision-advocacy
description: Generate compelling case FOR a completed decision
---

# Decision Advocacy

Generate a compelling argument FOR the decision.

**Announce:** "Using decision-advocacy to create the business case."

## Prerequisites

- Decision Gate completed (decision has been made)
- Cannot advocate for undecided decisions

## Principle

**Persuasion grounded in rigor.**

The advocacy is compelling *because* it survived the gauntlet:
- We know the counterarguments and can address them
- We've stress-tested the assumptions
- We can acknowledge risks honestly while showing they're manageable

## Process

### 1. Identify Audience

Ask:
- Who is this for? (Board, team, investors, executives)
- What do they care about?
- What's their baseline knowledge?
- What are their likely objections?

### 2. Choose Format

| Format | Audience | Length |
|--------|----------|--------|
| Executive briefing | C-suite | 1 page |
| Business case | Board/Investors | 3-5 pages |
| Team communication | Internal team | 1-2 pages |
| Presentation narrative | Any | Slide notes |

### 3. Structure the Argument

**Opening:** Clear statement of recommendation and why it matters

**Context:** Brief background (don't assume knowledge)

**The Case:**
- Key facts supporting the decision (from Research Gate)
- Why alternatives were rejected (from Contrarian Gate)
- Expected outcomes (from Synthesis Gate)

**Addressing Concerns:**
- Acknowledge top risks (from pre-mortem)
- Show mitigations in place
- Reference Must-Be-True Conditions

**Call to Action:** What needs to happen next

### 4. Apply Persuasion Principles

- **Lead with strongest point** - Don't bury the lead
- **Acknowledge counterarguments** - Shows thoroughness, builds trust
- **Use concrete examples** - Facts over abstractions
- **Match tone to audience** - Technical for technical, strategic for strategic
- **End with clear ask** - What do you want them to do/approve

### 5. Quality Check

Before finalizing:
- [ ] Does it honestly represent the analysis?
- [ ] Are risks acknowledged (not hidden)?
- [ ] Is confidence level appropriate?
- [ ] Would the Contrarian Gate findings surprise the reader?
- [ ] Is the ask clear?

## Output Template

```markdown
# [Decision]: Business Case

## Executive Summary

**Recommendation:** [action]

**Why now:** [trigger/opportunity]

**Expected outcome:** [key benefit]

**Investment required:** [resources]

---

## Background

[2-3 paragraphs of context]

## The Opportunity

[Key facts and analysis supporting the decision]

## Alternatives Considered

| Option | Considered | Why Not |
|--------|------------|---------|
| [alt] | Yes | [reason] |

## Risk Assessment

| Risk | Likelihood | Mitigation |
|------|------------|------------|
| [risk] | Med | [approach] |

## Success Metrics

[How we'll measure success]

## Ask

[Specific approval/action requested]

---

*Analysis conducted using Deliberate Decisions framework. Full decision artifact available.*
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/advocacy/business-case.md`
```

**Step 2: Commit**

```bash
git add skills/decision-advocacy/SKILL.md
git commit -m "feat: add decision-advocacy supporting skill"
```

---

## Task 14: Supporting Skill - decision-detraction

**Files:**
- Create: `skills/decision-detraction/SKILL.md`

**Step 1: Create the skill**

Create `skills/decision-detraction/SKILL.md`:

```markdown
---
name: decision-detraction
description: Generate compelling case AGAINST a completed decision
---

# Decision Detraction

Generate a compelling argument AGAINST the decision.

**Announce:** "Using decision-detraction to build the counter-case."

## Use Cases

1. **Stress-test before finalizing** - "What's the strongest case against?"
2. **Prepare for objections** - Know how opponents will argue
3. **Argue against external proposal** - Apply same rigor to others' ideas
4. **Intellectual honesty check** - If you can't argue against, you don't understand

## Principle

**Same evidence, opposite conclusion.**

The detraction uses the *same* evidence from research. It doesn't invent objections - it reframes existing Facts, Unknowns, and Must-Be-True Conditions to show why they should give pause.

## Process

### 1. Gather Ammunition

From the decision artifact, extract:
- Pre-mortem failure scenarios
- Low-confidence assumptions
- Unknown-Unknowables
- Critical risks
- Steel-manned alternatives
- Reference class (base rate failures)

### 2. Identify Strongest Arguments

Rank counterarguments by strength:
1. **Fatal if true** - Would completely invalidate decision
2. **Serious concern** - Significantly changes risk profile
3. **Valid caution** - Worth considering but manageable

Focus on 1s and 2s.

### 3. Structure the Counter-Case

**Opening:** Clear statement of concern

**Core arguments:**
- What could go wrong (pre-mortem scenarios)
- What we're assuming (low-confidence assumptions)
- What we can't know (Unknown-Unknowables)
- What history says (reference class failures)

**Alternative path:**
- Steel-man the best alternative
- Show what it offers that chosen option doesn't

**Conclusion:** Not "don't do it" but "here's what must be addressed"

### 4. Maintain Intellectual Honesty

This is not:
- Inventing objections not in the analysis
- Strawmanning the decision
- Being contrarian for its own sake

This is:
- Honestly presenting the risks found
- Articulating the concerns a skeptic would have
- Testing whether the advocacy can withstand scrutiny

### 5. Use Cases

**For internal stress-test:**
- Present counter-case to decision maker
- Ask: "Can you answer these concerns?"
- Strengthen advocacy if gaps found

**For external defense:**
- Anticipate what skeptics will say
- Prepare responses in advance
- Show you've considered both sides

## Output Template

```markdown
# Counter-Case: [Decision]

## Summary of Concerns

This document presents the strongest case against [decision]. Not to prevent action, but to ensure risks are fully understood.

---

## Core Concerns

### 1. [Strongest Objection]

**The risk:** [clear statement]

**Evidence:** [from our research]

**If this happens:** [consequence]

### 2. [Second Objection]

...

## What We're Betting On

These assumptions must hold:

| Assumption | Confidence | If Wrong |
|------------|------------|----------|
| [assumption] | Low | [impact] |

## What History Says

Reference class: [type of decision]
Base rate success: [percentage]
Common failure modes: [patterns]

## The Alternative

[Steel-manned case for the best alternative]

Why it might be better:
- [reason 1]
- [reason 2]

## Conclusion

Before proceeding, ensure:
1. [concern 1] is adequately addressed
2. [concern 2] has mitigation in place
3. [assumption] is monitored closely

---

*Counter-case generated using same evidence as advocacy. Full analysis available.*
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/advocacy/counter-case.md`
```

**Step 2: Commit**

```bash
git add skills/decision-detraction/SKILL.md
git commit -m "feat: add decision-detraction supporting skill"
```

---

## Task 15: Commands

**Files:**
- Create: `commands/decide.md`
- Create: `commands/advocate.md`
- Create: `commands/detract.md`
- Create: `commands/review-decision.md`
- Create: `commands/resume-decision.md`

**Step 1: Create decide command**

Create `commands/decide.md`:

```markdown
---
description: "Start a new decision process from the Thesis Gate"
disable-model-invocation: true
---

Invoke the deliberate-decisions:thesis-framing skill and follow it exactly.

Ask the user: "What decision are you facing?"
```

**Step 2: Create advocate command**

Create `commands/advocate.md`:

```markdown
---
description: "Generate a compelling case FOR a completed decision"
disable-model-invocation: true
---

Invoke the deliberate-decisions:decision-advocacy skill.

First, ask the user which decision to advocate for (list recent decisions from docs/decisions/).
```

**Step 3: Create detract command**

Create `commands/detract.md`:

```markdown
---
description: "Generate a compelling case AGAINST a completed decision"
disable-model-invocation: true
---

Invoke the deliberate-decisions:decision-detraction skill.

First, ask the user which decision to build a counter-case for (list recent decisions from docs/decisions/).
```

**Step 4: Create review-decision command**

Create `commands/review-decision.md`:

```markdown
---
description: "Review a past decision against actual outcomes"
disable-model-invocation: true
---

Invoke the deliberate-decisions:decision-review skill.

First, ask the user which decision to review (list decisions from docs/decisions/).
```

**Step 5: Create resume-decision command**

Create `commands/resume-decision.md`:

```markdown
---
description: "Continue a paused decision process"
disable-model-invocation: true
---

Ask the user which decision to resume (list decisions from docs/decisions/ that don't have a final decision recorded).

Read the decision artifact and determine which gate was last completed.

Invoke the next gate skill.
```

**Step 6: Commit**

```bash
git add commands/
git commit -m "feat: add slash commands for decide, advocate, detract, review, resume"
```

---

## Task 16: README

**Files:**
- Create: `README.md`

**Step 1: Create README**

Create `README.md`:

```markdown
# Deliberate Decisions

A Claude plugin that provides skills for AI agents to help humans make high-stakes decisions through systematic research and structured analysis.

## Philosophy

**Decisions fail in the small assumptions, not the big choices.**

This framework surfaces the hidden structure of decisions:
- **Decision Points** - Individual choices and assumptions that influence outcome
- **Decision Intersections** - How assumptions depend on or conflict with each other
- **Facts vs Assumptions** - Rigorous separation of verifiable from speculative
- **Must-Be-True Conditions** - What we're betting on

Built on Kahneman's System 1/System 2 framework, Deliberate Decisions enforces slow, deliberate thinking through mandatory gates.

## Installation

```bash
# Coming soon: plugin installation
```

## The Seven Gates

Every decision passes through seven mandatory gates:

| Gate | Name | Purpose |
|------|------|---------|
| 1 | **Thesis** | Define what we're deciding and why |
| 2 | **Landscape** | Map alternatives, Decision Points, Knowns/Unknowns |
| 3 | **Research** | Gather evidence, find reference class |
| 4 | **Calibration** | Separate Facts from Assumptions |
| 5 | **Contrarian** | Pre-mortem, steel-man opposition, bias audit |
| 6 | **Synthesis** | Must-Be-True Conditions, Exit Criteria, recommendation |
| 7 | **Decision** | Human decides with full picture |

## Commands

| Command | Action |
|---------|--------|
| `/decide` | Start a new decision |
| `/advocate` | Generate compelling case FOR |
| `/detract` | Generate compelling case AGAINST |
| `/review-decision` | Compare outcomes to predictions |
| `/resume-decision` | Continue a paused decision |

## Skills

### Gate Skills
- `thesis-framing` - Gate 1
- `landscape-mapping` - Gate 2
- `deep-research` - Gate 3
- `calibration` - Gate 4
- `contrarian-analysis` - Gate 5
- `synthesis` - Gate 6
- `decision-capture` - Gate 7

### Supporting Skills
- `using-deliberate-decisions` - Framework introduction
- `bias-detection` - Cognitive bias library
- `evidence-evaluation` - Source quality assessment
- `decision-review` - Post-decision analysis
- `decision-advocacy` - Build the case FOR
- `decision-detraction` - Build the case AGAINST

## Output

Each decision produces:
- `decision.md` - Full artifact with three views (summary, argument map, decision tree)
- `research-notes.md` - Raw research findings
- `calibration-log.md` - Facts vs Assumptions tracking
- `advocacy/` - Business case and counter-case

## Attribution

Inspired by [superpowers](https://github.com/obra/superpowers) by Jesse Vincent.

## License

MIT
```

**Step 2: Commit**

```bash
git add README.md
git commit -m "docs: add README"
```

---

## Task 17: Final Verification

**Step 1: Verify structure**

Run:
```bash
find . -type f -name "*.md" | grep -v superpowers | head -30
```

Expected: All skill files, commands, README, and docs present.

**Step 2: Verify hooks executable**

Run:
```bash
ls -la hooks/session-start.sh
```

Expected: `-rwxr-xr-x` permissions.

**Step 3: Test hook output**

Run:
```bash
CLAUDE_PLUGIN_ROOT=. ./hooks/session-start.sh | head -20
```

Expected: Valid JSON with hookSpecificOutput.

**Step 4: Final commit**

```bash
git status
```

If clean, implementation complete.

---

**Plan complete and saved to `docs/plans/2026-01-26-deliberate-decisions-implementation.md`.**

Two execution options:

**1. Subagent-Driven (this session)** - I dispatch fresh subagent per task, review between tasks, fast iteration

**2. Parallel Session (separate)** - Open new session with executing-plans, batch execution with checkpoints

Which approach?
