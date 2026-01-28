# Using Deliberate Decisions

A practical guide to making high-stakes decisions with AI assistance.

## Quick Start

```bash
# Load the plugin
claude --plugin-dir /path/to/deliberate-decisions

# Start a decision (AI suggests depth after understanding the decision)
> /decide

# Or specify depth upfront
> /decide --light      # <10 minutes
> /decide --medium     # 30-40 minutes
> /decide --complete   # 60-90 minutes
```

## Decision Weight

Not all decisions need the same rigor. The framework supports three depth levels:

| Weight | Time | Best For |
|--------|------|----------|
| **Light** | <10 min | Reversible decisions, domain expertise, lower stakes |
| **Medium** | 30-40 min | Moderate stakes, some uncertainty |
| **Complete** | 60-90 min | High stakes, irreversible, significant uncertainty |

**Key insight:** Weight affects *depth*, not *gates*. All 7 gates always run—just at different levels of thoroughness.

### How Weight is Determined

1. **User pre-specifies:** `/decide --light` or `/decide --medium` or `/decide --complete`
2. **AI suggests:** After Thesis Gate, AI analyzes what it learned and recommends a weight

### Upgrading Mid-Process

You can upgrade anytime by saying "let's go deeper." The AI will also suggest upgrading if it detects:
- Emerging complexity beyond current weight
- Low confidence on critical assumptions
- Surprising research findings
- Stakes higher than initially framed

Weight can only increase, never decrease. Already-completed gates stay as-is.

## What to Expect

### Time by Gate (Complete Weight)

| Gate | Typical Time | What Happens |
|------|--------------|--------------|
| Thesis | 5-10 min | Frame the decision, identify stakeholders |
| Landscape | 10-15 min | Map alternatives, surface assumptions |
| Research | 15-30 min | Web research, document review, reference class |
| Calibration | 10-15 min | Separate facts from assumptions |
| Contrarian | 10-15 min | Pre-mortem, steel-man, bias audit |
| Synthesis | 10-15 min | Must-Be-True conditions, exit criteria |
| Decision | 5-10 min | Human decides with full picture |

**Light Weight:** Same gates, compressed (~1-2 min each). Focus on critical items only. Skip web research. Top 3 risks. No formal steel-manning.

**Medium Weight:** Balanced depth (~3-6 min each). 1-2 web searches. 5 risk scenarios. Steel-man top alternative.

### Cost Estimate

Based on our test case (founding AE hire decision):

| Metric | Estimate |
|--------|----------|
| Session duration | ~90 minutes |
| Input tokens | ~600K-800K |
| Output tokens | ~150K-200K |
| **Estimated cost** | **$15-25** (Claude Opus) |

The cost varies by:
- Decision complexity
- Amount of web research needed
- How much you iterate on each gate
- Model used (Opus vs Sonnet)

**Is it worth it?** For a $150K hiring decision, $20 of AI assistance that surfaces blind spots and forces rigorous thinking is excellent ROI.

## The Seven Gates

### Gate 1: Thesis

**Purpose:** Define what we're actually deciding.

The AI will ask about:
- What triggered this decision?
- Who's affected (stakeholders)?
- What constraints exist?
- How reversible is this?
- What does success look like?

**Key output:** A clear decision statement that's neither too narrow nor too broad.

**Example reframe:**
- ❌ "Should we hire a salesperson?"
- ✅ "How do we grow from $500K to $2M ARR in 18 months?"

### Gate 2: Landscape

**Purpose:** Map the decision space before committing to research.

The AI will help you:
- Generate 4-6 alternatives (including "do nothing")
- Identify Decision Points (key choices within options)
- Find Decision Intersections (dependencies and conflicts)
- Categorize Knowns vs Unknowns

**Key insight:** Decisions fail in the small assumptions, not the big choices. This gate surfaces those hidden assumptions.

### Gate 3: Research

**Purpose:** Gather evidence to inform the decision.

Sources used:
- **Conversation** - Your context and expertise
- **Documents** - Files you provide
- **Web research** - Industry benchmarks, reference class data

**Key concept: Reference Class**

Instead of predicting from first principles, find similar decisions and their outcomes:
- "When do startups typically hire their first AE?"
- "What's the failure rate for VP Sales hires at $500K ARR?"

### Gate 4: Calibration

**Purpose:** Separate what you know from what you assume.

The AI categorizes every statement:

| Type | Definition | Example |
|------|------------|---------|
| **Fact** | Verifiable, confirmed | "Current ARR is $500K" |
| **Assumption** | Believed but unverified | "AE can learn our sale in 30 days" |

