---
name: weight-classification
description: Classify decision weight (Light/Medium/Complete) and adjust gate depth accordingly
---

# Weight Classification

**Purpose:** Match decision rigor to decision stakes. All 7 gates run at appropriate depth.

## The Three Weights

| Weight | Time | When to Use |
|--------|------|-------------|
| **Light** | <10 min | Reversible decisions, domain expert, lower stakes |
| **Medium** | 30-40 min | Moderate stakes, some uncertainty, standard rigor |
| **Complete** | 60-90 min | High stakes, irreversible, significant uncertainty |

**Critical:** Weight affects *depth*, not *gates*. All 7 gates always run.

## Weight Selection

### When to Suggest Weight

Weight is suggested **at the end of Thesis Gate**, after the AI understands:
- Financial/strategic impact
- Reversibility
- Time horizon
- User's domain expertise
- Complexity revealed

### Suggestion Format

```
Based on what you've described:
- [Key factor 1]
- [Key factor 2]
- [Key factor 3]

I recommend **[Weight]** depth (~[time] minutes).

[Light: Quick pass through all gates - good for reversible decisions where you have expertise]
[Medium: Standard rigor - balances thoroughness with efficiency]
[Complete: Full analysis - for high-stakes, hard-to-reverse decisions]

Does that feel right, or would you prefer [alternative]?
```

### Weight Selection Criteria

| Factor | Light | Medium | Complete |
|--------|-------|--------|----------|
| **Financial impact** | <$10K | $10K-$100K | >$100K |
| **Reversibility** | Easy (days) | Moderate (weeks/months) | Hard (years/permanent) |
| **Domain expertise** | Expert | Familiar | New territory |
| **Stakeholders affected** | Just me | Team/department | Organization/customers |
| **Time to know outcome** | Days/weeks | Months | Years |

If any factor suggests Complete, recommend Complete.

## Depth by Gate

### Gate 1: Thesis

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Questions | 3-4 key questions | 5-6 questions | Full exploration |
| Stakeholders | List only | Identify conflicts | Map relationships |
| Constraints | Non-negotiables only | All constraints | Constraint flexibility analysis |
| Success criteria | 1-2 metrics | 3-4 metrics | Comprehensive metrics + timeline |

### Gate 2: Landscape

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Alternatives | 2-3 + do nothing | 4-5 + do nothing | 5-6+ + creative options |
| Decision Points | Surface level (3-5) | Thorough (6-10) | Comprehensive (10+) |
| Intersections | Note obvious ones | Map dependencies | Full intersection analysis |
| Knowns/Unknowns | Quick categorization | Standard matrix | Detailed with confidence |

### Gate 3: Research

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Web research | None - user knowledge | 1-2 targeted searches | Thorough multi-source |
| Reference class | Ask user if known | Find basic reference | Deep reference class analysis |
| Document review | Skip unless provided | Review key docs | Comprehensive review |
| Evidence quality | Trust user | Basic assessment | Full quality evaluation |

### Gate 4: Calibration

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Fact/Assumption split | Quick pass | Full categorization | Detailed with evidence |
| Confidence levels | High/Low only | High/Medium/Low | Calibrated percentages |
| Assumption inventory | Critical only | Important + critical | Comprehensive inventory |
| Blind spots | Quick check | Identify gaps | Deep blind spot analysis |

### Gate 5: Contrarian

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Pre-mortem scenarios | Top 3 risks | 5 scenarios | 5+ with probability/severity |
| Steel-man | Skip | Top rejected alternative | All rejected alternatives |
| Bias audit | Quick self-check | Standard audit | Full bias analysis |
| Second-order effects | Note obvious | One level deep | Two levels deep |

### Gate 6: Synthesis

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Must-Be-True | Top 3 conditions | 5-6 conditions | Comprehensive conditions |
| Exit criteria | 1-2 basic tripwires | 3-4 specific tripwires | Detailed thresholds + dates |
| Risk assessment | High-level summary | Consolidated risks | Full risk matrix |
| Recommendation | Brief | Standard with rationale | Comprehensive with confidence |

### Gate 7: Decision

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Summary | One paragraph | Standard summary | Full decision summary |
| Documentation | Minimal artifact | Standard artifact | Complete artifact |
| Rationale capture | Brief | Key factors | Verbatim + deciding factors |

## Upgrading Mid-Process

### User-Initiated Upgrade

User can say "let's go deeper" at any point. AI responds:

```
Upgrading to [Weight]. Remaining gates will run at [Weight] depth.
[If past gates were Light, note what was skipped that won't be revisited]
```

Already-completed gates stay as-is. No going back.

### AI-Suggested Upgrade

AI should suggest upgrading when it detects:

| Signal | Example | Suggestion |
|--------|---------|------------|
| **Emerging complexity** | More alternatives than expected | "This is more complex than it first appeared. Want to upgrade to Medium/Complete?" |
| **Low confidence on critical assumptions** | Key assumption rated Low | "A critical assumption has low confidence. Recommend upgrading to get more rigor here." |
| **Surprising research findings** | Reference class shows high failure rate | "The reference class suggests higher risk than expected. Want to go deeper?" |
| **Stakes seem higher** | Financial impact larger than initially framed | "The stakes seem higher than initially framed. Recommend Complete depth." |
| **User uncertainty** | User expresses doubt repeatedly | "You seem uncertain about some key points. Want to spend more time here?" |

### Upgrade Suggestion Format

```
⚠️ **Upgrade Suggestion**

I'm noticing [signal]. This suggests [weight] depth might be more appropriate.

Current: [Weight] (~X min remaining)
Suggested: [Weight] (~Y min remaining)

[Brief explanation of what deeper analysis would add]

Continue at current depth, or upgrade?
```

## Weight in Artifact

Document the weight in the decision artifact header:

```markdown
# Decision: [Statement]

**Weight:** [Light/Medium/Complete]
**Estimated time:** [X minutes]
**Upgraded:** [Yes - from Light at Gate 3 / No]
```

## Commands

Weight can be specified when starting:

```
/decide              → AI suggests weight after Thesis
/decide --light      → Start at Light (can upgrade)
/decide --medium     → Start at Medium (can upgrade)
/decide --complete   → Start at Complete
```

If weight is pre-specified, skip the weight suggestion step in Thesis but still allow upgrades.
