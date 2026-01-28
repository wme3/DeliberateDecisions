---
name: evidence-evaluation
description: Framework for assessing evidence quality in decision-making
version: 1.0.0
type: supporting
dependencies: []
triggers:
  - evaluating claims or assertions
  - assessing data quality
  - reviewing research or reports
  - fact-checking assumptions
  - building arguments with evidence
---

# Evidence Evaluation Skill

A systematic framework for assessing the quality and reliability of evidence used in decision-making.

## Purpose

Evidence-based decisions require more than just having data - they require understanding how trustworthy that data is. This skill provides tools to distinguish facts from assumptions, evaluate source quality, and document evidence systematically.

---

## Fact vs Assumption

Understanding the difference between facts and assumptions is fundamental to evidence evaluation.

### Facts

**Definition**: Verifiable statements supported by direct observation, measurement, or documentation.

**Characteristics**:
- Can be independently verified
- Based on direct evidence
- Remain true regardless of perspective
- Have clear provenance

**Examples**:
| Statement | Why It's a Fact |
|-----------|-----------------|
| "Server response time averaged 245ms over 1000 requests" | Measured and logged |
| "The contract expires on March 15, 2026" | Documented in signed agreement |
| "Three customers reported this bug in the last week" | Tracked in support system |
| "The test suite has 847 passing tests" | Verified by running tests |

### Assumptions

**Definition**: Beliefs or expectations accepted as true without direct verification.

**Characteristics**:
- May feel obvious but lack proof
- Often based on past patterns
- Can vary by perspective
- May be reasonable but unverified

**Examples**:
| Statement | Why It's an Assumption |
|-----------|------------------------|
| "Users prefer the new design" | No user research conducted |
| "Performance will improve with more servers" | Not tested in this context |
| "The competitor will respond with a price cut" | Prediction, not fact |
| "The team can deliver this in two sprints" | Estimate, not commitment |

### Converting Assumptions to Facts

When an assumption is critical to a decision, consider how to verify it:

```
Assumption: "Most users access the app on mobile"
  -> Verification: Check analytics data for device breakdown
  -> Result: "68% of sessions are from mobile devices" (fact)

Assumption: "The API can handle 10x current load"
  -> Verification: Run load tests
  -> Result: "API failed at 7x load with memory exhaustion" (fact)

Assumption: "Customers want feature X"
  -> Verification: Conduct user interviews or surveys
  -> Result: "23 of 30 interviewed customers expressed need for X" (fact)
```

---

## Source Quality Framework

Evaluate evidence sources across four dimensions, each rated High/Medium/Low.

### 1. Credibility (Who)

Assesses the trustworthiness of the information source.

| Rating | Criteria | Examples |
|--------|----------|----------|
| **High** | Expert in relevant domain; established track record; no conflicts of interest; peer-reviewed or audited | Academic research, official documentation, recognized industry experts, audited financial statements |
| **Medium** | Knowledgeable but not expert; some track record; minor potential conflicts; reviewed but not rigorously | Industry reports, experienced practitioners, trade publications, internal analysis |
| **Low** | Unknown expertise; no track record; significant conflicts of interest; unreviewed | Anonymous sources, marketing materials, unverified claims, self-reported without validation |

**Questions to Ask**:
- What are the source's qualifications on this topic?
- Does the source have a track record of accuracy?
- What incentives might bias the source?
- Has the information been reviewed or verified by others?

### 2. Methodology (How)

Assesses how the information was gathered or conclusions were reached.

| Rating | Criteria | Examples |
|--------|----------|----------|
| **High** | Rigorous, documented methodology; appropriate sample size; controlled conditions; reproducible | Scientific studies, comprehensive testing, statistical analysis with proper controls |
| **Medium** | Reasonable methodology with some gaps; moderate sample size; some documentation | Surveys with decent response rates, pilot tests, case studies with multiple examples |
| **Low** | Unclear or flawed methodology; small or biased samples; anecdotal; not reproducible | Single anecdotes, informal polls, untested hypotheses, "common knowledge" |

**Questions to Ask**:
- How was this data collected?
- Is the sample size adequate and representative?
- Could this result be replicated?
- What variables were controlled?

### 3. Recency (When)

Assesses how current the information is relative to the decision context.

| Rating | Criteria | Examples |
|--------|----------|----------|
| **High** | Current or real-time; collected within relevant timeframe; accounts for recent changes | Live metrics, recent market research, current documentation, data from this quarter |
| **Medium** | Reasonably recent; may not reflect latest changes; still largely applicable | Last year's data, recent but not current reports, slightly outdated documentation |
| **Low** | Outdated; from before significant changes; may no longer apply | Multi-year-old research, pre-pivot data, documentation from deprecated systems |

**Questions to Ask**:
- When was this information collected or published?
- Have relevant conditions changed since then?
- Is there a more recent source available?
- Does the age of this data matter for this decision?

### 4. Relevance (What)

Assesses how directly the information applies to the specific decision.

