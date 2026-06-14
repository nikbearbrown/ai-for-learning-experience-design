# Assertions Report: 07-adaptive-systems.md
**Date:** 2026-06-07 / **Source file:** chapters/07-adaptive-systems.md / **Assertions flagged:** 12 / **Breakdown:** STAT: 5 | EVIDENCE: 5 | SPECIALIST: 1 | CURRENT: 1

## Flags by category

- **CONTRADICTED:** 1 — Cao et al. (2025) "could not be independently confirmed in the abstract" (the 30–50% / 15–25% figures ARE in the published abstract verbatim). Chapter sentence corrected.
- **OUTDATED:** none.
- **Checked-unresolvable (inline flag retained):** the WWC Cognitive Tutor "+0.04" weighted figure — not cleanly reproduced from the current (June 2016) WWC report. Inline note expanded.
- **Resolved [verify] markers (removed):** VanLehn "[verify exact figure]" (body §three-numbers).

## Verdict counts
CONFIRMED: 9 · OUTDATED: 0 · CONTRADICTED: 1 (Cao "could-not-confirm" hedge — corrected) · UNVERIFIED: 1 (WWC +0.04 exact pooled figure) · CONTESTED-AS-LABELED: 1 (Cao figures — review-level, low-prestige venue; chapter retains caution)

## [verify] / [contested] markers resolved
- Cao et al. figures (body §three-numbers) — chapter said figures "could not be independently confirmed in the abstract." **CONTRADICTED:** the published abstract states verbatim "adaptive systems can reduce learning time by 30–50% while improving learning outcomes by 15–25% compared to traditional instruction methods." Sentence rewritten to the accurate caution: the review asserts the figures as a synthesis conclusion **without tracing them to primary studies or a pooled effect**, and the venue is low-prestige. `[contested]` retained but re-grounded.
- VanLehn d ≈ 0.76 "[verify exact figure]" — removed. CONFIRMED.
- WWC +0.04 "[verify]" — retained and expanded (see below); genuinely unresolved.

## Full findings

### EVIDENCE — CONFIRMED
**Sentence:** "Item Response Theory places learners and items on the same scale … θ … *b* … Richer variants add a discrimination parameter … and a guessing floor … (Lord 1980)."
**Finding:** CONFIRMED. 1PL/Rasch (difficulty only), 2PL (+ discrimination), 3PL (+ guessing) accurately described; Lord (1980), *Applications of Item Response Theory to Practical Testing Problems*, is the standard foundational cite. The "thermometer, not a diagnosis" framing is the author's, correctly scoped to what θ (a scalar) cannot represent.

### EVIDENCE — CONFIRMED (citation-year nuance)
**Sentence:** "Bayesian Knowledge Tracing models each *skill* … the machinery inside Carnegie Learning's Cognitive Tutor and MATHia for three decades (Corbett & Anderson 1995). … P(L₀), P(T), P(G), P(S) … threshold — 0.95 …"
**Source:** Corbett, A. T., & Anderson, J. R. *Knowledge Tracing: Modeling the Acquisition of Procedural Knowledge.* User Modeling and User-Adapted Interaction 4, 253–278.
**Finding:** CONFIRMED. Four-parameter HMM, 0.95 mastery threshold in the Cognitive Tutor tradition, no-forgetting / binary-skill / KC-map-dependence / identifiability limitations all accurate. **Year nuance:** the article is commonly cited as both **1994** and 1995 (Springer DOI 10.1007/BF01099821, vol 4). 1994 is the original publication year; "1995" is widely used and not an error, but if the book standardizes, 1994 is the primary. Not flagged inline.

### STAT — CONFIRMED
**Sentence:** "Deep Knowledge Tracing replaced BKT's state machine with a recurrent neural network and reported dramatically better prediction (~0.86 vs. ~0.67 AUC on a standard benchmark) (Piech et al. 2015). But re-evaluation found duplicate records inflating the benchmark gap (Xiong et al. 2016), and classical models extended with forgetting, item difficulty, and individual ability close most of the remaining distance (Khajah, Lindsey & Mozer 2016)."
**Finding:** CONFIRMED. Piech et al. (2015), *Deep Knowledge Tracing* (NeurIPS), report ~0.86 AUC (DKT) vs ~0.67 (BKT) on ASSISTments. Xiong et al. (2016, EDM) documented duplicate-record / data-quality problems; Khajah, Lindsey & Mozer (2016, "How Deep Is Knowledge Tracing?", EDM) showed enhanced classical models close most of the gap. The opacity/interpretability point (Scruggs, Baker & McLaren 2020) is accurately characterized.

