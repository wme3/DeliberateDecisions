---
name: decision-advocacy
description: Generate compelling cases FOR a decision - advocacy grounded in rigorous analysis
---

# Decision Advocacy

**Purpose:** Create persuasive, well-structured arguments supporting a decision that has passed through the Decision Gate.

**Announce:** "Using decision-advocacy to create the business case."

## Prerequisites

- Decision Gate completed
- Decision artifact exists with documented rationale
- Human has explicitly decided (not just recommended)

## Principle

> **"Persuasion grounded in rigor"** - Advocacy is compelling because it survived the gauntlet.

The decision has already been stress-tested through:
- Pre-mortem analysis
- Steel-manned alternatives
- Bias audits
- Contrarian challenges

This isn't spin. It's communicating a well-examined choice to those who weren't in the room.

## Process

### Step 1: Identify Audience

Before writing anything, understand who you're persuading.

**Questions to answer:**

| Aspect | Details |
|--------|---------|
| **Who?** | Role, seniority, relationship to decision |
| **What do they care about?** | Their metrics, priorities, concerns |
| **What's their context?** | What do they already know? What's their time horizon? |
| **Likely objections?** | What pushback will they raise? |
| **Decision needed from them?** | Approval, resources, support, awareness |

**Audience archetypes:**

- **Executive sponsor** - Cares about: strategic alignment, ROI, risk exposure
- **Finance stakeholder** - Cares about: numbers, payback period, budget impact
- **Technical stakeholder** - Cares about: feasibility, integration, maintenance burden
- **Operations stakeholder** - Cares about: implementation, disruption, training
- **Peer/team** - Cares about: workload impact, clarity, rationale

### Step 2: Choose Format

Match format to audience and context.

| Format | Best For | Length | Tone |
|--------|----------|--------|------|
| **Executive briefing** | C-suite, board, time-constrained leaders | 1 page max | Direct, strategic, bottom-line |
| **Business case** | Formal approval processes, investment decisions | 3-5 pages | Structured, comprehensive, evidence-based |
| **Team communication** | Internal alignment, team buy-in | 1-2 pages | Inclusive, rationale-focused, action-oriented |
| **Presentation narrative** | All-hands, stakeholder meetings | Slide-ready bullets | Story arc, visual-friendly, memorable |

### Step 3: Structure the Argument

Every persuasive case follows this arc:

#### Opening (Hook)
- Lead with the most compelling point
- State what's at stake
- Signal the ask upfront

#### Context (Why Now)
- What problem or opportunity triggered this?
- Why is the status quo insufficient?
- What happens if we don't act?

#### The Case (Why This)
- The decision in clear terms
- Key benefits (prioritized for audience)
- Evidence from the decision process
- Alignment with stated priorities/strategy

#### Addressing Concerns (Why Not Worry)
- Acknowledge the strongest objections
- Provide mitigations from the decision process
- Reference stress-testing already completed
- Be honest about residual risks and how they'll be managed

#### Call to Action (What Next)
- Specific ask: approval, resources, support
- Clear timeline
- Next steps if approved

### Step 4: Apply Persuasion Principles

**Lead with your strongest point.** Don't bury it. Executives read the first paragraph; make it count.

**Acknowledge counterarguments.** Addressing objections before they're raised builds credibility. Use the contrarian analysis.

**Use concrete specifics.** "30% cost reduction" beats "significant savings." Pull from calibrated estimates.

**Show your work (briefly).** Reference the rigor: "After evaluating 4 alternatives and stress-testing against 12 failure scenarios..."

**Match their language.** Use the stakeholder's vocabulary and frame benefits in their terms.

**Anticipate the "and then what?"** Include implementation path to show you've thought beyond the decision.

**Make the ask clear and specific.** Vague asks get vague responses. State exactly what you need.

### Step 5: Quality Check

Before finalizing, verify:

| Check | Question |
|-------|----------|
| **Accuracy** | Does this faithfully represent the decision and rationale? |
| **Audience fit** | Would this land with the intended reader? |
| **Objection coverage** | Are likely pushbacks addressed? |
| **Evidence grounded** | Are claims supported by the decision process? |
| **Ask clarity** | Is it obvious what you want the reader to do? |
| **Tone calibration** | Confident without overselling? Honest about uncertainties? |
| **Length appropriate** | Respects the audience's time? |

