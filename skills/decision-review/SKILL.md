---
name: decision-review
description: Post-decision analysis - review outcomes against predictions, identify lessons, update patterns
---

# Decision Review

**Purpose:** Analyze how a past decision played out to improve future decision-making.

**Announce:** "Using decision-review to analyze how this decision played out."

## When to Use

Invoke this skill when:

- A scheduled review date has arrived
- An exit trigger has activated
- Sufficient time has passed to observe outcomes
- Circumstances have materially changed
- You want to learn from a past decision (success or failure)
- Building a track record for calibration purposes

## Process

### Step 1: Retrieve Original Decision

Load the decision artifact and review what was decided.

**Questions to answer:**

- What was the decision?
- What was the recommendation?
- What were the Must-Be-True conditions?
- What risks were identified?
- What Exit Criteria were established?
- What alternatives were rejected?

```markdown
## Original Decision Summary

**Decision Date:** [YYYY-MM-DD]
**Decision:** [What was decided]
**Recommendation at time:** [Proceed/Do Not Proceed]
**Confidence at time:** [High/Medium/Low]

**Must-Be-True Conditions:**
1. [Condition 1]
2. [Condition 2]
3. [Condition 3]

**Identified Risks:**
1. [Risk 1]
2. [Risk 2]
3. [Risk 3]

**Exit Criteria:**
- [Tripwire 1]
- [Tripwire 2]
```

### Step 2: Document Outcomes

Record what actually happened since the decision was made.

**Outcome Assessment Questions:**

- What was the actual result?
- How does it compare to expectations?
- What unexpected events occurred?
- Which exit triggers, if any, were hit?
- What's the current status?

**Outcome Categories:**

| Category | Description |
|----------|-------------|
| **Success** | Objectives achieved, decision validated |
| **Partial Success** | Some objectives achieved, some missed |
| **Neutral** | Neither clear success nor failure |
| **Partial Failure** | Significant objectives missed |
| **Failure** | Decision did not achieve intended outcomes |
| **Reversed** | Decision was undone or significantly changed |

```markdown
## Actual Outcomes

**Review Date:** [YYYY-MM-DD]
**Time Since Decision:** [duration]
**Overall Outcome:** [Success/Partial Success/Neutral/Partial Failure/Failure/Reversed]

**What Happened:**
[Narrative description of actual events and outcomes]

**Unexpected Events:**
- [Event 1]
- [Event 2]

**Exit Triggers Hit:**
- [ ] [Trigger 1] - [hit/not hit]
- [ ] [Trigger 2] - [hit/not hit]

**Current Status:**
[Where things stand now]
```

### Step 3: Analyze Predictions

Compare predictions against reality to calibrate future judgment.

**Must-Be-True Conditions Accuracy:**

For each condition identified at decision time:
- Did it hold true?
- If not, what happened instead?
- How critical was the failure?

**Risk Predictions Accuracy:**

For each risk identified:
- Did it materialize?
- Was severity/likelihood accurate?
- Were mitigations effective?

**Unidentified Factors:**

- What important factors were not anticipated?
- What risks materialized that weren't on the list?
- What opportunities emerged unexpectedly?

```markdown
## Prediction Analysis

### Must-Be-True Conditions

| Condition | Held True? | What Actually Happened |
|-----------|------------|----------------------|
| [Condition 1] | Yes/No/Partial | [Reality] |
| [Condition 2] | Yes/No/Partial | [Reality] |
| [Condition 3] | Yes/No/Partial | [Reality] |

**Condition Accuracy:** [X of Y conditions held true]

### Risk Predictions

| Risk | Materialized? | Predicted L/I | Actual L/I | Mitigation Worked? |
|------|---------------|---------------|------------|-------------------|
| [Risk 1] | Yes/No | [H/M/L] / [H/M/L] | [H/M/L] / [H/M/L] | Yes/No/Partial |
| [Risk 2] | Yes/No | [H/M/L] / [H/M/L] | [H/M/L] / [H/M/L] | Yes/No/Partial |
| [Risk 3] | Yes/No | [H/M/L] / [H/M/L] | [H/M/L] / [H/M/L] | Yes/No/Partial |

**Risk Prediction Accuracy:** [X of Y risks correctly assessed]

### Blind Spots

Factors we didn't anticipate:
1. [Blind spot 1 - what was missed]
2. [Blind spot 2 - what was missed]
```

### Step 4: Identify Lessons

Extract actionable learning from the analysis.

**What We Got Right:**

- Which predictions were accurate?
- Which parts of the process worked well?
- What should we repeat?

**What We Got Wrong:**