### EVIDENCE — CONFIRMED (existence + directional)
**Sentence:** "the LLM *is* the learner model. Recent empirical work finds LLMs unreliable … unstable mastery estimates, and sometimes update in the wrong direction … (arXiv 2412.09248; 2503.11733; 2604.08263)."
**Finding:** CONFIRMED at existence and consistent-with-literature level. 2412.09248 (systematic review, KT × LLMs) and 2503.11733 (*LLM Agents for Education*) verified to exist; 2604.08263 (*Neural-Symbolic Knowledge Tracing … for Responsible Learner Modelling*) verified to exist and its framing (inject educational structure because pure-LLM/deep KT is insufficient for responsible learner modeling) supports the chapter's "generator-yes / learner-model-no" rule. The "directionally wrong / unstable" characterization is consistent with this body of work. Decision rule ("vary what the learner sees; be skeptical of LLMs deciding what the learner knows") is sound.

### STAT — CONTRADICTED → corrected
**Sentence (original):** "figures of 30–50% learning-time reduction and 15–25% outcome improvement circulate from it (Cao, Nhu Tam Mai & Guo …). Treat those specific figures with explicit caution: they could not be independently confirmed in the abstract during this book's verification pass …"
**Source:** Cao, W., Nhu Tam Mai, & Guo, W. (2025). *Personalized Learning and Adaptive Systems: AI-Driven Educational Innovation and Student Outcome Enhancement.* International Journal of Education and Humanities 20(2), 173–182. DOI 10.54097/tc5k6825. Abstract read directly.
**Finding:** The "could not be confirmed in the abstract" claim is **CONTRADICTED** — the abstract states verbatim: "adaptive systems can reduce learning time by 30–50% while improving learning outcomes by 15–25% compared to traditional instruction methods." The figures are present and attributable to this review. **However**, the genuine caution is different and still warranted: the review presents these as a synthesis conclusion with **no traceable derivation** to specific primary studies or a pooled effect size, its reference list is review-heavy, and the venue (drpress/IJEH) is low-prestige. **Chapter corrected** to state the figures plainly, then caution that they are an untraced review-level claim from a low-prestige venue. `[contested]` retained, re-grounded.

### STAT — CONFIRMED
**Sentence:** "VanLehn (2011) places ITS effectiveness near human tutoring (d ≈ 0.76), and Kulik & Fletcher (2016) report ≈ 0.66."
**Finding:** CONFIRMED. VanLehn d ≈ 0.76 (vs human 0.79); Kulik & Fletcher (2016, *Effectiveness of Intelligent Tutoring Systems: A Meta-Analytic Review*, Review of Educational Research 86(1)) report a median effect of **0.66 SD** across 50 evaluations (50th→75th percentile). Inline "[verify exact figure]" removed.

### STAT — UNVERIFIED (checked-unresolvable; inline note expanded)
**Sentence:** "The What Works Clearinghouse evidence for Cognitive Tutor Algebra I … nets out to a weighted effect of roughly **+0.04** across qualifying studies."
**Source:** WWC Cognitive Tutor Intervention Report (June 2016, ies.ed.gov/ncee/wwc); Pane, Griffin, McCaffrey & Karam (2014), *Effectiveness of Cognitive Tutor Algebra I at Scale*, EEPA.
**Finding:** **The "+0.04" figure is not cleanly reproduced from the current WWC report.** The June 2016 report's domain averages across all qualifying studies are: **algebra ≈ 0.11** (improvement index +4), **general mathematics achievement ≈ 0.05** (+2), **geometry ≈ –0.19**. There is a single study-level 0.04 (Campuzano et al.) but no headline +0.04 pooled effect. The Pane et al. RAND **year-two ≈ +0.20 (0.21) is CONFIRMED**, year-one null is CONFIRMED. **Recommendation:** the chapter should recompute or re-source the "+0.04" before print (the "+4 improvement index" on the algebra domain may be the origin of a units confusion). Inline `[verify]` expanded in the body to record exactly this. The chapter's *argument* (deepest-pedigree system → most modest honest estimate; measurement distance) is unaffected by the precise number.

