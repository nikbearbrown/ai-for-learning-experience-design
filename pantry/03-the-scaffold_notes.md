# Research Notes: Chapter 03 — The Scaffold: Interaction Designs That Preserve Learning
**Source:** TIKTOC.md chapter entry
**Notes file:** 03-the-scaffold_notes.md
**Corresponding chapter:** chapters/03-the-scaffold.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn the scaffold-producing pattern catalog from the three defining RCTs — guardrailed tutoring (Bastani), human-supervised AI (LearnLM), and AI-supported humans (Tutor CoPilot) — as three architectures of the same principle.

**Learning outcomes:**
1. Name scaffold-producing patterns: Socratic hint sequences, reasoning-before-help, support fading, error-flagging for self-correction, metacognitive prompts, human override, transfer-oriented sequencing.
2. Compare the three RCT architectures — constrain the AI, supervise the AI, support the human — and state when each fits.
3. Explain the Tutor CoPilot equity signature: 9-point gains for the lowest-rated tutors.
4. Redesign one crutch-leaning interaction from Week 2 into a scaffold-leaning one.

---

## A. Conceptual foundations

### Scaffold pattern catalog
A scaffold is not simply help. It is help that preserves or increases the learner cognitive work that matters, then contracts as competence grows. The useful catalog for this course is Socratic hint ladders, reasoning-before-help gates, error-flagging for self-correction, metacognitive prompts, human override, transfer-oriented sequencing, and fading. The common design test is whether the AI makes the next learner action more thoughtful rather than merely faster.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Three architectures of scaffolded AI
The current positive evidence clusters into three architectures: constrain the AI itself, supervise the AI with humans, or use AI to support the human tutor. Bastani GPT Tutor constrained GPT-4 with teacher-authored solutions, common mistakes, and hints rather than answers. LearnLM/Eedi used a human-supervised AI tutor in classroom routines. Tutor CoPilot gave human tutors real-time AI support, improving topic mastery especially for lower-rated tutors.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Equity-positive scaffolding lifts the floor
Tutor CoPilot matters because the benefit was distributional: average improvement was useful, but the largest gains appeared for students assigned to lower-rated tutors. That is an equity-positive signature because the system improved the quality floor of human support instead of only helping already-strong settings.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

### Market visibility is not evidence maturity
Khanmigo, Duolingo Max, MATHia, and similar products are useful as design artifacts, but product visibility is not causal evidence. Students should read product flows as hypotheses: what does the system permit, forbid, require, reveal, log, and hand off? Then ask which endpoint would prove it scaffolds.

**Common misconception:** Students will usually treat this as a tool-capability issue. Reframe it as an interaction, governance, evidence, or evaluation design issue.

**Worked example:** Apply the concept to the Track A statistics tutor and to one Track B project. Require the student to name the protected learner work, the AI boundary, and the evidence that would show whether the design is scaffold or crutch.

**Source(s):** See priority sources below.

---

## B. Domain examples and cases

### Case 1: Bastani GPT Tutor, where the same GPT-4 model produced no unassisted deficit when constrained by teacher-designed hints and problem-specific support
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Case 2: LearnLM/Eedi, where human-supervised AI performed at least as well as human tutoring and showed a reported transfer advantage
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Case 3: Tutor CoPilot, where AI-supported humans improved mastery and lifted the lowest-rated tutors most
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

### Failure case: A chatbot that gives complete worked answers instantly and calls that tutoring
Use this as a chapter vignette or worked example. The writer should state the situation, the AI design decision, the evidence status, the learner risk, and the design response. The case should end with a concrete artifact students can produce.

---

## C. Connections and dependencies

**Prerequisites:** Chapter 02 supplies the immediate prerequisite artifact or evidence distinction.

**Unlocks:** Chapter 04 uses this chapter output as a design constraint.

**Design-lab dependency:** The chapter output should become part of the final AI Integration Specification: an interaction spec, boundary table, guardrail row, transparency rule, agentic permission, or evaluation requirement.

---

## D. Current state of the field

**Settled enough to teach:** The central design distinction is teachable now: AI learning value depends on interaction structure, human oversight, learner-visible boundaries, and unassisted-performance evaluation.

**Contested or conditional:** Most GenAI-in-education evidence remains thin, short-term, and context-specific. Treat positive findings as design clues, not universal product claims. Treat product pages as hypotheses until tested.

**Last-three-years watch:** Re-check AI tutoring RCTs, LearnLM/Eedi follow-up trials, Tutor CoPilot replications, AI feedback comparisons, synthetic-video evidence, affective AI companion regulation, EU AI Act implementation, and agentic AI governance guidance immediately before drafting.

### Priority sources for the chapter author

- Bastani et al. PNAS/PMC, Generative AI without guardrails can harm learning: https://pmc.ncbi.nlm.nih.gov/articles/PMC12232635/
- SSRN record for the same Bastani study: https://doi.org/10.2139/ssrn.4895486
- Tutor CoPilot arXiv: https://arxiv.org/abs/2410.03017
- Tutor CoPilot ERIC PDF: https://files.eric.ed.gov/fulltext/ED661562.pdf
- LearnLM/Eedi arXiv: https://arxiv.org/abs/2512.23633
- Eedi/Google DeepMind release: https://www.eedi.com/news/new-exploratory-research-from-eedi-and-google-deepmind-reveals-human-in-the-loop-ai-tutoring-outperforms-human-only-support

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
