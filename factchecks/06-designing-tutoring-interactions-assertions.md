# Assertions Report: 06-designing-tutoring-interactions.md
**Date:** 2026-06-07 / **Source file:** chapters/06-designing-tutoring-interactions.md / **Assertions flagged:** 11 / **Breakdown:** STAT: 2 | EVIDENCE: 6 | SPECIALIST: 1 | CURRENT: 2

## Flags by category

- **CONTRADICTED:** none.
- **OUTDATED:** none.
- **Checked-unresolvable (inline flag retained):** Tutor CoPilot publication venue (still a preprint / EdWorkingPaper as of this pass).
- **Resolved [verify] markers (removed from chapter):** the two VanLehn "[verify exact figures before print]" flags (body §hint-ladder rationale; Evidence Box row) — figures confirmed.

## Verdict counts
CONFIRMED: 9 · OUTDATED: 0 · CONTRADICTED: 0 · UNVERIFIED: 1 (the chapter's own zero-direct-GenAI-fading-RCT absence claim — searched, still holds; an absence claim cannot be positively confirmed) · CHECKED-UNRESOLVABLE: 1 (Tutor CoPilot venue)

## [verify] markers resolved / removed
- Body line ~18 — "VanLehn's (2011) review found step-based ITS … *d* ≈ 0.76 … human tutors at *d* ≈ 0.79 [verify exact figures before print]." → flag removed. **CONFIRMED verbatim.**
- Evidence Box VanLehn row — "[verify exact figures before print]" → replaced with "(figures confirmed against the published abstract)."

## Full findings

### STAT / EVIDENCE — CONFIRMED (full-text verified)
**Sentence:** "The research team worked with experienced teachers to write **bespoke prompts for each problem session — 57 of them** … Each prompt carried the correct answer and full solution, the common mistakes students make on *that* problem, and instructions to coach rather than tell … **the answer was put into the prompt so that it could be withheld.**"
**Claim checked:** 57 problem-specific prompts; answer + full solution embedded; common-mistakes inventory; incremental-hint / do-not-reveal instruction; answer-in-prompt-to-withhold design.
**Source:** Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). *Generative AI without guardrails can harm learning: Evidence from high school mathematics.* PNAS 122(26), e2422633122. Full text + Appendix A.1 read directly (hamsabastani.github.io/education_llm.pdf).
**Finding:** CONFIRMED against full text. The paper: "For each of the 57 total practice problems, we ask GPT [Base] … 'What is the answer?'"; GPT Tutor's prompt "includes the solution to each problem (to mitigate hallucinations) as well as instructions to avoid giving away the entire solution; furthermore, the prompt includes common student mistakes" with hints. "You should in no circumstances provide the student with the full solution." The answer-present-so-it-can-be-withheld mechanism is exactly the paper's design (solution included to mitigate hallucination; do-not-reveal instruction layered on top).
**Nuance worth one editorial note:** the paper states the prompt *templates* were designed by the researchers, with the problems, solutions, and common-mistakes content *developed by the teachers* and incorporated into the templates. The chapter's "57 bespoke teacher-written prompts" compresses this slightly — the per-problem pedagogical content was teacher-written; the prompt scaffolding was researcher-written. Defensible shorthand; if precision matters in print, "57 problem-specific prompts built on teacher-written solutions and common-mistakes inventories" is the exact form.
**Expert review needed:** No.

### STAT — CONFIRMED
**Sentence:** "VanLehn's (2011) review found step-based ITS produced learning gains of *d* ≈ 0.76, essentially matching human tutors at *d* ≈ 0.79."
**Source:** VanLehn, K. (2011). *The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems.* Educational Psychologist 46(4), 197–221.
**Finding:** CONFIRMED. Human tutoring d ≈ 0.79; step-based ITS d ≈ 0.76; the paper's central "ITS ≈ human tutoring; two-sigma is a myth" result. Inline [verify] flags removed.

### EVIDENCE — CONFIRMED
**Sentence:** "the **self-explanation effect** … learners who generate explanations of worked steps learn more than learners who merely receive them … (Chi et al. 1994)."
**Source:** Chi, M. T. H., de Leeuw, N., Chiu, M.-H., & LaVancher, C. (1994). *Eliciting self-explanations improves understanding.* Cognitive Science 18(3), 439–477.
**Finding:** CONFIRMED. Canonical self-explanation study; prompting self-explanation improved understanding and transfer. Correct attribution.

### EVIDENCE — CONFIRMED
**Sentence:** "Wood, Bruner and Ross (1976) — the paper that coined 'scaffolding' — defined effective tutoring as **contingent**: support … *increasing when the learner struggles and receding as competence grows*."
**Source:** Wood, D., Bruner, J. S., & Ross, G. (1976). *The Role of Tutoring in Problem Solving.* Journal of Child Psychology and Psychiatry 17(2), 89–100.
**Finding:** CONFIRMED. Foundational scaffolding paper; contingency (increase on struggle / recede on competence) is its core construct. Vol/issue/pages correct.

### EVIDENCE — CONFIRMED (well-established, not re-fetched in full)
**Sentences:** Renkl/Atkinson faded worked examples (Atkinson, Renkl & Merrill 2003; Renkl & Atkinson 2003); Kalyuga et al. (2003) expertise reversal.
**Finding:** CONFIRMED as standard, repeatedly cited cognitive-load findings. Faded worked-example superiority over fixed support and the expertise-reversal effect (support helping novices becomes neutral/harmful for experts) are accurately characterized. Pre-LLM; the chapter correctly labels GenAI extrapolation as inference.