Each assumption gets a confidence rating and impact assessment.

**Why this matters:** We often act on assumptions as if they were facts. This gate forces honesty.

### Gate 5: Contrarian

**Purpose:** Attack your emerging recommendation before committing.

Three techniques:

1. **Pre-mortem:** "It's 12 months later and this failed. What happened?"
2. **Steel-man:** Build the strongest case for the alternative you're not choosing
3. **Bias audit:** Check for confirmation bias, anchoring, planning fallacy

**Key output:** A list of failure scenarios with likelihood and mitigation.

### Gate 6: Synthesis

**Purpose:** Integrate everything into a recommendation.

Outputs:
- **Must-Be-True Conditions:** What assumptions must hold for this to work?
- **Exit Criteria:** Pre-committed triggers for when to abandon or reassess
- **Recommendation:** What the evidence supports, at what confidence level

**Important:** The AI recommends, you decide. Gate 7 is human-only.

### Gate 7: Decision

**Purpose:** You decide, with full picture visible.

The AI presents:
- Summary of recommendation
- Key risks acknowledged
- What you're betting on
- Exit criteria you're committing to

You choose. The AI documents your decision and rationale.

## Commands

### `/decide` - Start a New Decision

Launches the 7-gate process. You can pause and resume anytime.

### `/advocate` - Build the Case FOR

After a decision is made, generates a business case for stakeholders. Uses evidence from the decision process—this is persuasion grounded in rigor.

Output: `docs/decisions/<decision>/advocacy/business-case.md`

### `/detract` - Build the Case AGAINST

Generates the counter-case using the same evidence. Use this to:
- Stress-test before finalizing
- Prepare for objections
- Ensure intellectual honesty

Output: `docs/decisions/<decision>/advocacy/counter-case.md`

### `/review-decision` - Post-Decision Analysis

After outcomes are known, compare predictions to reality. Builds your calibration over time.

### `/resume-decision` - Continue Paused Decision

Pick up where you left off. The AI reads your partial artifact and continues from the last completed gate.

## Output Structure

```
docs/decisions/YYYY-MM-DD-<decision-slug>/
├── decision.md           # Full artifact
├── research-notes.md     # Raw research (if extensive)
├── calibration-log.md    # Facts vs Assumptions
└── advocacy/
    ├── business-case.md  # Case FOR
    └── counter-case.md   # Case AGAINST
```

## Tips for Best Results

### Do

- **Be honest about uncertainty.** The framework only works if you admit what you don't know.
- **Let it challenge you.** The contrarian gate is supposed to be uncomfortable.
- **Pre-commit to exit criteria.** Decide now what would make you reverse course.
- **Use for high-stakes decisions.** The overhead isn't worth it for trivial choices.

### Don't

- **Rush through gates.** The value is in the process, not the artifact.
- **Skip the pre-mortem.** It's the most valuable part.
- **Argue with the AI about your assumptions.** If you're defensive, that's data.
- **Use for decisions you've already made.** This is for genuine uncertainty.

## When NOT to Use This

- Decisions that are easily reversible
- Choices with obvious right answers
- Time-critical situations requiring immediate action
- Decisions where you have no real alternatives

The framework is designed for **high-stakes, ambiguous decisions where the cost of being wrong is significant**.

## Customization

### Adjusting Depth

Each gate skill can be configured for thoroughness. For faster decisions:
- Limit alternatives to 3-4 in Landscape
- Skip web research if you have domain expertise
- Shorten pre-mortem to top 3 scenarios

Trade-off: Speed vs. blind spot coverage.

### Domain-Specific Adaptations

The framework is domain-agnostic but works best when you:
- Provide relevant context documents
- Specify domain-specific reference classes
- Define success metrics in your terms

## Troubleshooting

**"The gates feel repetitive"**

Each gate has a distinct purpose. If they blur together, you may be:
- Moving too fast through early gates
- Not generating enough alternatives in Landscape
- Skipping calibration distinctions

**"The AI keeps asking questions I've answered"**

Be explicit about constraints upfront in Thesis. The more context in Gate 1, the smoother later gates flow.

**"The pre-mortem feels like doom-mongering"**

That's the point. If every failure scenario feels implausible, you may have overconfidence bias. The contrarian gate is supposed to be uncomfortable.

**"I disagree with the recommendation"**

Good. The AI recommends, you decide. Disagreeing with full information is better than agreeing without examining alternatives.
