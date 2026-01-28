---
description: "Start a new decision process from the Thesis Gate"
disable-model-invocation: true
---

Invoke the deliberate-decisions:thesis-framing skill and follow it exactly.

## Weight Options

Check if user specified a weight flag:
- `--light` → Set weight to Light, skip weight suggestion in Thesis
- `--medium` → Set weight to Medium, skip weight suggestion in Thesis
- `--complete` → Set weight to Complete, skip weight suggestion in Thesis
- No flag → AI suggests weight after completing Thesis gate

## Starting

If weight was pre-specified:
> "Starting decision process at **[Weight]** depth. What decision are you facing?"

If no weight specified:
> "What decision are you facing?"

Then proceed through Thesis Gate. If no weight was pre-specified, suggest weight at the end of Thesis before moving to Landscape.

## Upgrading

User can upgrade weight anytime by saying "let's go deeper" or similar. AI should also suggest upgrading when detecting:
- Emerging complexity
- Low confidence on critical assumptions
- Surprising research findings
- Stakes higher than initially framed

Weight can only increase (Light → Medium → Complete), never decrease.
