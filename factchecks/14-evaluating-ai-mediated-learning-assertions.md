# Assertions Report: 14-evaluating-ai-mediated-learning.md
**Date:** 2026-06-07
**Source file:** chapters/14-evaluating-ai-mediated-learning.md
**Assertions flagged:** 10
**Breakdown:** STAT: 4 | GUIDELINE: 0 | APPROVAL: 0 | EVIDENCE: 5 | SPECIALIST: 0 | CURRENT: 1

---
## ⚠️ Critical — Requires Immediate Expert Review
None found.

---
## Full Findings

### [EVIDENCE/STAT] — CONFIRMED
**Sentence:** "GPT Base: +48% assisted, −17% unassisted. GPT Tutor: +127% assisted, no deficit … (Bastani et al. 2025, PNAS; verified)."
**Claim checked:** The four endpoints (+48/−17/+127/≈0) and PNAS attribution.
**Sites visited:** pnas.org/doi/10.1073/pnas.2422633122; pubmed 40560616; psypost.org.
**Finding:** Confirmed. Bastani et al. (2025), PNAS 122(26) e2422633122: GPT Base +48% assisted practice, −17% unassisted exam (stat. sig. below control); GPT Tutor +127% assisted, no significant unassisted deficit (also no positive effect). Bonus reliance signature confirmed: GPT Base gave correct answers only 51% of the time (42% logical, 8% arithmetic errors), which students copied — supporting the "learners were not checking" claim. The chapter's evaluation-design reading is faithful.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED (was [verify — arXiv 2512.23633])
**Sentence:** "The LearnLM/Eedi endpoint: students supported by human-supervised AI were 5.5 percentage points more likely to solve a novel problem in the next topic than students tutored by humans alone (exploratory RCT)."
**Claim checked:** 5.5pp transfer figure; human-supervised AI vs human-only; exploratory RCT; arXiv id.
**Sites visited:** arxiv.org/html/2512.23633v1; learning-engineering-virtual-institute.org; eedi.com news.
**Finding:** Confirmed. LearnLM/Eedi/Google DeepMind exploratory RCT, 165 students across five UK secondary schools: LearnLM-supported students 5.5pp more likely to solve novel next-topic problems (66.2% vs 60.7% human-only). "Exploratory" in the paper's own title — matches the chapter's later point about the team labeling evidentiary class honestly. CORRECTION APPLIED: 66.2%/60.7% and sample added; [verify] removed.
**Expert review needed:** No
**Suggested reference:** arXiv:2512.23633 (LearnLM/Eedi, 2025).

### [CURRENT/STAT] — CONFIRMED (was [verify status])
**Sentence:** "A 2026 preprint corroborates the dissociation … unassisted deficits and rising give-up rates appearing after roughly ten minutes of AI interaction, N=1,222 (arXiv 2604.04721, not yet peer-reviewed)."
**Claim checked:** N=1,222, ~10-min effect, give-up rates, preprint status, arXiv id.
**Sites visited:** arxiv.org/abs/2604.04721; arxiv.org/html/2604.04721.
**Finding:** Confirmed. Liu, Christian, Dumbalska, Bakker & Dubey (2026), "AI Assistance Reduces Persistence and Hurts Independent Performance," N=1,222; AI improves short-term performance but people perform worse without AI and give up more, effects emerging after ~10 min; marked "Preprint. Under review." CORRECTION APPLIED: authors + title added; preprint status retained and made explicit; [verify] removed. Chapter correctly treats it as corroboration, not spine.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Sentence:** "Baker & Hawn (2022) — the canonical algorithmic-bias-in-education review … evaluate on subgroup performance, not population averages."
**Claim checked:** Baker & Hawn review, venue, subgroup/understudied-groups mandate.
**Sites visited:** link.springer.com/article/10.1007/s40593-021-00285-9; eric.ed.gov EJ1353563.
**Finding:** Confirmed. Baker & Hawn (2022), *International Journal of AI in Education* 32, 1052–1092. Reviews known-impacted groups and which groups the field fails to study — the basis for the chapter's subgroup-and-"cannot-see" mandate.
**Expert review needed:** No

### [EVIDENCE/STAT] — CONFIRMED
**Sentence:** "Tutor CoPilot's signature finding — 4-point average gains, 9-point gains concentrated in the lowest-rated tutors."
**Claim checked:** +4pp overall, +9pp for lowest-rated tutors.
**Sites visited:** nssa.stanford.edu; arxiv.org/pdf/2410.03017; k12dive.com.
**Finding:** Confirmed. Tutor CoPilot (Wang, R.E. et al., 2024, arXiv:2410.03017): students whose tutors used the tool +4pp on session assessments overall; students of lower-rated tutors up to +9pp. 900 tutors / ~1,800 students; partner FEV Tutor. Equity-positive (floor-lifting). NOTE venue still a preprint — consistent with the standing "confirm final publication venue" note carried in Ch3/Ch6 factchecks.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Sentence:** "Klarin et al. (2024) found adolescents with executive-function challenges perceive AI as more useful and over-rely more."
**Claim checked:** Same Klarin finding as Ch13.
**Site visited:** frontiersin.org/.../frai.2024.1415782 (full text read).
**Finding:** Confirmed (see Ch13 report). Used here to motivate the "scissors pattern" — appropriate inference.
**Expert review needed:** No

