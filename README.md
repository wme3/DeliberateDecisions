# Deliberate Decisions

A Claude Code plugin for making high-stakes decisions through systematic research and structured analysis.

## Origin Story

I discovered [Superpowers](https://github.com/obra/superpowers) by Jesse Vincent while looking for ways to improve my AI-assisted coding workflow. After using it, I was impressed by how it enforced discipline— test-driven developmemt (TDD), debugging workflows, code review patterns—through structured skills rather than ad-hoc prompting.

I wanted to understand how it worked, so I forked it and walked through the architecture. The plugin system, the skill definitions, the session hooks. I was expecting to find optimized prompts, but I found something much deeper - structure. 

That exploration sparked an idea: what if I built something similar for decision-making? Not coding decisions, but the messy, high-stakes business decisions that keep founders up at night. Hiring. Strategy. Investment. The decisions where being wrong is expensive and the right answer isn't obvious.

I built Deliberate Decisions as an experiment in applying the same structured, skill-based approach to decision-making that Superpowers applies to coding. It incorporates Kahneman's System 1/System 2 framework, pre-mortem analysis, and reference class forecasting into a 7-gate process that forces slow, deliberate thinking. I was introduced to Kahneman in business school and I've found myself going back to his books time and time again (Thinking Fast & Slow).

I'm sharing it in case others find it useful.

Thanks!

-Matt

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
# Clone the repository
git clone https://github.com/yourusername/deliberate-decisions.git

# Load as a Claude Code plugin
claude --plugin-dir /path/to/deliberate-decisions
```

## Quick Start

```
> /decide

I'm starting a new decision process using Deliberate Decisions.

What decision are you facing?
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

## Decision Weight

Not all decisions need the same rigor. Choose your depth:

| Weight | Time | Best For |
|--------|------|----------|
| **Light** | <10 min | Reversible, domain expertise, lower stakes |
| **Medium** | 30-40 min | Moderate stakes, some uncertainty |
| **Complete** | 60-90 min | High stakes, irreversible, significant uncertainty |

**Weight affects depth, not gates.** All 7 gates always run.

```
/decide              # AI suggests weight after Thesis
/decide --light      # Start at Light
/decide --medium     # Start at Medium
/decide --complete   # Start at Complete
```

You can upgrade mid-process. The AI will also suggest upgrading if complexity emerges.

## Commands

| Command | Action |
|---------|--------|
| `/decide` | Start a new decision |
| `/advocate` | Generate compelling case FOR |
| `/detract` | Generate compelling case AGAINST |
| `/review-decision` | Compare outcomes to predictions |
| `/resume-decision` | Continue a paused decision |

## Documentation

- **[Usage Guide](docs/USAGE.md)** - Detailed walkthrough of each gate and command
- **[Example Decision](docs/EXAMPLE.md)** - Real decision (founding AE hire) with full process
- **[Example Artifact](docs/decisions/2026-01-27-founding-ae-hire/decision.md)** - Output from the example
- **[Example Business Case](docs/decisions/2026-01-27-founding-ae-hire/advocacy/business-case.md)** - Advocacy output

## Skills

### Gate Skills
- `thesis-framing` - Define decision, stakeholders, constraints
- `landscape-mapping` - Map alternatives, Decision Points
- `deep-research` - Web research, reference class
- `calibration` - Separate Facts from Assumptions
- `contrarian-analysis` - Pre-mortem, steel-man, bias audit
- `synthesis` - Must-Be-True, Exit Criteria, recommendation
- `decision-capture` - Document final decision

### Supporting Skills
- `using-deliberate-decisions` - Framework introduction
- `bias-detection` - Cognitive bias library
- `evidence-evaluation` - Source quality assessment
- `decision-review` - Post-decision analysis
- `decision-advocacy` - Build the case FOR
- `decision-detraction` - Build the case AGAINST
- `writing-style` - Longform and shortform writing principles

## Output Structure

```
docs/decisions/YYYY-MM-DD-<decision-slug>/
├── decision.md           # Full artifact
├── research-notes.md     # Raw research findings
├── calibration-log.md    # Facts vs Assumptions
└── advocacy/
    ├── business-case.md  # Case FOR
    └── counter-case.md   # Case AGAINST
```

## When to Use This

**Good fit:**
- High-stakes decisions with significant cost of being wrong
- Ambiguous situations with multiple viable alternatives
- Decisions where you suspect confirmation bias
- Choices that deserve more rigor than intuition

**Not a good fit:**
- Easily reversible decisions
- Time-critical situations requiring immediate action
- Choices with obvious right answers
- Decisions you've already made

## Acknowledgments

**Superpowers** by [Jesse Vincent](https://github.com/obra) provided the architectural inspiration and plugin patterns for this project. If you're looking for AI-assisted coding workflows, check out [Superpowers](https://github.com/obra/superpowers).

The decision framework incorporates ideas from:
- Daniel Kahneman's *Thinking, Fast and Slow* (System 1/System 2)
- Gary Klein's pre-mortem technique
- Philip Tetlock's reference class forecasting

## License

MIT License - see [LICENSE](LICENSE) for details.

## Contributing

This is an experiment. If you find it useful or have ideas for improvement, open an issue or PR. Thanks!
