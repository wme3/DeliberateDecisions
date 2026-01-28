# Deliberate Decisions - Design Document

## Overview

**Deliberate Decisions** is a Claude plugin that provides skills for AI agents to help humans make high-stakes decisions through systematic research and structured analysis.

Inspired by [superpowers](https://github.com/obra/superpowers) (for coding), this framework enforces disciplined decision-making by:

- Breaking decisions into **Decision Gates** (mandatory checkpoints)
- Surfacing hidden **Decision Points** and their **Intersections**
- Separating **Facts** from **Assumptions**
- Tracking **Knowns** vs **Unknowns**
- Identifying **Must-Be-True Conditions**
- Incorporating Kahneman's System 1/System 2 framework
- Requiring adversarial analysis (pre-mortem, red team)

**Core philosophy:** Decisions fail in the small assumptions, not the big choices. Surface the hidden structure.

**Target users:** AI agents assisting humans with high-stakes decisions (strategic business, personal, technical).

**Initial focus:** Strategic business decisions (M&A, market entry, major investments, pivots).

---

## Decision Gates

Every decision passes through seven mandatory gates. You can exit at any gate if you have sufficient clarity, but you cannot skip gates.

| Gate | Name | Purpose | Key Output |
|------|------|---------|------------|
| 1 | **Thesis** | Articulate what we're deciding and why | Problem statement, success criteria, stakeholders, constraints, reversibility |
| 2 | **Landscape** | Map the decision structure | Decision Points, Intersections, alternatives, initial Knowns/Unknowns |
| 3 | **Research** | Gather evidence, fill gaps | Raw findings, sources, evidence quality, reference class |
| 4 | **Calibration** | Consolidate learning | Updated Facts vs Assumptions, revised Knowns/Unknowns, assumption inventory |
| 5 | **Contrarian** | Adversarial analysis | Pre-mortem findings, steel-manned opposition, bias flags, second-order effects |
| 6 | **Synthesis** | Integrate findings | Must-Be-True Conditions, Exit Criteria, risk assessment, recommendation |
| 7 | **Decision** | Human chooses | Final decision with documented rationale |

### Gate Rules

- Each gate has explicit entry and exit criteria
- AI guides through each gate via dialogue
- Cognitive biases flagged with guided corrections (severity-calibrated)
- Human can pause at any gate to go deeper or decide with current information
- Skipping gates is not allowed - only early exit with documented rationale

---

## Core Concepts

Concepts are introduced progressively through gates. The human never sees the full complexity at once - the AI carries the model, the human answers focused questions.

### Decision Points

Individual choices or assumptions that influence the outcome. Often implicit until surfaced.

- Has a statement ("We assume market growth will continue")
- Has a type: *choice* (we decide) vs *assumption* (we believe)
- Has a confidence level: *high / medium / low / unknown*
- Links to supporting/contradicting evidence

**Introduced at:** Landscape gate

### Decision Intersections

Relationships between Decision Points - how they depend on, reinforce, or conflict with each other.

- *Depends on* - If A is wrong, B doesn't matter
- *Conflicts with* - A and B can't both be true
- *Reinforces* - A being true strengthens B

**Introduced at:** Landscape gate

### Alternatives

The options being considered (not just the primary thesis).

- Includes "do nothing" as an explicit option
- Each alternative has its own Decision Points
- Enables comparison, not just validation

**Introduced at:** Landscape gate

### Facts vs Assumptions

- **Fact**: Verifiable, sourced, evidence-backed
- **Assumptions**: Opinion, projection, speculation (may be well-reasoned, but not verifiable)

**Introduced at:** Research gate, refined at Calibration gate

### Knowns vs Unknowns

- **Known**: We have reliable information
- **Unknown-Knowable**: We could find out with research
- **Unknown-Unknowable**: Cannot be determined; must assume

**Introduced at:** Landscape gate, updated at Calibration gate

### Stakeholders

- Who is affected by the decision?
- Who has input vs who decides?
- Whose interests might conflict?

**Introduced at:** Thesis gate

### Constraints

- What limits the decision space?
- Budget, time, regulations, resources, political realities
- Non-negotiable vs flexible

**Introduced at:** Thesis gate

### Time Horizon & Reversibility

- One-way door vs two-way door (Bezos framing)
- How long until we know if it worked?
- Cost of reversal if wrong

**Introduced at:** Thesis gate

### Reference Class

- Similar decisions made before (Kahneman's reference class forecasting)
- Base rates: "How often do decisions like this succeed?"
- Counters inside-view overconfidence

**Introduced at:** Research gate

### Second-Order Effects

- What happens *after* the decision?
- Downstream consequences, ripple effects
- "And then what?"

**Introduced at:** Contrarian gate

### Must-Be-True Conditions

Assumptions that *must* hold for the decision to succeed. Critical for Unknown-Unknowables.

- Explicit statement of what we're betting on
- Consequences if the condition fails

**Introduced at:** Synthesis gate

### Exit Criteria

- Under what conditions would we reverse this decision?
- Pre-committed tripwires to prevent sunk-cost fallacy

**Introduced at:** Synthesis gate

---

## Cognitive Bias Handling

The framework incorporates Kahneman's System 1/System 2 thinking:

- **System 1**: Fast, intuitive, automatic - prone to bias
- **System 2**: Slow, deliberate, effortful - the gates enforce this

### When AI Surfaces a Bias

Response is calibrated to severity:

| Severity | Response |
|----------|----------|
| Minor | Flag in artifact, note suggestion, continue |
| Moderate | Pause, propose correction, human approves before continuing |
| Major | Halt progress, guided correction required before proceeding |

### Key Biases to Detect

- Confirmation bias (seeking supporting evidence)
- Anchoring (over-weighting initial information)
- Overconfidence (inside view over base rates)
- Sunk cost fallacy (honoring past investment over future value)
- Availability bias (over-weighting recent/memorable examples)

---

## Research Sources

The AI uses multiple sources to build a complete picture:

1. **Conversation** - AI asks questions, human provides context and internal knowledge
2. **Documents** - AI ingests provided documents (reports, financials, memos, research)
3. **Web research** - AI actively searches for market data, competitor info, industry analysis

---

## Skills Structure

### Core Gate Skills (7)

| Skill | Purpose |
|-------|---------|
| `thesis-framing` | Define the decision, stakeholders, constraints, reversibility |
| `landscape-mapping` | Surface Decision Points, Intersections, alternatives, initial Knowns/Unknowns |
| `deep-research` | Web search, document analysis, reference class, gather evidence |
| `calibration` | Consolidate Facts vs Assumptions, update Knowns/Unknowns, inventory assumptions |
| `contrarian-analysis` | Pre-mortem, steel-man opposition, surface biases, second-order effects |
| `synthesis` | Must-Be-True Conditions, Exit Criteria, risk assessment, recommendation |
| `decision-capture` | Document final decision, rationale, commit to artifact |

### Supporting Skills (6)

| Skill | Purpose |
|-------|---------|
| `using-deliberate-decisions` | Introduction to the framework (like superpowers' using-superpowers) |
| `bias-detection` | Library of cognitive biases, how to spot them, guided corrections |
| `evidence-evaluation` | How to assess source quality, separate fact from idea |
| `decision-review` | Post-decision review: what happened vs what we predicted |
| `decision-advocacy` | Generate compelling case FOR a completed decision |
| `decision-detraction` | Generate compelling case AGAINST a completed decision |

### Commands (5)

| Command | Action |
|---------|--------|
| `/decide` | Start a new decision process from Thesis gate |
| `/advocate` | Generate compelling case FOR the decision |
| `/detract` | Generate compelling case AGAINST the decision |
| `/review-decision` | Review a past decision against outcomes |
| `/resume-decision` | Continue a paused decision process |

---

## Output Artifacts

Each decision produces a structured document with three views:

### 1. Executive Summary (top of document)

- Decision statement
- Recommendation
- Key Must-Be-True Conditions
- Top risks
- Exit Criteria

### 2. Argument Map (main body)

```
Thesis
├── Supporting Evidence
│   ├── Fact: [source]
│   └── Idea: [reasoning]
├── Opposing Evidence
│   ├── Fact: [source]
│   └── Idea: [reasoning]
├── Must-Be-True Conditions
│   └── Condition → Consequence if false
└── Decision Points
    ├── Point A (choice) → depends on B
    └── Point B (assumption, low confidence)
```

### 3. Decision Tree (appendix)

- Visual map of alternatives
- Each branch shows key Decision Points and Intersections
- Highlights Unknown-Unknowables on each path

### Advocacy Artifacts

Generated after decision is reached:

- **Business case** - Compelling argument FOR the decision
- **Counter-case** - Compelling argument AGAINST the decision

Key principle: Persuasion grounded in rigor. Uses the same evidence from research, doesn't hide risks, but frames appropriately for audience.

### File Structure

```
docs/decisions/YYYY-MM-DD-<decision-slug>/
├── decision.md          # Full artifact (all three views)
├── research-notes.md    # Raw research findings
├── calibration-log.md   # Facts vs Assumptions evolution
└── advocacy/
    ├── business-case.md # Compelling case FOR
    └── counter-case.md  # Compelling case AGAINST
```

---

## Project Structure

```
deliberate-decisions/
├── .claude-plugin/
│   └── plugin.json
├── skills/
│   ├── using-deliberate-decisions/
│   │   └── SKILL.md
│   ├── thesis-framing/
│   │   └── SKILL.md
│   ├── landscape-mapping/
│   │   └── SKILL.md
│   ├── deep-research/
│   │   └── SKILL.md
│   ├── calibration/
│   │   └── SKILL.md
│   ├── contrarian-analysis/
│   │   └── SKILL.md
│   ├── synthesis/
│   │   └── SKILL.md
│   ├── decision-capture/
│   │   └── SKILL.md
│   ├── bias-detection/
│   │   └── SKILL.md
│   ├── evidence-evaluation/
│   │   └── SKILL.md
│   ├── decision-review/
│   │   └── SKILL.md
│   ├── decision-advocacy/
│   │   └── SKILL.md
│   └── decision-detraction/
│       └── SKILL.md
├── commands/
│   ├── decide.md
│   ├── advocate.md
│   ├── detract.md
│   ├── review-decision.md
│   └── resume-decision.md
├── hooks/
│   ├── hooks.json
│   └── session-start.sh
├── docs/
│   └── decisions/
├── README.md
└── LICENSE
```

---

## Design Principles

1. **Small questions, one at a time** - The AI builds the model incrementally; human never fills out a form
2. **Progressive disclosure** - Each gate introduces only the concepts it needs
3. **Mandatory gates, optional depth** - Can't skip, but can exit early with documented rationale
4. **Facts over opinions** - Rigorous separation of verifiable from speculative
5. **Adversarial by default** - Pre-mortem and steel-manning are required, not optional
6. **Evidence before advocacy** - Can only generate business case after completing the gauntlet
7. **Kahneman-informed** - Designed to engage System 2 and counter System 1 biases

---

## Test Case

**Strategic business decision: M&A evaluation**

Walk through the gates:

1. **Thesis**: "Should we acquire Company X to enter the European market?"
2. **Landscape**: Surface assumptions (synergies, retention, integration), map dependencies
3. **Research**: Market data, comparable transactions, Company X financials, reference class (M&A success rates)
4. **Calibration**: What do we actually know? What are we assuming about synergies?
5. **Contrarian**: Pre-mortem ("It's 2028, the acquisition failed - why?"), steel-man the case for organic growth
6. **Synthesis**: Must-Be-True (key talent stays, market doesn't contract), Exit Criteria (if revenue drops 20%, divest)
7. **Decision**: Proceed / Don't proceed / Need more information

Then: `/advocate` to generate the board presentation, `/detract` to prepare for skeptical board members.

---

## Attribution

Inspired by [superpowers](https://github.com/obra/superpowers) by Jesse Vincent - a workflow system for AI coding agents that this framework mirrors in structure and philosophy.