### [EVIDENCE/STAT] — CONFIRMED (was [verify citation])
**Sentence:** "help-seeking analytics and the ITS 'gaming the system' detection literature (Baker et al., 2004)."
**Claim checked:** Baker 2004 gaming-the-system citation.
**Sites visited:** pact.cs.cmu.edu/pubs/Baker...Wagner_2004.pdf; scirp.org.
**Finding:** Confirmed. Baker, Corbett, Koedinger & Wagner (2004), "Off-Task Behavior in the Cognitive Tutor Classroom: When Students Game the System," ACM CHI 2004, 383–390. CORRECTION APPLIED: full author list + venue added; [verify] removed.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED (Kraft vs Hattie dispute fairly represented)
**Sentence:** "Hattie's Visible Learning tradition uses d = 0.40 as the 'hinge point' … Kraft (2020) counters … 0.05 SD is small but meaningful, 0.20 SD is large."
**Claim checked:** Hattie hinge d=0.40; Kraft 2020 benchmarks; that BOTH positions are represented fairly.
**Sites visited:** journals.sagepub.com/doi/10.3102/0013189X20912798 (Kraft 2020); ascd.org; shankerinstitute.org.
**Finding:** Confirmed and balanced. Kraft (2020), *Educational Researcher* 49(4): proposes 0.05/0.20 schema for education RCTs and explicitly disputes Hattie's 0.40 hinge as setting unrealistic expectations. Chapter presents both rulers and the implementation-gap point, instructing stakeholders to name which ruler is in use — meets the steering requirement that both positions appear fairly.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED (was [verify page range])
**Sentence:** "Holton's classic critique (1996) argued the four levels are a taxonomy with empirically unsupported causal links, not a model."
**Claim checked:** Holton 1996 critique + page range.
**Sites visited:** onlinelibrary.wiley.com/doi/abs/10.1002/hrdq.3920070103; scirp.org; eric.ed.gov EJ521126.
**Finding:** Confirmed. Holton, E. F. III (1996), "The flawed four-level evaluation model," *Human Resource Development Quarterly* 7(1), 5–21: the four levels are a taxonomy of outcomes, not a validated causal model. CORRECTION APPLIED: volume/issue/pages (7(1):5–21) added; [verify] removed.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED (was [verify tier details])
**Sentence:** "Thalheimer's LTEM (Learning-Transfer Evaluation Model, 2018 — an eight-tier practitioner framework, not peer-reviewed research)."
**Claim checked:** LTEM, 8 tiers, 2018, non-peer-reviewed.
**Sites visited:** worklearning.com/2018/02/14/...ltem; leonardo.institute LTEM PDF.
**Finding:** Confirmed. Thalheimer (2018), LTEM, eight-tier practitioner framework built to devalue attendance/reaction and force decision-competence and transfer measurement; practitioner (not peer-reviewed) work. CORRECTION APPLIED: [verify] removed.
**Expert review needed:** No

---
## Notes on coinage and self-labeled limits (no verification needed)
- "Reliance-trajectory metrics" — the chapter explicitly states this is "this book's coinage" and that the curves are theoretical predictions, not telemetry (no study yet ties trajectory to withdrawal outcome). Steering requirement satisfied — flagged as the book's own.
- Scissors-pattern magnitudes ("Q1: −22pp") are labeled by the chapter as illustrative hypotheticals, not measured data. Correct.
- "Zero multi-year studies of AI-mediated learning" — accurate characterization of the current literature frontier (reviews call for studies "over several months").

---
## Unverified Assertions
| Sentence | Category | Reason unverified |
| (none) | | |

---
## [verify] markers resolved/removed
- LearnLM/Eedi 5.5pp (arXiv 2512.23633) → resolved (66.2/60.7; 165 students).
- arXiv 2604.04721 N=1,222 status → resolved (authors/title added; preprint status explicit).
- Baker et al. 2004 citation → resolved (CHI 2004, full authors).
- Holton 1996 page range → resolved (7(1):5–21).
- LTEM tier details → resolved (8 tiers, 2018).

## References added
Yes — 12-entry "## References" section appended (Bastani, Liu/Christian preprint, LearnLM/Eedi, Tutor CoPilot, Baker & Hawn, Baker et al. 2004, Klarin, Kraft, Hattie, Holton, Kirkpatrick, Thalheimer).
