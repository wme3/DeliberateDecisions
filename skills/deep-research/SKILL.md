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
