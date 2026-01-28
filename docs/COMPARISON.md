# Comparison: Deliberate Decisions vs Superpowers

An analysis of how Deliberate Decisions compares to its inspiration, Superpowers, and ideas for improvement.

## Architectural Comparison

| Aspect | Superpowers | Deliberate Decisions |
|--------|-------------|----------------------|
| **Domain** | Coding workflows | Decision-making |
| **Core mechanic** | Skills for workflows | Gates for decisions |
| **Enforcement** | Skills suggest discipline | Gates enforce sequence |
| **Output** | Code, commits, PRs | Decision artifacts, business cases |
| **Reversibility** | Code changes reversible | Decisions often irreversible |
| **Time horizon** | Minutes to hours | Hours to days |

## What Superpowers Does Well

### 1. Granular Skills
Superpowers has focused, single-purpose skills:
- `test-driven-development` - One clear workflow
- `systematic-debugging` - One clear workflow
- `git-worktrees` - One clear utility

**Deliberate Decisions equivalent:** Each gate is relatively focused, but the overall process is more monolithic.

### 2. Skill Composition
Superpowers skills call other skills naturally:
- Writing plans → Executing plans → Finishing branches

**Deliberate Decisions equivalent:** Gates flow sequentially but don't compose as flexibly.

### 3. Clear Trigger Conditions
Each Superpowers skill has explicit "when to use" guidance.

**Deliberate Decisions equivalent:** Less granular—the framework is designed for one use case (high-stakes decisions).

### 4. Session Hooks
Superpowers injects context automatically at session start.

**Deliberate Decisions equivalent:** Has the same architecture, but less sophisticated context detection.

## What Deliberate Decisions Adds

### 1. Mandatory Sequencing
Superpowers skills are optional and can be skipped. Deliberate Decisions gates are mandatory and sequential.

**Why this matters:** Decisions benefit from forced rigor. Coding can be more iterative.

### 2. Formal Contrarian Phase
Superpowers has code review. Deliberate Decisions has pre-mortem, steel-manning, and bias audits.

**Why this matters:** Decisions need explicit challenge mechanisms that code review doesn't provide.

### 3. Facts vs Assumptions Separation
Explicit calibration phase that forces honesty about what's known vs believed.

**Why this matters:** Coding has tests to verify assumptions. Decisions don't.

### 4. Pre-committed Exit Criteria
Setting tripwires before emotional investment.

**Why this matters:** Easier to abandon bad code than bad decisions.

### 5. Advocacy Artifacts
Business case and counter-case generation from the decision process.

**Why this matters:** Coding outputs are self-explanatory. Decisions need to be communicated.

## Areas for Improvement

### 1. Speed vs Quality Tradeoff

**Current state:** Full process takes 60-120 minutes. This is appropriate for major decisions but may be overkill for medium-stakes choices.

**Ideas:**
- **Light mode:** 3-gate version (Thesis → Contrarian → Decision) for medium stakes
- **Express mode:** Single-pass with AI-suggested assumptions for time-constrained situations
- **Gate skipping:** Allow skipping Research and Calibration if domain expertise is high

**Tradeoff:** Speed gains risk blind spots. The framework's value is precisely in the thoroughness.

**Recommendation:** Add a "decision weight" classifier at Thesis gate:
- **Heavy** (default): All 7 gates, full rigor
- **Medium:** Skip Research web search, shortened Contrarian
- **Light:** Thesis → Calibration → Decision only

### 2. Resume Experience

**Current state:** `/resume-decision` requires manual state reconstruction.

**Ideas:**
- **Checkpoint files:** Save state after each gate automatically
- **Gate summary:** Quick recap of each completed gate when resuming
- **Partial artifact:** Write decision.md incrementally after each gate

**Recommendation:** Implement incremental artifact writing. Each gate appends its section to decision.md.

### 3. Multi-Stakeholder Support

**Current state:** Framework assumes single decision-maker.

**Ideas:**
- **Stakeholder views:** Generate different summaries for different audiences
- **Conflict mapping:** When stakeholders disagree on alternatives, surface explicitly
- **Async collaboration:** Allow different people to contribute to different gates

**Recommendation:** Low priority—most high-stakes decisions have a single decider even if they consult others.

### 4. Decision Library

**Current state:** Each decision is standalone.

**Ideas:**
- **Pattern recognition:** "This looks similar to decisions X and Y"
- **Outcome tracking:** Feed decision review results back into future decisions
- **Reference class building:** Build internal reference class from past decisions

**Recommendation:** High value but complex. Start with simple outcome tracking.

### 5. Integration with External Data

**Current state:** Web search and document reading.

**Ideas:**
- **Spreadsheet integration:** Pull financials directly
- **CRM integration:** Pull customer data for commercial decisions
- **Calendar integration:** Check availability for timing decisions

**Recommendation:** Depends on user needs. Keep framework data-agnostic, let users provide context.

### 6. Calibration Training

**Current state:** User assigns confidence levels without calibration feedback.

**Ideas:**
- **Track predictions:** Compare predicted probabilities to outcomes
- **Brier scores:** Measure calibration over time
- **Nudges:** "Your 70% confidence predictions are right 50% of the time"

**Recommendation:** Requires long-term data collection. Future enhancement.

## Comparison: Speed Optimizations

| Optimization | Time Saved | Quality Risk | Verdict |
|--------------|------------|--------------|---------|
| Skip web research | 15-30 min | Miss reference class | Allow for domain experts |
| Shorter pre-mortem (3 scenarios) | 5-10 min | Miss edge cases | Acceptable |
| Skip steel-manning | 5-10 min | Miss better alternatives | Not recommended |
| Combined Calibration+Contrarian | 10-15 min | Blur fact/assumption line | Not recommended |
| AI-suggested exit criteria | 5 min | Weaker commitment | Acceptable |
| Template-based alternatives | 10 min | Miss creative options | Not recommended |

**Net safe time savings:** ~20-30 minutes (down to 40-60 minutes) with acceptable quality tradeoffs.

## Summary

Deliberate Decisions successfully adapts Superpowers' skill-based architecture to decision-making. The mandatory gates enforce rigor that optional skills might not.

**Key strengths:**
- Contrarian phase is uniquely valuable
- Facts vs Assumptions separation is rigorous
- Pre-committed exit criteria prevent sunk cost fallacy
- Advocacy artifacts are useful outputs

**Key improvements to consider:**
1. Decision weight classifier for speed/quality tradeoff
2. Incremental artifact writing for better resume
3. Outcome tracking for calibration feedback

**The framework's deliberate slowness is a feature, not a bug.** The decisions it's designed for—hiring, strategy, investment—deserve 90 minutes of structured thinking. Optimizing for speed risks undermining the core value proposition.

For users who want speed, the answer might not be a faster framework, but rather recognizing that their decision doesn't warrant this level of rigor.
