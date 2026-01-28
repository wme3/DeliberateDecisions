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

Use `/decide` or invoke `deliberate-decisions:thesis-framing` to begin.

## Core Principles

1. **Decisions fail in small assumptions** - Surface the hidden structure
2. **Facts vs Assumptions** - Rigorous separation of verifiable from speculative
3. **System 2 thinking** - Gates enforce deliberate, not intuitive, analysis
4. **Adversarial by default** - Pre-mortem and steel-manning are required
5. **One question at a time** - AI builds the model incrementally

## Key Concepts

- **Decision Points**: Individual choices or assumptions that influence outcome
- **Decision Intersections**: How Decision Points depend on or conflict with each other
- **Must-Be-True Conditions**: Assumptions that must hold for the decision to succeed
- **Exit Criteria**: Pre-committed tripwires to reverse the decision if needed

## Commands

| Command | Action |
|---------|--------|
| `/decide` | Start new decision from Thesis gate |
| `/advocate` | Generate compelling case FOR |
| `/detract` | Generate compelling case AGAINST |
| `/review-decision` | Review past decision against outcomes |
| `/resume-decision` | Continue paused decision |
