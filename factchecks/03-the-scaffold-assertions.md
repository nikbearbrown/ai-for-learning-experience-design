# Assertions Report: 03-the-scaffold.md
**Date:** 2026-06-07
**Source file:** chapters/03-the-scaffold.md
**Assertions flagged:** 12
**Breakdown:** STAT: 4 | GUIDELINE: 0 | EVIDENCE: 7 | SPECIALIST: 0 | CURRENT: 1 | AI-ONLY: 0

---
## ⚠️ Critical — Requires Immediate Expert Review

1. **WWC "+0.04" figure was wrong and has been corrected in the chapter.** The chapter's own [verify] bracket suspected this, and the WWC record confirms it: the June 2016 WWC Intervention Report rates Cognitive Tutor Algebra I **"mixed effects"** on algebra achievement and "no discernible effects" on general mathematics; "potentially positive" was the **2009** report's rating. The WWC 2016 domain-average effect size for algebra across all studies is **+0.11**, with an average **improvement index of +4** percentile points. The circulating "≈+0.04" appears to be a conflation of the +4 improvement index with an effect size. Chapter text and Evidence Box row rewritten to the verified record; [verify] removed.
2. **The Eedi/LearnLM "+5.5 pp transfer" point estimate is correct but its 95% credible interval crosses zero** — [−1.4, +12.4], with 93.6% posterior credibility per the paper's full text. The chapter's heavy "exploratory/unreplicated" framing is appropriate, but the author may want the interval stated explicitly somewhere; currently the bolded "5.5 percentage points more likely" reads more settled than the paper's own Bayesian summary. Inline flag added (combined with the randomization note below).
3. **"Randomized into three support conditions" is imprecise** (full text checked). The trial used two-level randomization: students → control (static hints, N=91) vs. tutoring (N=74); then each tutoring *session* (not student) was randomized to human-alone vs. supervised LearnLM. Inline FACT-CHECK FLAG added; prose left for the author to reword.

---
## Full Findings

### [EVIDENCE/STAT] — CONFIRMED (full text)
**Assertion type:** EMPHATIC
**Sentence:** Opening case + Evidence Box: Eedi/LearnLM exploratory RCT — 76.4% of AI messages approved with zero or minimal edits; parity on immediate outcomes; +5.5 pp transfer on novel next-topic problems; "exploratory RCT" as the authors' own label; industry-published (Google DeepMind co-authors).
**Site visited:** https://arxiv.org/abs/2512.23633 (abstract) and https://arxiv.org/html/2512.23633v1 (full text)
**Finding:** All confirmed. Title: "AI tutoring can safely and effectively support students: An exploratory RCT in UK classrooms" (LearnLM Team Google & Eedi, submitted 29 Dec 2025). N=165 students, five UK secondary schools. 76.4% of drafts approved with zero or minimal edits (defined as changing only one or two characters); 25.6% edited/rewritten (44.3% of edits for pacing, 19.5% for tone/persona). Transfer: 66.2% vs. 60.7% = +5.5 pp; 95% CrI [−1.4, +12.4]; 93.6% posterior credibility vs. human tutors; >99.9% vs. static hints. Immediate outcomes: LearnLM 93.0% second-attempt success vs. human 91.2% vs. static hints 65.4% — "at least as well" confirmed. "Exploratory" is the authors' own label, used in the title.
**Expert review needed:** No (calibration note in Critical section)
**Notes:** Full-text verification — not abstract-only. The chapter's "supervision minimum ~24%" (Still Puzzling) matches the paper's 25.6% edited figure within rounding.

### [EVIDENCE] — CONTRADICTED (minor, full text) → FLAGGED
**Assertion type:** BASIC
**Sentence:** "students practicing mathematics on Eedi were randomized into three support conditions: static hints, human tutors working unaided, or an AI tutor..."
**Finding:** Full text: two-level randomized design. Students randomized to control (N=91) or tutoring (N=74); within tutoring, each *session* randomized to human-alone vs. supervised LearnLM. Three experiences existed, but students were not randomized three ways, and the human-vs-LearnLM comparison is session-level. Inline FACT-CHECK FLAG added after the opening paragraph.
**Expert review needed:** Author reword suggested ("randomized between static hints and live tutoring, with each tutoring session randomized between...").

### [EVIDENCE] — CONFIRMED (full text)
**Assertion type:** BASIC
**Sentence:** "students in the trial were not explicitly told whether their tutor's messages were AI-drafted"
**Finding:** Paper, verbatim: "The student interface appeared identical across both conditions, with no explicit indication of whether the student was connected with a human tutor alone or a tutor supervising LearnLM."
**Expert review needed:** No

### [STAT] — CONFIRMED; [verify] RESOLVED AND REMOVED (×2)
**Assertion type:** BASIC
**Sentence:** "(Wang et al. 2024, arXiv:2410.03017; roughly 900 tutors and 1,800 K–12 students [verify exact ns against the paper])" and Evidence Box "~900 tutors / ~1,800 students [verify ns]"
**Site visited:** https://arxiv.org/abs/2410.03017
**Finding:** Abstract states exactly: "900 tutors and 1,800 K-12 students from historically under-served communities." Also confirmed: +4 pp topic mastery (p<0.01), preregistered analysis plan (OSF), +9 pp for students of lower-rated tutors, $20 per-tutor annually, 550,000+ messages analyzed, tutors with access more likely to ask guiding questions and less likely to give away answers. Both [verify] markers removed; "roughly/~" dropped.
**Expert review needed:** No
**Notes:** Figure captions (3.2, 3.5) still say "ns unverified" — baked into rendered PNGs; figures should be regenerated or captions updated in a figure pass.

