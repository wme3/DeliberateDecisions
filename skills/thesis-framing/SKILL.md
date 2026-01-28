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

## Depth by Weight

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Questions | 3-4 key questions | 5-6 questions | Full exploration |
| Stakeholders | List only | Identify conflicts | Map relationships |
| Constraints | Non-negotiables only | All constraints | Constraint flexibility |
| Success criteria | 1-2 metrics | 3-4 metrics | Comprehensive + timeline |

**Light:** Focus on decision statement, key constraints, reversibility. Skip deep stakeholder analysis.

**Medium:** Cover all sections at standard depth.

**Complete:** Explore each section thoroughly. Map stakeholder relationships. Analyze constraint flexibility.

## Weight Suggestion

**After completing Thesis Gate, suggest decision weight.**

Analyze what you learned:
- Financial/strategic impact mentioned
- Reversibility assessment
- User's apparent domain expertise
- Complexity of stakeholder landscape
- Time pressure mentioned

Present weight suggestion:

```
Based on what you've described:
- [Key factor 1 - e.g., "$150K investment"]
- [Key factor 2 - e.g., "moderate reversibility (6 months to evaluate)"]
- [Key factor 3 - e.g., "you have domain expertise in this area"]

I recommend **[Weight]** depth (~[time]).

- **Light** (<10 min): Quick pass - good for reversible decisions where you have expertise
- **Medium** (30-40 min): Standard rigor - balances thoroughness with efficiency
- **Complete** (60-90 min): Full analysis - for high-stakes, hard-to-reverse decisions

Does [recommended weight] feel right, or would you prefer different depth?
```

Wait for user confirmation before proceeding.

If user pre-specified weight with `/decide --light|medium|complete`, skip this step.

## Output

Create initial decision artifact:

```markdown
# Decision: [Statement]

**Weight:** [Light/Medium/Complete]
**Estimated time:** [X minutes]

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
- **Weight confirmed by user**

## Bias Watch

Watch for:
- **Framing effects** - Is the question biased toward a particular answer?
- **False dichotomy** - Are there options we're not considering?
- **Urgency bias** - Is the deadline real or artificial?

## Next Gate

Proceed to: `deliberate-decisions:landscape-mapping`