| Rating | Criteria | Examples |
|--------|----------|----------|
| **High** | Directly addresses the question; same context and conditions; specific to this situation | Data from this system, research on this exact problem, feedback from target users |
| **Medium** | Related but not exact; similar context; requires some extrapolation | Industry benchmarks, analogous case studies, research on similar problems |
| **Low** | Tangentially related; different context; significant extrapolation required | General statistics, research from different domains, opinions on different problems |

**Questions to Ask**:
- Does this evidence directly address our specific question?
- How similar is the source context to our situation?
- What assumptions are needed to apply this evidence here?
- Is there more directly relevant evidence available?

---

## Evidence Quality Score

Combine the four dimension ratings into an overall quality assessment.

### Scoring Method

Assign points to each rating:
- High = 3 points
- Medium = 2 points
- Low = 1 point

Calculate total (max 12 points):

| Total Score | Overall Quality | Guidance |
|-------------|-----------------|----------|
| 10-12 | **Strong Evidence** | Can rely on for important decisions |
| 7-9 | **Moderate Evidence** | Useful but seek corroboration |
| 4-6 | **Weak Evidence** | Use cautiously; actively seek better sources |
| 1-3 | **Poor Evidence** | Do not rely on; treat as unverified assumption |

### Example Evaluation

**Evidence**: "Industry report says 40% of companies are adopting this technology"

| Dimension | Rating | Rationale |
|-----------|--------|-----------|
| Credibility | Medium | Reputable firm but funded by vendor |
| Methodology | Medium | Survey of 500 companies; self-reported |
| Recency | High | Published this quarter |
| Relevance | Medium | Includes our industry but broader scope |

**Score**: 2 + 2 + 3 + 2 = 9 (Moderate Evidence)

**Conclusion**: Useful directional indicator but seek additional sources before major commitments.

---

## Red Flags

Warning signs that evidence may be unreliable:

### Conflict of Interest
- Source benefits from a particular conclusion
- Funding source has stake in results
- Vendor-provided benchmarks for their own products
- *Example*: Security vendor's report on rising cyber threats

### Cherry-Picking
- Only favorable data points presented
- Timeframe chosen to support conclusion
- Comparison groups selected to look good
- *Example*: "Our growth this quarter" ignoring down quarters

### Missing Methodology
- No explanation of how data was gathered
- Sample size not disclosed
- Margin of error not provided
- *Example*: "Studies show..." without citation

### Survivorship Bias
- Only successes examined, failures ignored
- Selection based on outcome
- Missing data from dropouts or failures
- *Example*: "Successful startups all did X"

### Correlation vs Causation
- Correlation presented as causation
- No control for confounding variables
- Post-hoc reasoning
- *Example*: "Companies using our tool grow faster"

### Appeal to Authority
- Credentials in unrelated field
- Popularity substituted for expertise
- "Everyone knows" or "experts agree"
- *Example*: Celebrity endorsement of technical approach

### Outdated Context
- Old data applied to changed conditions
- Pre-disruption research
- Technology or market has shifted
- *Example*: Pre-AI research on software productivity

### Sample Issues
- Non-representative sample
- Self-selection bias
- Too small to be meaningful
- *Example*: Survey of conference attendees as "the industry"

---

## Evidence Documentation Template

Use this template to document and evaluate evidence systematically.

```markdown
## Evidence Record

### Claim
[What assertion does this evidence support?]

### Source
- **Origin**: [Where did this evidence come from?]
- **Author/Creator**: [Who produced it?]
- **Date**: [When was it created/published?]
- **URL/Reference**: [How to find the original]

### Quality Assessment

| Dimension | Rating | Rationale |
|-----------|--------|-----------|
| Credibility (Who) | High/Medium/Low | [Why?] |
| Methodology (How) | High/Medium/Low | [Why?] |
| Recency (When) | High/Medium/Low | [Why?] |
| Relevance (What) | High/Medium/Low | [Why?] |

**Overall Score**: [X/12] - [Strong/Moderate/Weak/Poor]

### Red Flags Identified
- [ ] Conflict of interest
- [ ] Cherry-picking
- [ ] Missing methodology
- [ ] Survivorship bias
- [ ] Correlation as causation
- [ ] Appeal to authority
- [ ] Outdated context
- [ ] Sample issues
- [ ] Other: [specify]

### Notes
[Additional context, caveats, or observations]

### Recommendation
[How should this evidence be used in the decision?]
```

---

## Using This Skill

### When Gathering Evidence
1. Document each piece of evidence using the template
2. Evaluate quality across all four dimensions
3. Note any red flags
4. Calculate overall quality score

### When Reviewing Evidence
1. Check that facts are truly facts (verifiable)
2. Identify unstated assumptions
3. Look for red flags
4. Assess whether evidence quality matches decision importance

### When Presenting Evidence
1. Lead with highest-quality evidence
2. Acknowledge limitations and gaps
3. Distinguish facts from assumptions
4. Be explicit about evidence quality

### Integration with Other Skills
- **Decision Analysis**: Use quality scores to weight evidence
- **Risk Assessment**: Lower-quality evidence = higher uncertainty
- **Stakeholder Communication**: Calibrate confidence to evidence quality