### SPECIALIST — CONFIRMED
**Sentence:** "Most products marketed as 'personalized learning' are actually individualized pacing engines … Genuine personalization of support changes the *type of support* … (Brookings; National Student Support Accelerator)."
**Finding:** CONFIRMED as accurate characterization of the Brookings ("What the research shows about generative AI in tutoring") and NSSA individualization-vs-personalization framing. Normative/analytic distinction, correctly sourced.

### CURRENT — CONFIRMED
**Sentence:** "Knewton's founder described the product … as 'a robot tutor in the sky that can semi-read your mind …' (NPR, 2015). The company raised over $180 million … Michael Feldstein publicly called it 'selling snake oil.' In May 2019, Wiley acquired Knewton's assets for under $17 million (Inside Higher Ed, 2019)."
**Finding:** CONFIRMED on every element. Ferreira's "robot tutor in the sky … semi-read your mind … down to the percentile" (NPR, *Meet The Mind-Reading Robo Tutor In The Sky*, Oct 2015); Feldstein "selling snake oil" (e-Literate, quoted by NPR); **$182M raised, ~$17M Wiley sale, May 2019** (Inside Higher Ed). Quotes and figures accurate.

## Critical findings
- **One CONTRADICTED claim, now corrected:** the Cao et al. "could-not-confirm-in-abstract" hedge was factually wrong — the 30–50% / 15–25% figures are in the published abstract. The chapter now states them plainly with the *correct* caution (untraced review-level claim, low-prestige venue).
- **WWC "+0.04" is the one number that does not reconcile** with the current report (which shows ≈ 0.11 algebra / 0.05 general-math domain averages). Flagged inline for recompute/re-source before print; the chapter's argument does not depend on it. Pane year-two +0.20 confirmed.
- Corbett & Anderson is more precisely a **1994** paper (also cited as 1995); cosmetic only.

## References
1. Lord, F. M. (1980). *Applications of Item Response Theory to Practical Testing Problems.* — CONFIRMED (IRT 1PL/2PL/3PL).
2. Corbett, A. T., & Anderson, J. R. (1994). *Knowledge Tracing: Modeling the Acquisition of Procedural Knowledge.* User Modeling and User-Adapted Interaction 4, 253–278. — CONFIRMED (BKT; year 1994 primary).
3. Piech, C., et al. (2015). *Deep Knowledge Tracing.* NeurIPS. — CONFIRMED (~0.86 vs ~0.67 AUC).
4. Xiong, X., et al. (2016), EDM — data-quality re-evaluation; Khajah, Lindsey & Mozer (2016), *How Deep Is Knowledge Tracing?*, EDM. — CONFIRMED (corrective companions).
5. Cao, W., Nhu Tam Mai, & Guo, W. (2025). *Personalized Learning and Adaptive Systems.* IJEH 20(2), 173–182. — figures CONFIRMED present in abstract; chapter's "could-not-confirm" hedge CONTRADICTED & corrected; review-level claim from low-prestige venue (contested).
6. VanLehn, K. (2011), Educational Psychologist 46(4) — d ≈ 0.76; Kulik, J. A., & Fletcher, J. D. (2016), *Effectiveness of Intelligent Tutoring Systems*, RER 86(1) — 0.66 median. — CONFIRMED.
7. WWC *Cognitive Tutor* Intervention Report (June 2016); Pane et al. (2014), *Effectiveness of Cognitive Tutor Algebra I at Scale.* — Pane year-two ≈ +0.20 CONFIRMED; "+0.04" pooled figure UNVERIFIED (report shows ≈ 0.11 algebra / 0.05 general-math domain averages).
8. NPR (2015), *Meet The Mind-Reading Robo Tutor In The Sky*; Inside Higher Ed (2019), Wiley–Knewton; e-Literate (Feldstein). — CONFIRMED ($182M raised; ~$17M sale; quotes).
9. arXiv 2412.09248 (KT × LLM systematic review); 2503.11733 (*LLM Agents for Education*); 2604.08263 (*Neural-Symbolic Knowledge Tracing*). — CONFIRMED existence; consistent with the LLM-as-learner-model-instability claim.
