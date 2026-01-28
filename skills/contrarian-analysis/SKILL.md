---
name: contrarian-analysis
description: Gate 5 - Pre-mortem, steel-man opposition, surface biases, second-order effects
---

# Gate 5: Contrarian Analysis

**Purpose:** Actively attack the decision. Find the strongest reasons it could fail.

**Announce:** "Moving to Contrarian Gate - let's stress-test this decision."

## Entry Criteria

- Calibration Gate completed
- Facts vs Assumptions documented
- Knowns/Unknowns matrix updated

## Why This Gate Exists

Humans naturally defend their decisions. Once we've invested time in analysis, we become attached to conclusions. This gate forces adversarial thinking by requiring:

- Imagining failure before it happens
- Building the best case for options we rejected
- Actively hunting for cognitive biases
- Tracing consequences we haven't considered

**This gate should feel uncomfortable. If it doesn't, you're not doing it right.**

## Process

### 1. Pre-Mortem (Kahneman/Klein)

Imagine the decision was made and failed spectacularly. Work backward.

**Prompt:** "It's one year from now. This decision was a disaster. What happened?"

Document 5+ distinct failure scenarios:
- What went wrong?
- What did we miss?
- What assumption proved false?
- What external event derailed us?
- What internal failure occurred?

For each scenario, assess:
- Probability (likely/possible/unlikely)
- Severity (catastrophic/serious/manageable)
- Detectability (would we see it coming?)

### 2. Steel-Man the Opposition

Build the strongest possible case for the alternatives we rejected.

For each rejected option:
- What's the best argument for it?
- Under what circumstances would it be the right choice?
- What are we giving up by not choosing it?
- Who would advocate for this option and why?

**Rule:** You must make the opposition case so well that someone could genuinely be persuaded by it.

### 3. Surface Cognitive Biases

Audit the decision process for common biases:

| Bias | Question to Ask | Red Flags |
|------|-----------------|-----------|
| **Confirmation** | Did we seek disconfirming evidence? | Only found data supporting our view |
| **Anchoring** | Are we over-weighted on early information? | First option still dominates |
| **Sunk Cost** | Are past investments influencing us? | "We've already invested so much..." |
| **Availability** | Are we over-weighting vivid examples? | Recent events dominating analysis |
| **Overconfidence** | What's our track record on similar decisions? | High certainty with little evidence |
| **Groupthink** | Did anyone disagree? Were they heard? | Unanimous agreement without debate |

For each bias detected, document:
- Evidence of the bias
- How it might be affecting the decision
- What would change if we corrected for it

### 4. Second-Order Effects

Map ripple effects two levels deep.

**First-order:** Direct consequences of the decision
**Second-order:** Consequences of the consequences

Example:
- Decision: Acquire competitor
- First-order: Gain market share, absorb their team
- Second-order: Key talent leaves due to culture clash, customers defect to remaining competitor

Consider effects on:
- Stakeholders not in the room
- Competitors' likely responses
- Market dynamics
- Internal culture and incentives
- Future option value (doors opened/closed)

### 5. Identify Decision Killers

Are there fatal flaws that should stop this decision entirely?

A decision killer is:
- A failure mode with high probability AND catastrophic severity
- An unrecoverable scenario
- A must-be-true condition that is likely false
- An ethical or legal red line

**If decision killers exist, the decision should not proceed without addressing them.**

## Output

Update the decision artifact:

```markdown
## Contrarian Gate Analysis

### Pre-Mortem Failure Scenarios

| Scenario | Probability | Severity | Detectability |
|----------|-------------|----------|---------------|
| [Failure mode 1] | Likely | Serious | Low |
| [Failure mode 2] | Possible | Catastrophic | High |
| [Failure mode 3] | Unlikely | Manageable | Medium |
| [Failure mode 4] | ... | ... | ... |
| [Failure mode 5] | ... | ... | ... |

**Highest-risk scenarios:**
- [Which require mitigation?]

### Steel-Manned Alternatives

**Alternative A: [Rejected option]**
Best case for it:
- [Argument 1]
- [Argument 2]
When it would be right: [circumstances]
What we give up: [trade-offs]

**Alternative B: [Rejected option]**
...

### Bias Audit

| Bias | Evidence | Impact | Correction |
|------|----------|--------|------------|
| [Bias type] | [How we detected it] | [Effect on decision] | [What changes] |

### Second-Order Effects

**First-Order:**
- [Direct consequence 1]
- [Direct consequence 2]

**Second-Order:**
- [Consequence of consequence 1]
- [Consequence of consequence 2]

**Stakeholders affected indirectly:**
- [Who else is impacted?]

### Decision Killers

- [ ] None identified - proceed to Synthesis
- [ ] **KILLER:** [Fatal flaw] - must address before proceeding

**Mitigation required:**
- [What must change to proceed?]
```

Save updates to: `docs/decisions/YYYY-MM-DD-<decision-slug>/decision.md`

## Exit Criteria

- 5+ pre-mortem failure scenarios documented
- All rejected alternatives steel-manned
- Bias audit completed
- Second-order effects mapped (2 levels)
- Decision killers identified or confirmed absent
- Human has reviewed and engaged with contrarian analysis

## Bias Watch

Watch for:
- **Defensive reasoning** - Dismissing valid criticisms to protect the preferred option
- **Motivated reasoning** - Finding ways to discount uncomfortable findings
- **Premature closure** - Rushing through this gate to get to the decision

**Counter:** If you find yourself defending against the contrarian analysis, that's signal. Sit with the discomfort.

## Next Gate

Proceed to: `deliberate-decisions:synthesis`