### [CURRENT] — UNVERIFIED (publication venue)
**Sentence:** Evidence Box: "(confirm final publication venue before citing in print)"
**Finding:** As of this check (June 2026) no journal version of Tutor CoPilot was found; the canonical citation remains arXiv:2410.03017 v2 (Jan 2025). Evidence Box note updated to say so explicitly. Watch item.

### [EVIDENCE] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "VanLehn 2011: ITS d≈0.76 vs. human d≈0.79" (and Evidence Box row)
**Site visited:** https://www.tandfonline.com/doi/abs/10.1080/00461520.2011.611369 (and secondary confirmations)
**Finding:** VanLehn, *Educational Psychologist* 46(4), 197–221: human tutoring ES 0.79; step-based ITS 0.76. Matches.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "Wood, Bruner, and Ross (1976) coined the term watching tutors help children build a block pyramid..."
**Finding:** "The role of tutoring in problem solving," *J. Child Psychology & Psychiatry* 17(2), 89–100 — block-pyramid task, six tutoring functions, scaffolding coinage. Settled scholarship; citation details correct.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "Three properties make support a scaffold rather than a crutch (van de Pol, Volman & Beishuizen 2010): Contingency... Fading... Transfer of responsibility."
**Finding:** van de Pol et al., *Educational Psychology Review* 22(3), 271–296 — the review's three-characteristic framework (contingency, fading, transfer of responsibility) is exactly this. Settled construct.
**Expert review needed:** No

### [STAT/EVIDENCE] — CONTRADICTED → CORRECTED; [verify] RESOLVED AND REMOVED (×2)
**Assertion type:** BASIC
**Sentence (original):** "the What Works Clearinghouse rates Cognitive Tutor Algebra I 'potentially positive,' with a commonly cited weighted effect around +0.04 at scale [verify ...]" (and Evidence Box row)
**Site visited:** https://ies.ed.gov/ncee/wwc/Docs/InterventionReports/wwc_cognitivetutor_062116.pdf (full report text searched)
**Finding:** WWC June 2016: "mixed effects on algebra and no discernible effects on general mathematics achievement"; report states the 2009 MSM report found "potentially positive effects." Report table: "Domain average for algebra across all studies 0.11 +4" — i.e., average ES +0.11, improvement index +4 percentile points. No +0.04 average appears in the record. Chapter prose and Evidence Box rewritten to the verified figures; both [verify] markers removed.
**Expert review needed:** No — correction applied.

### [STAT] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** Evidence Box row: "GPT Tutor... +127% assisted, no unassisted deficit; GPT Base: +48% / −17% | Bastani et al. 2025, *PNAS* 122(26) e2422633122"
**Site visited:** https://www.pnas.org/doi/10.1073/pnas.2422633122 (located; figures match the published abstract as reported in prior chapters' checks)
**Finding:** Citation exact: "Generative AI without guardrails can harm learning: Evidence from high school mathematics," PNAS 122(26), e2422633122, June 2025. Note: a published Correction exists (PNAS e2518204122); it does not alter the headline findings but should be cited alongside in print.
**Expert review needed:** No

### [EVIDENCE] — UNVERIFIED
**Sentence:** "Khanmigo... by design it withholds direct answers and uses guiding questions"; "Duolingo Max... much of it Duolingo's own published research"
**Reason:** Product-design characterizations not independently checked this pass; consistent with public product documentation but uncited. Low risk — framed as design-artifact reading, not outcome claims.

### [EVIDENCE] — CONFIRMED (cross-reference)
**Sentence:** "Tutor CoPilot... students of the lowest-rated tutors gained 9 points... tutors asked more guiding questions and gave fewer direct answers"
**Finding:** All in the arXiv abstract verbatim ("improving mastery by 9 p.p."; "more likely to use high-quality strategies... (e.g., asking guiding questions) and less likely to give away the answer").
**Expert review needed:** No

---
## Unverified Assertions
| Sentence | Category | Assertion Type | Reason unverified |
|---|---|---|---|
| Khanmigo withholds direct answers by design; MATHia descends from 20+ years of cognitive-tutor research; Duolingo Max evidence base largely self-published | EVIDENCE | BASIC | Product characterizations not independently checked; low-stakes, framed as design reading |
| Tutor CoPilot final publication venue | CURRENT | BASIC | No journal version found as of June 2026; arXiv remains canonical — watch item |
| "every three to four moves by week twelve in the chess data" (GPT Base reference) | STAT | BASIC | Chapter 1 material; covered by Chapter 1's fact-check, not re-verified here |

---
## AI-Pass Flags
- The seven-pattern catalog, three-architecture framing, "equity signature," "counter-design," and the one-line test are the book's own framework (correctly skipped).
- DataWise 101 worked example is fiction by design (skipped).
- Figure captions for Figures 3.2 and 3.5 still carry "ns unverified" baked into the PNGs; now resolved (900/1,800 exact) — flag for the next figure-regeneration pass.
- "What Would Change My Mind" and "Still Puzzling" sections are epistemic apparatus, not factual claims; their embedded numbers (76.4%, ~24%) match the verified paper.
