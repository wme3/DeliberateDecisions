# Decision Capture Skill

```yaml
name: decision-capture
description: Document final decision, rationale, and commit to artifact - the culmination of the decision-making process
```

## Purpose

Human makes the final decision with the full picture documented. This is the moment of commitment where analysis transforms into action.

## Announce

> "Final Gate - time to decide."

## Entry Criteria

- Synthesis Gate completed
- All prior gates documented in artifact
- Recommendation and alternatives clearly articulated

## Process

### Step 1: Present Summary

Provide a concise decision summary consolidating all prior work:

```markdown
## DECISION SUMMARY

**DECISION**: [One-line statement of the decision to be made]

**ALTERNATIVES CONSIDERED**:
1. [Option A] - [One-line summary]
2. [Option B] - [One-line summary]
3. [Option C] - [One-line summary]

**RECOMMENDATION**: [Recommended option with brief rationale]

**MUST-BE-TRUE**:
- [Critical assumption 1]
- [Critical assumption 2]

**TOP RISKS**:
1. [Risk 1] - [Mitigation]
2. [Risk 2] - [Mitigation]

**EXIT TRIGGERS**:
- [Condition that would reverse this decision]
- [Condition that would reverse this decision]
```

### Step 2: Human Decides

Ask the decision maker:

> "What is your decision?"
>
> 1. **Accept recommendation** - Proceed with the recommended option
> 2. **Choose different alternative** - Select a different option from those considered
> 3. **Defer** - Postpone decision (specify timeline and trigger for revisiting)
> 4. **Cancel** - Abandon decision process (document why)

Wait for explicit human choice. Do not proceed without clear direction.

### Step 3: Document Rationale

Capture the decision context through targeted questions:

- **What was decided?** - The specific choice made
- **Why this option?** - Core reasoning
- **What clinched it?** - The deciding factor(s)
- **Concerns remaining?** - Known risks being accepted
- **When to revisit?** - Review trigger or timeline

Record responses verbatim where possible - the decision maker's own words carry weight.

### Step 4: Finalize Artifact

Complete the decision document with final sections:

```markdown
## DECISION

**Status**: DECIDED
**Date**: [YYYY-MM-DD]
**Decision Maker**: [Name/Role]

### CHOSEN OPTION

[Selected alternative with full description]

### RATIONALE

[Why this option was selected - captured from Step 3]

### DECIDING FACTORS

- [Factor 1 that tipped the balance]
- [Factor 2 that tipped the balance]

### REMAINING CONCERNS

- [Accepted risk or uncertainty 1]
- [Accepted risk or uncertainty 2]

### NEXT REVIEW

**Review Date**: [Date or "When triggered"]
**Review Triggers**:
- [Condition requiring earlier review]
- [Exit trigger from earlier analysis]

---

## Document History

| Date | Gate | Summary |
|------|------|---------|
| [Date] | Problem Definition | [Brief summary] |
| [Date] | Divergent Exploration | [Brief summary] |
| [Date] | Assumption Surfacing | [Brief summary] |
| [Date] | Challenge Gate | [Brief summary] |
| [Date] | Convergent Analysis | [Brief summary] |
| [Date] | Synthesis | [Brief summary] |
| [Date] | Decision Capture | Decision finalized |
```

### Step 5: Commit and Close

Save the completed artifact:

```
docs/decisions/YYYY-MM-DD-<decision-slug>/decision.md
```

Where `<decision-slug>` is a kebab-case summary of the decision topic.

Inform the decision maker:

> "Decision captured and committed. Available commands:
> - `/advocate` - Generate arguments supporting this decision
> - `/detract` - Generate arguments challenging this decision
> - `/review-decision` - Structured review when conditions change"

## Exit Criteria

- [ ] Decision explicitly stated by human
- [ ] Rationale documented in decision maker's words
- [ ] Artifact complete with all required sections
- [ ] Document saved to `docs/decisions/` directory
- [ ] Decision maker informed of post-decision commands

## Post-Decision Support

After a decision is captured, several follow-up capabilities remain available:

### /advocate
Generate compelling arguments in favor of the decision. Useful for:
- Building stakeholder buy-in
- Preparing presentations
- Strengthening commitment

### /detract
Generate thoughtful challenges to the decision. Useful for:
- Stress-testing before announcement
- Preparing for objections
- Maintaining intellectual honesty

### /review-decision
Structured process for revisiting decisions when:
- Exit triggers activate
- Scheduled review date arrives
- Circumstances materially change

These commands work with the saved artifact to provide context-aware support.
