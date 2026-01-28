# Deliberate Decisions

A Claude plugin that provides skills for AI agents to help humans make high-stakes decisions through systematic research and structured analysis.

## Philosophy

**Decisions fail in the small assumptions, not the big choices.**

This framework surfaces the hidden structure of decisions:
- **Decision Points** - Individual choices and assumptions that influence outcome
- **Decision Intersections** - How assumptions depend on or conflict with each other
- **Facts vs Assumptions** - Rigorous separation of verifiable from speculative
- **Must-Be-True Conditions** - What we're betting on

Built on Kahneman's System 1/System 2 framework, Deliberate Decisions enforces slow, deliberate thinking through mandatory gates.

## Installation

```bash
# Coming soon: plugin installation
```

## The Seven Gates

Every decision passes through seven mandatory gates:

| Gate | Name | Purpose |
|------|------|---------|
| 1 | **Thesis** | Define what we're deciding and why |
| 2 | **Landscape** | Map alternatives, Decision Points, Knowns/Unknowns |
| 3 | **Research** | Gather evidence, find reference class |
| 4 | **Calibration** | Separate Facts from Assumptions |
| 5 | **Contrarian** | Pre-mortem, steel-man opposition, bias audit |
| 6 | **Synthesis** | Must-Be-True Conditions, Exit Criteria, recommendation |
| 7 | **Decision** | Human decides with full picture |

## Commands

| Command | Action |
|---------|--------|
| `/decide` | Start a new decision |
| `/advocate` | Generate compelling case FOR |
| `/detract` | Generate compelling case AGAINST |
| `/review-decision` | Compare outcomes to predictions |
| `/resume-decision` | Continue a paused decision |

## Skills

### Gate Skills
- `thesis-framing` - Gate 1
- `landscape-mapping` - Gate 2
- `deep-research` - Gate 3
- `calibration` - Gate 4
- `contrarian-analysis` - Gate 5
- `synthesis` - Gate 6
- `decision-capture` - Gate 7

### Supporting Skills
- `using-deliberate-decisions` - Framework introduction
- `bias-detection` - Cognitive bias library
- `evidence-evaluation` - Source quality assessment
- `decision-review` - Post-decision analysis
- `decision-advocacy` - Build the case FOR
- `decision-detraction` - Build the case AGAINST

## Output

Each decision produces:
- `decision.md` - Full artifact with three views (summary, argument map, decision tree)
- `research-notes.md` - Raw research findings
- `calibration-log.md` - Facts vs Assumptions tracking
- `advocacy/` - Business case and counter-case

## Attribution

Inspired by [superpowers](https://github.com/obra/superpowers) by Jesse Vincent.

## License

MIT
