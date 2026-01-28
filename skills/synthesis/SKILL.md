---
name: synthesis
description: Gate 6 - Must-Be-True Conditions, Exit Criteria, risk assessment, recommendation
---

# Gate 6: Synthesis

**Purpose:** Integrate all findings into a clear recommendation with explicit conditions.

**Announce:** "Moving to Synthesis Gate - let's integrate our findings."

## Entry Criteria

- Contrarian Gate completed
- Pre-mortem analysis documented
- Biases flagged and addressed
- Second-order effects identified

## Process

### 1. Must-Be-True Conditions

Identify assumptions that **must** hold for the decision to succeed.

Focus on:
- **Unknown-Unknowables** - Things we cannot verify; we must simply bet on them
- **Low-confidence, high-impact assumptions** - Where being wrong is costly

For each condition:
- State it explicitly ("We assume X will remain true")
- Assess confidence level (high/medium/low)
- Define the consequence if it fails ("If X fails, then Y happens")

Ask:
- "What must be true about the market for this to work?"
- "What must be true about our capabilities?"
- "What must be true about competitors' responses?"
- "What must be true about timing?"

### 2. Exit Criteria (Pre-Commitment)

Define **tripwires** before making the decision - conditions that would trigger reversal or pause.

This counters the **sunk-cost fallacy** by pre-committing to exit conditions when thinking is clear.

For each tripwire:
- Define the specific metric or condition
- Set the threshold that triggers action
- Specify the action (pause, reverse, escalate)
- Set the review timeline

Ask:
- "At what point would we know this isn't working?"
- "What would make us reverse this decision?"
- "What early warning signs should we watch for?"
- "When should we formally review progress?"

### 3. Risk Assessment

Consolidate risks from all previous gates.

For each risk:
- **Likelihood**: High / Medium / Low
- **Impact**: High / Medium / Low
- **Mitigation**: What can we do to reduce it?
- **Source**: Which gate identified this risk?

Calculate overall risk profile:
- Count of high-likelihood + high-impact risks
- Presence of any catastrophic (unrecoverable) risks
- Concentration of risk in single assumptions

Check against risk tolerance:
- Is this level of risk acceptable given the potential reward?
- Does the decision-maker understand the risk profile?

### 4. Recommendation

Formulate the recommendation based on the complete analysis.

Format:
- **RECOMMENDATION**: Proceed / Do Not Proceed / Pause for More Information
- **CONFIDENCE**: High / Medium / Low
- **RATIONALE**: 2-3 sentences summarizing why
- **KEY CONDITIONS**: Top 3 Must-Be-True Conditions
- **PRIMARY RISKS**: Top 3 risks to monitor

The recommendation is the AI's assessment based on the evidence. The human decides.

### 5. Decision Options

Present the decision-maker with clear options:

| Option | Description |
|--------|-------------|
| **Proceed** | Accept the recommendation and move forward |
| **Reject** | Decline based on analysis - document why |
| **Pause** | Need more information before deciding |
| **Revisit** | Return to earlier gate for deeper analysis |

Each option leads to documentation in the Decision Gate.

## Depth by Weight

| Aspect | Light | Medium | Complete |
|--------|-------|--------|----------|
| Must-Be-True | Top 3 conditions | 5-6 conditions | Comprehensive list |
| Exit criteria | 1-2 basic tripwires | 3-4 specific tripwires | Detailed with thresholds + dates |
| Risk assessment | High-level summary | Consolidated risks | Full risk matrix |
| Recommendation | Brief with rationale | Standard format | Comprehensive with confidence reasoning |

**Light:** Focus on top 3 Must-Be-True conditions. 1-2 basic exit criteria. High-level risk summary. Brief recommendation.

**Medium:** 5-6 Must-Be-True conditions. 3-4 specific exit criteria with thresholds. Consolidated risk assessment. Standard recommendation format.

**Complete:** Comprehensive Must-Be-True list. Detailed exit criteria with specific thresholds and review dates. Full risk matrix. Comprehensive recommendation with confidence reasoning.

## Upgrade Detection

At Synthesis, upgrade detection focuses on whether the analysis is sufficient:

**Suggest upgrading if:**

- Cannot formulate clear Must-Be-True conditions (analysis may be incomplete)
- Exit criteria feel arbitrary (need more rigor)
- Risk assessment reveals more high-impact risks than expected
- Recommendation confidence is lower than the decision stakes warrant

**Upgrade prompt:**
```
⚠️ Synthesis is difficult because:
- [Cannot clearly articulate what must be true]
- [Risks are higher than we can confidently assess]
- [My recommendation confidence is [Low] for a decision of this magnitude]

This suggests we may benefit from deeper analysis in earlier gates.

Options:
1. Continue at [Weight] - accept higher uncertainty
2. Return to [Gate] for deeper analysis
3. Upgrade remaining gates to [Higher Weight]

Which approach?
```

## Output

Update decision artifact with synthesis:

```markdown
# Synthesis Gate Summary

## Must-Be-True Conditions

| Condition | Confidence | Consequence if False |
|-----------|------------|---------------------|
| [Condition 1] | [High/Med/Low] | [What happens if wrong] |
| [Condition 2] | [High/Med/Low] | [What happens if wrong] |
| [Condition 3] | [High/Med/Low] | [What happens if wrong] |

## Exit Criteria

| Tripwire | Threshold | Action | Review Date |
|----------|-----------|--------|-------------|
| [Metric 1] | [Value] | [Pause/Reverse/Escalate] | [Date] |
| [Metric 2] | [Value] | [Pause/Reverse/Escalate] | [Date] |

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation | Source Gate |
|------|------------|--------|------------|-------------|
| [Risk 1] | [H/M/L] | [H/M/L] | [Action] | [Gate name] |
| [Risk 2] | [H/M/L] | [H/M/L] | [Action] | [Gate name] |
| [Risk 3] | [H/M/L] | [H/M/L] | [Action] | [Gate name] |

### Overall Risk Profile

- **High-Impact Risks**: [count]
- **Catastrophic Risks**: [Yes/No - describe if yes]
- **Risk Concentration**: [Where risk clusters]
- **Risk Tolerance Match**: [Within/Exceeds tolerance]

## Recommendation

**RECOMMENDATION:** [Proceed / Do Not Proceed / Pause]

**CONFIDENCE:** [High / Medium / Low]

**RATIONALE:** [2-3 sentence summary of why this recommendation]

**KEY CONDITIONS:**
1. [Must-Be-True Condition 1]
2. [Must-Be-True Condition 2]
3. [Must-Be-True Condition 3]

**PRIMARY RISKS:**
1. [Risk 1]
2. [Risk 2]
3. [Risk 3]
```

Save to: `docs/decisions/YYYY-MM-DD-<decision-slug>/decision.md` (update existing)

## Exit Criteria

- Must-Be-True Conditions explicitly stated (depth per weight)
- Exit Criteria defined with specific tripwires (depth per weight)
- Risk assessment consolidated from all gates (depth per weight)
- Clear recommendation formulated
- Decision options presented to human

## Bias Watch

Watch for:
- **Overconfidence** - Recommendation confidence too high given uncertainties
- **Optimism bias** - Downplaying risks in synthesis
- **Narrative fallacy** - Creating a coherent story that glosses over contradictions
- **Loss aversion** - Recommending against good options due to potential losses

## Next Gate

Proceed to: `deliberate-decisions:decision-capture`
