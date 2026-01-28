---
name: calibration
description: Gate 4 - Consolidate Facts vs Assumptions, update Knowns/Unknowns, create assumption inventory
---

# Gate 4: Calibration

**Purpose:** Pause to consolidate what we know versus what we assume before analysis.

**Announce:** "Moving to Calibration Gate - let's separate facts from assumptions."

## Entry Criteria

- Research Gate completed
- Evidence gathered and evaluated

## Why This Gate Exists

Research often blurs the line between facts and assumptions. Before making critical decisions, we must:

1. **Distinguish verified facts from beliefs** - What do we actually know vs. what do we think we know?
2. **Acknowledge uncertainty honestly** - Overconfidence kills good decisions
3. **Surface hidden assumptions** - Unexamined assumptions are the most dangerous
4. **Calibrate confidence levels** - Ensure our certainty matches our evidence

Skipping calibration leads to decisions built on shaky foundations that feel solid.

## Process

### 1. Review All Claims

Go through all findings from previous gates and categorize each claim:

**Fact** - Verified with reliable evidence
- Has credible source
- Can be independently verified
- Not based on projection or extrapolation

**Assumption** - Believed but not verified
- Based on judgment or experience
- Extrapolated from limited data
- Accepted without direct evidence

Ask for each claim:
- "What evidence supports this?"
- "Could a skeptic accept this as fact?"
- "Are we treating an assumption as fact?"

### 2. Update Confidence Levels

Revisit all Decision Points from Landscape Gate. For each:

- Review evidence gathered in Research Gate
- Adjust confidence based on what we learned
- Document what changed and why

**Confidence scale:**
- **High** - Strong evidence, multiple sources, directly applicable
- **Medium** - Some evidence, reasonable extrapolation
- **Low** - Limited evidence, significant uncertainty
- **Unknown** - No evidence, pure assumption

### 3. Rebuild Knowns/Unknowns

Update the Knowns/Unknowns matrix with research findings:

**Known** - Verified facts with evidence
- Move items from Unknown-Knowable when answered
- Add new facts discovered in research

**Unknown-Knowable** - Still unanswered but answerable
- Remove items that were researched
- Add new questions that emerged

**Unknown-Unknowable** - Cannot be determined
- Accept these as necessary assumptions
- Document the uncertainty explicitly

### 4. Assumption Inventory

Create a comprehensive list of all assumptions the decision depends on:

For each assumption:
- **Statement**: What we're assuming
- **Criticality**: How much does the decision depend on this? (critical/important/minor)
- **Testability**: Could we test this before committing? (testable/partially testable/untestable)
- **Fallback**: What if this assumption is wrong?

Prioritize assumptions that are both **critical** and **untestable** - these are your biggest risks.

## Depth by Weight

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Fact/Assumption split | Quick pass on key claims | Full categorization | Detailed with evidence citations |
| Confidence levels | High/Low only | High/Medium/Low | Calibrated with reasoning |
| Assumption inventory | Critical assumptions only | Important + critical | Comprehensive inventory |
| Blind spots | Quick check | Identify gaps | Deep blind spot analysis |

**Light:** Quick categorization of key claims. Focus on critical assumptions only. Simple confidence (high/low).

**Medium:** Full fact/assumption separation. Standard confidence scale. Important and critical assumptions inventoried.

**Complete:** Detailed categorization with evidence citations. Full confidence calibration with reasoning. Comprehensive assumption inventory. Deep blind spot analysis.

## Upgrade Detection

**Suggest upgrading if:**

- Many claims fall into "assumption" category
- Confidence on critical assumptions is Low
- Significant blind spots identified
- User realizes they're less certain than they thought

**Upgrade prompt:**
```
⚠️ Calibration is revealing significant uncertainty:
- [X of Y key claims are assumptions, not facts]
- [Critical assumption X has low confidence]
- [Blind spot identified: Y]

This level of uncertainty suggests deeper analysis would be valuable.

Current: [Weight]
Suggested: [Higher Weight] - would provide [more rigorous assumption testing]

Continue at current depth, or upgrade?
```

## Output

Create calibration log:

```markdown
# Calibration Log: [Decision]

## Facts (Verified)

| Claim | Evidence | Source | Confidence |
|-------|----------|--------|------------|
| [claim 1] | [supporting evidence] | [source] | High |
| [claim 2] | [supporting evidence] | [source] | High |

## Assumptions (Unverified)

| Claim | Basis | Criticality | Testability |
|-------|-------|-------------|-------------|
| [assumption 1] | [why we believe it] | Critical | Untestable |
| [assumption 2] | [why we believe it] | Important | Testable |

## Critical Risks

Assumptions that are both critical and hard to verify:

1. **[Assumption]**: [Why it's risky and what could go wrong]
2. **[Assumption]**: [Why it's risky and what could go wrong]

## Blind Spots

Areas where we lack information and haven't made explicit assumptions:

- [blind spot 1]
- [blind spot 2]

## Updated Knowns/Unknowns

**Known:**
- [verified fact with source]

**Unknown-Knowable:**
- [remaining question we could still research]

**Unknown-Unknowable:**
- [uncertainty we must accept]

## Confidence Changes

| Decision Point | Previous | Current | Reason |
|----------------|----------|---------|--------|
| [DP1] | Medium | High | [what evidence changed it] |
| [DP2] | High | Medium | [what evidence changed it] |
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/calibration-log.md`

## Exit Criteria

- All claims categorized as fact or assumption (depth per weight)
- Confidence levels updated based on research
- Knowns/Unknowns matrix refreshed
- Assumption inventory complete (depth per weight)
- Critical risks explicitly identified

## Bias Watch

Watch for:
- **Overconfidence** - Treating assumptions as facts, inflating certainty
- **Wishful thinking** - Assuming favorable outcomes without evidence
- **Complexity bias** - Using sophisticated analysis to obscure weak foundations

Ask: "If we're wrong about our key assumptions, would we still make this decision?"

## Next Gate

Proceed to: `deliberate-decisions:contrarian-analysis`