## Output Template

```markdown
# [Decision Title]: Business Case

## Executive Summary

[2-3 sentences: What we're recommending, why it matters, what we need]

**Recommendation:** [One clear sentence]
**Ask:** [Specific approval/resources/support needed]
**Timeline:** [When decision needed, implementation horizon]

---

## Background

### The Problem/Opportunity
[What triggered this decision? What's at stake?]

### Why Now
[Urgency drivers, window of opportunity, cost of delay]

---

## The Opportunity

### Proposed Approach
[Clear description of the decision]

### Key Benefits
1. **[Benefit 1]** - [Specific, quantified where possible]
2. **[Benefit 2]** - [Specific, quantified where possible]
3. **[Benefit 3]** - [Specific, quantified where possible]

### Strategic Alignment
[How this connects to stated priorities, strategy, OKRs]

---

## Alternatives Considered

| Option | Pros | Cons | Why Not Selected |
|--------|------|------|------------------|
| [Alternative 1] | [Key pros] | [Key cons] | [Reason] |
| [Alternative 2] | [Key pros] | [Key cons] | [Reason] |
| Status Quo | [Key pros] | [Key cons] | [Reason] |

---

## Risk Assessment

### Key Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [Risk 1] | [L/M/H] | [L/M/H] | [How we'll address it] |
| [Risk 2] | [L/M/H] | [L/M/H] | [How we'll address it] |

### What We've Stress-Tested
- Pre-mortem analysis: [X] failure scenarios examined
- Alternatives evaluation: [Y] options rigorously compared
- Assumption validation: [Key assumptions verified]

### Exit Criteria
If the following occur, we will revisit this decision:
- [Trigger 1]
- [Trigger 2]

---

## Success Metrics

| Metric | Current State | Target | Timeline |
|--------|---------------|--------|----------|
| [Metric 1] | [Baseline] | [Goal] | [When] |
| [Metric 2] | [Baseline] | [Goal] | [When] |

### How We'll Know It's Working
[Leading indicators, checkpoints, review schedule]

---

## The Ask

**Decision needed:** [Specific approval requested]

**Resources required:**
- [Resource 1]: [Amount/duration]
- [Resource 2]: [Amount/duration]

**Timeline:**
- Decision needed by: [Date]
- Implementation start: [Date]
- First checkpoint: [Date]

**Next steps if approved:**
1. [Immediate action 1]
2. [Immediate action 2]
3. [Immediate action 3]

---

*This business case was developed through a structured decision process including problem framing, option exploration, assumption testing, contrarian analysis, and synthesis. Full decision documentation available at: [link to decision artifact]*
```

## Save Location

```
docs/decisions/YYYY-MM-DD-<decision-slug>/advocacy/business-case.md
```

Create the `advocacy/` subdirectory within the decision folder to keep advocacy materials organized alongside the decision artifact.

## Exit Criteria

- [ ] Audience clearly identified
- [ ] Format appropriate to audience and context
- [ ] Argument structured with all five components
- [ ] Persuasion principles applied
- [ ] Quality checklist passed
- [ ] Document saved to advocacy folder

## Writing Style

**Apply `deliberate-decisions:writing-style` throughout.**

| Artifact | Style |
|----------|-------|
| Executive briefing | Shortform - 1 page, front-load decision, clear CTA |
| Business case | Longform - structured sections, tables, evidence-based |
| Team communication | Shortform - bullets, rationale-focused |

Key principles:
- Active voice, strong verbs
- Quantify claims with concrete numbers
- Tables for comparisons, bullets for lists
- End every section with clear next steps

## Related Skills

- `writing-style` - Apply to all output artifacts
- `decision-capture` - Must be completed before advocacy
- `decision-detraction` - Counter-skill for generating challenges
- `contrarian-analysis` - Source material for addressing objections

## Usage Notes

**This is not about winning arguments.** It's about clearly communicating a well-made decision to stakeholders who need to understand or approve it.

**Draw from the decision process.** The rigor is your credibility. Reference the alternatives considered, the risks assessed, the assumptions tested.

**Tailor relentlessly.** A business case for the CFO looks different from a team announcement. Rewrite, don't just reformat.

**Be honest about uncertainties.** Overselling undermines trust. Acknowledge what you don't know while expressing confidence in the process.
