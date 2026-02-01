---
name: using-deliberate-decisions
description: Introduction to the Deliberate Decisions framework - use when helping humans make high-stakes decisions
---

# Deliberate Decisions

A framework for systematic decision-making. Helps surface hidden assumptions, separate facts from speculation, and make rigorous choices.

## When to Use

Use this framework when a human faces a **high-stakes decision**:
- Strategic business decisions (M&A, market entry, major investments)
- Career decisions (job changes, pivots)
- Technical decisions (architecture, vendor selection)
- Any decision where being wrong is costly

## Decision Weight

Not all decisions need the same rigor. After understanding the decision in Thesis Gate, suggest appropriate depth:

| Weight | Time | Best For |
|--------|------|----------|
| **Light** | <10 min | Reversible decisions, domain expertise, lower stakes |
| **Medium** | 30-40 min | Moderate stakes, some uncertainty |
| **Complete** | 60-90 min | High stakes, irreversible, significant uncertainty |

**Weight affects depth, not gates.** All 7 gates always run.

See `deliberate-decisions:weight-classification` for detailed guidance.

## The Seven Gates

Every decision passes through seven mandatory gates. You can exit early, but you cannot skip gates.

| Gate | Name | Purpose |
|------|------|---------|
| 1 | **Thesis** | Articulate what we're deciding and why |
| 2 | **Landscape** | Map Decision Points, Intersections, alternatives |
| 3 | **Research** | Gather evidence, find reference class |
| 4 | **Calibration** | Separate Facts from Assumptions, update Knowns/Unknowns |
| 5 | **Contrarian** | Pre-mortem, steel-man opposition, surface biases |
| 6 | **Synthesis** | Must-Be-True Conditions, Exit Criteria, recommendation |
| 7 | **Decision** | Human chooses with full picture |

## Starting a Decision

Use `/deliberate-decisions:decide` to begin. Options:
- `/deliberate-decisions:decide` - AI suggests weight after Thesis gate
- `/deliberate-decisions:decide --light` - Start at Light depth
- `/deliberate-decisions:decide --medium` - Start at Medium depth
- `/deliberate-decisions:decide --complete` - Start at Complete depth

Weight can be upgraded mid-process but not downgraded.

## Core Principles

1. **Decisions fail in small assumptions** - Surface the hidden structure
2. **Facts vs Assumptions** - Rigorous separation of verifiable from speculative
3. **System 2 thinking** - Gates enforce deliberate, not intuitive, analysis
4. **Adversarial by default** - Pre-mortem and steel-manning are required
5. **One question at a time** - AI builds the model incrementally
6. **Right-sized rigor** - Match depth to stakes with weight classification

## Key Concepts

- **Decision Points**: Individual choices or assumptions that influence outcome
- **Decision Intersections**: How Decision Points depend on or conflict with each other
- **Must-Be-True Conditions**: Assumptions that must hold for the decision to succeed
- **Exit Criteria**: Pre-committed tripwires to reverse the decision if needed
- **Weight**: Light/Medium/Complete depth classification

## Upgrading Mid-Process

User can upgrade weight anytime by saying "let's go deeper."

AI should suggest upgrading when detecting:
- Emerging complexity beyond current weight
- Low confidence on critical assumptions
- Surprising research findings
- Stakes higher than initially framed

Already-completed gates stay as-is. Only remaining gates run at higher depth.

## Commands

| Command | Action |
|---------|--------|
| `/deliberate-decisions:decide` | Start new decision from Thesis gate |
| `/deliberate-decisions:decide --light` | Start at Light depth |
| `/deliberate-decisions:decide --medium` | Start at Medium depth |
| `/deliberate-decisions:decide --complete` | Start at Complete depth |
| `/deliberate-decisions:advocate` | Generate compelling case FOR |
| `/deliberate-decisions:detract` | Generate compelling case AGAINST |
| `/deliberate-decisions:review-decision` | Review past decision against outcomes |
| `/deliberate-decisions:resume-decision` | Continue paused decision |