### EVIDENCE — CONFIRMED
**Sentences:** "gaming the system … including … **bottom-out hint abuse** … (Baker et al. 2004)"; "help use is systematically miscalibrated … *help design* … is the available lever (Aleven et al. 2003)."
**Finding:** CONFIRMED as accurate characterizations of the canonical gaming-the-system (Baker, Corbett, Koedinger, Wagner 2004) and help-seeking/help-design (Aleven, Stahl, Schworm, Fischer, Wallace 2003, Review of Educational Research 73(3)) literatures. Standard, uncontroversial.

### CURRENT — UNVERIFIED (absence claim — searched, still holds)
**Sentence:** "**there is no direct RCT evidence on fading in generative-AI tutoring. None.** No trial has randomized learners to a fading versus non-fading LLM tutor and measured unassisted outcomes."
**Claim checked:** Whether any RCT has randomized fading vs non-fading in a GenAI tutor with an unassisted endpoint.
**Searches run (June 2026):** "randomized trial fading scaffolding generative AI LLM tutor … unassisted outcomes 2025"; "faded/fading support RCT LLM/AI tutor scaffolding withdrawal randomized 2026."
**Finding:** No such trial surfaced. The nearest 2025–2026 work randomizes *fixed vs personalized practice sequence* (pacing/sequence, not scaffold fading) or studies scaffolding levels quasi-experimentally (MDPI Education Sciences 16(4):651, pre-post, not an RCT on fading-vs-not with an unassisted endpoint). The Bastani 2026 follow-on (LLM-guided RL for mastery learning) is sequencing, not fading. **The chapter's absence claim holds as of this pass.** Per method rule, an absence claim cannot be positively "confirmed" — marked UNVERIFIED-by-nature; no correction needed, but it is the fastest-aging claim in the chapter and should be re-searched each edition.

### EVIDENCE — CONFIRMED (with the chapter's own EXPLORATORY label intact)
**Sentence (Evidence Box):** "LearnLM/Eedi RCT … Human-supervised AI tutoring: +5.5 pp transfer … **EXPLORATORY — authors' own label.**"
**Source:** Eedi × Google DeepMind, *AI tutoring can safely and effectively support students: An exploratory RCT in UK classrooms* (2025; arXiv 2512.23633; goo.gle/LearnLM-Nov25).
**Finding:** CONFIRMED. N = 165, five UK secondary schools; LearnLM-supervised tutoring 66.2% vs human-only 60.7% on novel-problem (transfer) items = +5.5 pp; supervising tutors approved 76.4% of drafted messages with zero/minimal edits. The "exploratory" framing is the authors' own and the chapter's label is accurate.

### CURRENT — CHECKED-UNRESOLVABLE (inline note warranted)
**Sentence (Evidence Box):** "Wang et al. (2024), Tutor CoPilot … Verified (confirm final publication venue before citing in print)."
**Source:** Wang, R. E., Ribeiro, A. T., Robinson, C. D., Loeb, S., & Demszky, D. (2024). *Tutor CoPilot: A Human-AI Approach for Scaling Real-Time Expertise.* arXiv:2410.03017; also Annenberg/Brown EdWorkingPaper 24-1054.
**Finding:** Substantive claims (+4 pp overall mastery; +9 pp for students of lower-rated tutors; ~$20/tutor/yr) CONFIRMED against the abstract. As of June 2026 the work remains a **preprint / EdWorkingPaper — no peer-reviewed journal or conference venue located.** The chapter's "confirm final venue" caution should stand; do not upgrade to a journal citation without a new check.

## Critical findings
- **No corrections to the chapter's load-bearing claims.** The spine result (Bastani 57 prompts; answer-in-prompt-to-withhold) is confirmed against the full text and SI, including the editorial nuance about teacher-written *content* vs researcher-written *prompt templates*.
- **Two `[verify]` markers resolved and removed** (VanLehn 0.76 / 0.79).
- **The zero-fading-RCT absence claim survives a fresh search** — flag it for re-verification each edition, as it is the chapter's most perishable assertion.

## References
1. Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). *Generative AI without guardrails can harm learning: Evidence from high school mathematics.* PNAS 122(26), e2422633122. — CONFIRMED via full text + Appendix A.1 (57 problems; solution + common-mistakes in prompt; do-not-reveal instruction).
2. VanLehn, K. (2011). *The Relative Effectiveness of Human Tutoring, Intelligent Tutoring Systems, and Other Tutoring Systems.* Educational Psychologist 46(4). — CONFIRMED (ITS d ≈ 0.76; human ≈ 0.79).
3. Chi, M. T. H., de Leeuw, N., Chiu, M.-H., & LaVancher, C. (1994). *Eliciting self-explanations improves understanding.* Cognitive Science 18(3), 439–477. — CONFIRMED.
4. Wood, D., Bruner, J. S., & Ross, G. (1976). *The Role of Tutoring in Problem Solving.* Journal of Child Psychology and Psychiatry 17(2), 89–100. — CONFIRMED.
5. Atkinson, Renkl & Merrill (2003); Renkl & Atkinson (2003); Kalyuga, Ayres, Chandler & Sweller (2003). — CONFIRMED (standard cognitive-load literature).
6. Baker, Corbett, Koedinger & Wagner (2004), gaming the system; Aleven, Stahl, Schworm, Fischer & Wallace (2003), help seeking and help design, RER 73(3). — CONFIRMED.
7. Eedi × Google DeepMind (2025). *AI tutoring can safely and effectively support students: An exploratory RCT in UK classrooms.* arXiv:2512.23633. — CONFIRMED (+5.5 pp transfer; exploratory).
8. Wang, R. E., et al. (2024). *Tutor CoPilot.* arXiv:2410.03017 / EdWorkingPaper 24-1054. — CONFIRMED claims; venue still preprint (checked-unresolvable).
