# Example: Founding AE Hire Decision

This document walks through a real decision made using Deliberate Decisions—whether and how to hire a salesperson for a growing startup.

**Decision:** How to reach $2M ARR in 18 months
**Outcome:** Validate founding AE profile with 2-week talent market test, then commit
**Time spent:** ~90 minutes
**Artifacts:** See `docs/decisions/2026-01-27-founding-ae-hire/`

---

## Starting Context

A 20-person startup at $500K ARR with $5M seed raised. The founder was spending 20-30 hours/week on sales, with product, recruiting, and fundraising suffering. The question: should we hire a seller?

## Gate 1: Thesis

**Initial framing:** "Should we hire a salesperson?"

**Problem identified:** This framing is too narrow. It assumes hiring is the answer and only asks yes/no.

**Reframed decision:** "How do we grow from $500K to $2M ARR in 18 months to be Series A ready?"

This reframe:
- Opens up alternatives beyond hiring
- Connects to the actual goal (Series A readiness)
- Sets measurable success criteria

**Key context surfaced:**
- 5 customers, no churn risk
- 20 deals in pipeline
- 3 new deals/month inbound
- $200K ACV, 25% close rate
- Founder capacity maxed

## Gate 2: Landscape

**Alternatives generated:**

| Option | Description |
|--------|-------------|
| A. VP Sales | Senior sales leader ($200K+ OTE) |
| B. Junior AE | Entry-level with founder support |
| C. Founder-led | No hire, founder continues closing |
| D. Product-led growth | Self-serve motion |
| E. Partnerships | Resellers, channel partners |
| F. Founding AE | Senior AE with leadership potential |

**Decision Points identified:**
- DP1: Does founding AE profile exist at target comp?
- DP2: Can they learn our sale in 30 days?
- DP3: Can AE close at near-founder rate?
- DP4: Can founder commit 30 days to onboarding?
- DP5: Will inbound pipeline continue?
- DP6: Will AE stay through Series A?
- DP7: Is founder-led sustainable for 18 months?

**Decision Intersections found:**
- DP2 depends on DP1 (can't train if can't find)
- DP3 depends on DP2 (can't close if not trained)
- DP7 conflicts with current reality (already maxed)

## Gate 3: Research

**Internal data confirmed:**
- ARR, ACV, close rate, pipeline metrics
- Deal cycle: 3-6 months
- Pipeline source: inbound + founder outbound

**Reference class findings:**
- VP Sales typically hired at ~$2M ARR, not $500K
- Common mistake: hiring too senior too early
- Founding AE profile: startup experience, thrives in ambiguity

**Critical context:**
- Emerging segment of cybersecurity
- Early adopters only—not ready for market education
- Must find prospects who already have the pain

## Gate 4: Calibration

**Facts (verified):**
| Statement | Source |
|-----------|--------|
| Current ARR: $500K | Internal |
| ACV: $200K | Internal |
| Close rate: 25% | Internal |
| Founder time: 20-30 hrs/week | Internal |
| Founding AE typical at $500K ARR | Reference class |

**Assumptions (unverified):**
| Assumption | Confidence | Impact if Wrong |
|------------|------------|-----------------|
| Founding AE profile exists | Medium | Plan fails |
| 30-day onboarding works | Medium-High | Delay |
| AE closes at near-founder rate | Medium | Revenue miss |
| AE stays through Series A | Medium | Knowledge loss |

**Blind spots identified:**
1. Haven't searched for candidates yet
2. Zero data on AE close rates in this context
3. 30-day onboarding untested (3-6 month cycle)

## Gate 5: Contrarian

**Pre-mortem scenarios:**

| Scenario | Description |
|----------|-------------|
| Wrong hire | Enterprise seller who wants to educate market |
| Right hire, wrong timing | Can't carve out 30 days for onboarding |
| AE leaves | Gets poached at month 8 |
| Pipeline dries up | Not enough deals to feed AE |
| Opportunity cost | Should have spent $150K on demand gen |

**Steel-manned alternative (Founder-led):**
> "You know the pain better than anyone. You can spot early adopters in 5 minutes. A founding AE will waste months learning what you already know. Just grind for 18 months, hire after Series A from strength."

**Counter:** If founder does all selling through Series A, no one knows the business to scale post-raise. Investors will ask "what happens when you're not selling?" Weak positioning.

**Bias audit:**
| Bias | Status |
|------|--------|
| Confirmation | ✅ Steel-manned alternatives |
| Anchoring | ✅ Pivoted from VP to founding AE |
| Overconfidence | ⚠️ Medium confidence untested |
| Planning fallacy | ⚠️ 30-day ramp may be optimistic |

## Gate 6: Synthesis

**Must-Be-True Conditions:**
1. Founding AE profile exists at $150-200K OTE
2. Can identify early adopter hunter in interviews
3. 30 days available for onboarding
4. AE closes at ≥20% rate
5. Inbound holds at 3/month
6. AE stays 12+ months

**Exit Criteria (pre-committed):**
| Trigger | Threshold | Action |
|---------|-----------|--------|
| No qualified candidates | 60 days | Abort, reassess |
| AE pipeline activity | <5 opps by day 60 | Performance conversation |
| AE close rate | <15% at month 6 | Exit decision |
| AE tenure | Leaves before month 9 | Don't backfill |

**Recommendation:** Hire founding AE with 2-week validation first

**Confidence:** Medium

**Rationale:** Founder-led is mathematically viable but unsustainable. Reference class supports founding AE at $500K ARR. Wrong hire risk is real but mitigable. $100-150K is 2-3% of seed—acceptable bet.

## Gate 7: Decision

**Human decision:** Validate first, then commit

**Rationale:** Biggest blind spot is whether founding AE profile exists. 2 weeks of validation costs nothing but time and prevents committing to a search that may not yield the right candidate.

**Deciding factors:**
- $100K acceptable bet, but wrong hire is nightmare
- 2 weeks validation is cheap insurance
- If profile doesn't exist, need to adapt before wasting months

**Remaining concerns:**
- Calendar packed—will validation actually happen?
- "Good" in validation not fully defined

## Outputs Generated

### Decision Artifact
Full documentation at `docs/decisions/2026-01-27-founding-ae-hire/decision.md`

### Business Case
Stakeholder-ready advocacy at `docs/decisions/2026-01-27-founding-ae-hire/advocacy/business-case.md`

---

## Reflection

### What the Framework Surfaced

1. **Reframing:** Original question was too narrow. The real decision was about reaching $2M ARR, not just hiring.

2. **Reference class:** Industry data confirmed founding AE (not VP Sales) is the right hire at this stage.

3. **Blind spots:** The biggest unknown—whether the profile exists—was identified and addressed with a validation step.

4. **Pre-committed exits:** Clear triggers for when to abandon the approach, set before emotional investment.

5. **Steel-manned alternative:** Founder-led sales was seriously considered, not dismissed.

### What Could Have Been Missed Without the Framework

- **Hiring the wrong profile:** VP Sales (too senior) or Junior AE (needs too much support)
- **Not validating before committing:** Months of searching without knowing if profile exists
- **No exit criteria:** Keeping a bad hire too long because no tripwires were set
- **Overconfidence in 30-day ramp:** Planning fallacy identified but not fully addressed

### Time and Cost

- **Active time:** ~90 minutes
- **Estimated tokens:** ~700K input, ~175K output
- **Estimated cost:** ~$20 (Claude Opus)

For a $150-200K hiring decision with 18-month runway implications, this investment in decision quality is easily justified.