- Which predictions failed?
- Where did analysis fall short?
- What should we avoid?

**What We Should Do Differently:**

- Process improvements for future decisions
- New questions to ask
- New checks to perform
- Biases to watch for

```markdown
## Key Lessons

### What We Got Right
- [Lesson 1]
- [Lesson 2]

### What We Got Wrong
- [Lesson 1]
- [Lesson 2]

### Process Improvements
For future similar decisions:
1. [Improvement 1]
2. [Improvement 2]
3. [Improvement 3]

### Bias Observations
Biases that affected this decision:
- [Bias 1 and how it manifested]
- [Bias 2 and how it manifested]
```

### Step 5: Update Patterns

Document insights for use in future decisions.

**Pattern Recognition:**

- Does this decision fit a pattern of past successes or failures?
- What decision type does this represent?
- What heuristics should be updated?

**Calibration Update:**

- How should this affect confidence in similar future decisions?
- Were we overconfident or underconfident?
- What's our track record in this domain now?

**Knowledge Base Updates:**

- New facts to add to institutional knowledge
- Updated risk assessments for similar situations
- Revised assumptions about key variables

```markdown
## Pattern Updates

### Decision Type
[Category of decision - e.g., vendor selection, strategic pivot, hiring]

### Updated Heuristics
For similar decisions in the future:
- [Heuristic 1]
- [Heuristic 2]

### Calibration Adjustment
- Previous confidence level: [X]
- Recommended adjustment: [raise/lower/maintain]
- Track record in this domain: [X successes / Y failures]

### Institutional Knowledge
Add to knowledge base:
- [Fact/insight 1]
- [Fact/insight 2]
```

## Output Template

Generate a comprehensive review document:

```markdown
# Decision Review: [Decision Name]

## Summary

| Aspect | Original | Actual |
|--------|----------|--------|
| **Decision Date** | [YYYY-MM-DD] | - |
| **Review Date** | - | [YYYY-MM-DD] |
| **Time Elapsed** | - | [duration] |
| **Recommendation** | [Proceed/Do Not Proceed] | - |
| **Confidence** | [High/Medium/Low] | - |
| **Outcome** | - | [Success/Partial/Failure] |

## Prediction Accuracy

### Must-Be-True Conditions
**Accuracy:** [X/Y] conditions held true

| Condition | Predicted | Actual | Match |
|-----------|-----------|--------|-------|
| [Condition 1] | Must hold | [Yes/No] | [check/X] |
| [Condition 2] | Must hold | [Yes/No] | [check/X] |

### Risk Predictions
**Accuracy:** [X/Y] risks correctly predicted

| Risk | Predicted | Materialized | Severity Match |
|------|-----------|--------------|----------------|
| [Risk 1] | [L/I] | [Yes/No] | [check/X] |
| [Risk 2] | [L/I] | [Yes/No] | [check/X] |

### Blind Spots
- [Unanticipated factor 1]
- [Unanticipated factor 2]

## Key Lessons

### What Worked
1. [Success factor 1]
2. [Success factor 2]

### What Didn't Work
1. [Failure factor 1]
2. [Failure factor 2]

### Process Improvements
1. [Improvement 1]
2. [Improvement 2]

## Recommendations

### For Similar Future Decisions
- [Recommendation 1]
- [Recommendation 2]

### Calibration Update
[How this affects confidence in similar decisions]

### Follow-up Actions
- [ ] [Action 1]
- [ ] [Action 2]

---

*Review conducted: [date]*
*Reviewer: [name/role]*
*Original decision: [link to decision artifact]*
```

## Save Location

Save the review document to:

```
docs/decisions/YYYY-MM-DD-<decision-slug>/review-[date].md
```

Where:
- `YYYY-MM-DD-<decision-slug>` matches the original decision directory
- `[date]` is the review date in YYYY-MM-DD format

Example: `docs/decisions/2024-03-15-vendor-selection/review-2024-09-15.md`

## Exit Criteria

- Original decision artifact retrieved and summarized
- Actual outcomes documented with evidence
- All Must-Be-True conditions assessed
- All predicted risks evaluated
- Blind spots identified
- Lessons extracted and actionable
- Patterns documented for future use
- Review document saved to correct location

## Integration with Calibration

Reviews feed the calibration system:

1. Track prediction accuracy over time
2. Identify systematic biases in forecasting
3. Build domain-specific confidence adjustments
4. Improve the decision-making process itself

After completing a review, consider:
- Is this a pattern that affects other pending decisions?
- Should exit criteria on other decisions be updated?
- Does this change institutional risk tolerance?
