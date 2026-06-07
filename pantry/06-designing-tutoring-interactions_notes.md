# Research Notes: Chapter 06 — Designing Tutoring Interactions: Hints, Reasoning Requirements, and Fading
**Source:** TIKTOC.md chapter entry
**Notes file:** 06-designing-tutoring-interactions_notes.md
**Corresponding chapter:** chapters/06-designing-tutoring-interactions.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students convert the Week 3 pattern catalog into a working tutoring interaction specification — hint ladders, reasoning gates, fading schedules, and escalation rules.

**Learning outcomes:**
1. Specify a Socratic hint ladder for a real learning task.
2. Design a reasoning gate that resists copy-paste compliance.
3. Produce a fading schedule whose support contracts as competence builds.
4. Write a tutoring interaction spec for the student's own project, including human escalation.

---

## A. Conceptual foundations

### Hint ladders as designed restraint
A hint ladder is a sequence of increasingly specific supports that avoids giving the final answer. Good ladders move from orientation, to relevant principle, to partial worked step, to targeted correction. The answer that is never given is as important as the hints that are given.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Reasoning gates before help advances
A reasoning gate requires the learner to externalize a prediction, explanation, attempted step, or misconception before receiving the next level of help. Weak gates invite copy-paste compliance; strong gates require content-specific reasoning the AI can inspect and respond to.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Fading as designed withdrawal
Fading converts scaffolding into learning by reducing support as competence indicators improve. Because fading is under-studied in current GenAI tutoring, the chapter should label it as evidence-informed extrapolation from scaffolding, ITS, and cognitive apprenticeship rather than settled GenAI canon.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Escalation rules protect learning and dignity
A tutor spec needs rules for when the AI stops: repeated failure, affective distress, safety/privacy issue, suspected misconception outside the AI boundary, or high-stakes assessment context. Human escalation is not an exception; it is part of the design.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

---

## B. Domain examples and cases

### Case 1: GPT Base vs GPT Tutor read as a system-prompt and conversation-structure difference rather than a model difference
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Case 2: A statistics tutor that asks for the learner explanation before revealing the next hint
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Case 3: A fading schedule where hint levels contract after two successful unassisted attempts
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Failure case: A tutor that keeps answering after the learner signals confusion and should have escalated
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

---

## C. Connections and dependencies

**Prerequisites:** Chapter 05 supplies the immediate prerequisite artifact or evidence distinction.

**Unlocks:** Chapter 07 uses this chapter output as a design constraint.

**Design-lab dependency:** The chapter output should become part of the final AI Integration Specification: an interaction spec, boundary table, guardrail row, transparency rule, agentic permission, or evaluation requirement.

---

## D. Current state of the field

**Settled enough to teach:** The central design distinction is teachable now: AI learning value depends on interaction structure, human oversight, learner-visible boundaries, and unassisted-performance evaluation.

**Contested or conditional:** Most GenAI-in-education evidence remains thin, short-term, and context-specific. Treat positive findings as design clues, not universal product claims. Treat product pages as hypotheses until tested.

**Last-three-years watch:** Re-check AI tutoring RCTs, LearnLM/Eedi follow-up trials, Tutor CoPilot replications, AI feedback comparisons, synthetic-video evidence, affective AI companion regulation, EU AI Act implementation, and agentic AI governance guidance immediately before drafting.

### Priority sources for the chapter author

- Bastani et al. PNAS/PMC, GPT Tutor prompt details and teacher-designed hints: https://pmc.ncbi.nlm.nih.gov/articles/PMC12232635/
- Tutor CoPilot, real-time AI support for tutors: https://arxiv.org/abs/2410.03017
- LearnLM/Eedi exploratory RCT: https://arxiv.org/abs/2512.23633
- Bayesian Knowledge Tracing with pyBKT, useful for fading signals: https://www.mdpi.com/2624-8611/5/3/50
- BKT explainer: https://www.cs.williams.edu/~iris/res/bkt/

---

## E. Teaching considerations

**Where students get stuck:** They will often ask, "Can the AI do this?" Train the replacement question: "What learner work does the AI preserve, remove, reveal, or route?"

**Exercise ideas:**
- Convert a crutch-leaning interaction into a scaffold-leaning interaction and annotate each design move.
- Create a boundary table: AI may do / AI may not do / human validates / learner sees / evidence required.
- Write a one-page Reliance Disclosure for the Track A statistics tutor.
- Track B: apply the chapter method to the student's own AI integration.

**LLM guardrail for assignments:** AI may help brainstorm alternative designs, but the student must provide the evidence label, the final judgment, and the withdrawal-test measurement. AI cannot substitute for human review, learner contact, or evidence classification.

---

## Cross-references to pantry/library material

- `ai_lxd_definitive_synthesis.md`
- `_lib_Co-Intelligence__Living_and_Working_with_AI.md`
- `_lib_AI_A_Guide_for_Thinking_Humans.md`
- `_lib_The_Alignment_Problem.md`
- `_lib_Calling_Bullshit.md`
- `_lib_Science_Fictions.md`
- `_lib_Weapons_of_Math_Destruction.md`
- `_lib_Teaching_for_Deeper_Learning.md`
- `_lib_EdTech.md`
- `experience_design_edtech_merged_synthesis.md`

---

## Open research TODOs before drafting

- Verify exact effect sizes, sample sizes, and publication status from the primary paper.
- Add one Track A statistics-tutor worked artifact.
- Add one counterexample where the recommended design pattern would be insufficient or inappropriate.
- Refresh all 2025-2026 AI product, policy, and agentic-governance claims at drafting time.
