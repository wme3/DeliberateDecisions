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
