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
