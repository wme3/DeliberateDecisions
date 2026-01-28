---
name: decision-detraction
description: Generate compelling arguments AGAINST a decision using the same evidence from the decision artifact
---

# Decision Detraction

**Purpose:** Build the strongest possible case against a decision using the evidence already gathered.

**Announce:** "Using decision-detraction to build the counter-case."

## Use Cases

- **Stress-test before commitment** - Test the decision's robustness by attacking it with the best arguments against
- **Prepare for objections** - Anticipate what critics will say so you can address concerns proactively
- **Argue against external proposal** - When evaluating someone else's recommendation, build the counter-case
- **Intellectual honesty** - Ensure you've truly considered why this decision might be wrong

## Core Principle

> **"Same evidence, opposite conclusion"**

This skill does NOT invent objections or manufacture concerns. It uses the evidence already gathered in the decision artifact - the pre-mortem scenarios, the low-confidence assumptions, the Unknown-Unknowables, the risks, the steel-manned alternatives, the reference class data - and weaves them into a compelling narrative against the decision.

The counter-case is honest because it's built from work you've already done. It's just assembled with a different purpose.

## Process

### Step 1: Gather Ammunition

Extract from the decision artifact:

| Source | What to Extract |
|--------|-----------------|
| **Pre-Mortem** | Failure scenarios, especially those rated "Likely" or "Catastrophic" |
| **Low-Confidence Assumptions** | Must-be-true conditions with confidence below 70% |
| **Unknown-Unknowables** | Factors that could emerge and derail the decision |
| **Critical Risks** | Risks without adequate mitigation |
| **Steel-Manned Alternatives** | The best arguments for options we rejected |
| **Reference Class** | Base rate failures in similar decisions |

If any of these sections are missing or thin, note the gap - it weakens the decision's foundation.

### Step 2: Identify Strongest Arguments

Rank the gathered ammunition by severity:

1. **Fatal if true** - Arguments that would completely invalidate the decision
2. **Serious concern** - Arguments that significantly weaken the case
3. **Valid caution** - Arguments that raise legitimate questions

Select the top 3-5 arguments across categories. Quality over quantity - a counter-case with three devastating points beats one with ten weak objections.

### Step 3: Structure the Counter-Case

Build the argument with this flow:

**Opening**
- State what's being decided
- Acknowledge the work done
- Signal that serious concerns remain

**Core Arguments**
- Present each concern with evidence from the artifact
- Connect concerns to form a coherent narrative
- Don't just list problems - explain why they matter together

**Alternative Path**
- Reference the steel-manned alternative
- Explain what would need to be true for it to be better
- Note what we give up with the current decision

**Conclusion**
- Summarize the case against
- State conditions under which you'd change your position
- Acknowledge what the counter-case might be missing

### Step 4: Maintain Intellectual Honesty

**This is:**
- Using evidence we already gathered
- Presenting that evidence from a different angle
- Helping stress-test the decision
- Preparing for real objections

**This is NOT:**
- Manufacturing concerns that don't exist
- Advocacy for a predetermined conclusion
- Undermining a good decision
- A recommendation to reverse the decision

The counter-case is a tool for thinking, not a verdict.

### Step 5: Choose Your Use

**For internal stress-test:**
- Share with decision makers before finalizing
- Use to identify gaps that need addressing
- Strengthen the decision by addressing concerns

**For external defense:**
- Prepare responses to each point raised
- Identify which concerns you accept vs. reject
- Document why you're proceeding despite objections

## Output Template

Save the counter-case using this structure:

```markdown
# Counter-Case: [Decision Title]

**Generated:** [Date]
**Decision Artifact:** [Link to decision.md]

## Summary of Concerns

In one paragraph, summarize why this decision might be wrong.

## Core Concerns

### Concern 1: [Title]

**Evidence:** [From artifact]
**Why it matters:** [Explanation]
**Severity:** [Fatal if true / Serious / Valid caution]

### Concern 2: [Title]

**Evidence:** [From artifact]
**Why it matters:** [Explanation]
**Severity:** [Fatal if true / Serious / Valid caution]

### Concern 3: [Title]

**Evidence:** [From artifact]
**Why it matters:** [Explanation]
**Severity:** [Fatal if true / Serious / Valid caution]

## What We're Betting On

List the assumptions that must be true for this decision to succeed, ordered by confidence (lowest first).

| Assumption | Confidence | What Happens If Wrong |
|------------|------------|----------------------|
| [Assumption] | [%] | [Consequence] |

## What History Says

Reference class data suggesting caution:
- [Historical example or base rate]
- [Pattern of failure in similar decisions]

## The Alternative

**If not this, then what?**

[Steel-manned alternative from the artifact]

**Why it might be better:**
- [Reason 1]
- [Reason 2]

**What we'd need to believe:**
- [Condition for alternative to be superior]

## Conclusion

[One paragraph summarizing the case against]

**This counter-case would be invalidated if:**
- [Condition that would eliminate the concern]
- [Evidence that would change the assessment]

---

*This counter-case was generated for [stress-testing / objection preparation / external evaluation]. It uses evidence from the decision artifact and does not represent a recommendation to reverse the decision.*
```

## Save Location

```
docs/decisions/YYYY-MM-DD-<decision-slug>/advocacy/counter-case.md
```

Create the `advocacy/` subdirectory within the decision folder if it doesn't exist.

## When to Use

| Situation | Action |
|-----------|--------|
| Before finalizing a major decision | Generate counter-case, review with stakeholders |
| Before presenting to leadership | Prepare responses to likely objections |
| When asked to evaluate external proposal | Build counter-case to ensure balanced view |
| When you feel too confident | Use as intellectual honesty check |

## Relationship to /advocate

`/advocate` and `/detract` are complementary tools:

- **/advocate** - Builds the case FOR the decision
- **/detract** - Builds the case AGAINST the decision

Using both creates a complete picture. Neither represents the "right" answer - they're lenses for examining the decision from multiple angles.
