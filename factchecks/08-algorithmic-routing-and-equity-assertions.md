# Assertions Report: 08-algorithmic-routing-and-equity.md
**Date:** 2026-06-07 / **Source file:** chapters/08-algorithmic-routing-and-equity.md / **Assertions flagged:** 12 / **Breakdown:** STAT: 4 | EVIDENCE: 5 | SPECIALIST: 1 | CURRENT: 2

## Flags by category

- **CONTRADICTED:** none.
- **OUTDATED:** none.
- **Checked-unresolvable:** none — all flags resolved this pass.
- **Resolved [verify] / [contested] markers (removed or rewritten):** Ofqual ~40% downgrade; DEWS post-2023 aftermath; PLĀ naming (chapter already handled correctly — confirmed it does NOT present PLĀ as established).

## Verdict counts
CONFIRMED: 12 · OUTDATED: 0 · CONTRADICTED: 0 · UNVERIFIED: 0

## [verify] / pantry-flag markers resolved
- **Ofqual "(roughly 40% of assessments downgraded [verify against BBC/Ofqual primary reporting])"** → flag removed; replaced with "roughly 40% … — 39% lowered by one grade, 3% by two." **CONFIRMED.**
- **DEWS aftermath "[verify — see pantry flag]"** → rewritten to the confirmed fact: DPI removed DEWS data from district dashboards on 12 Oct 2023 and put its early-warning systems under evaluation. **CONFIRMED.**
- **PLĀ "[verify — see pantry flag]"** → the chapter already states the "Participatory Learning and Advocacy (PLĀ)" label "could not be verified" and teaches the practice under its verified names (participatory design / co-design). **This is the correct handling and matches the brief's requirement that the book NOT name PLĀ as established.** No change needed; resolution recorded here.

## Full findings

### EVIDENCE — CONFIRMED
**Sentence:** "Baker & Hawn (2022), 'Algorithmic Bias in Education,' *International Journal of Artificial Intelligence in Education* 32 … **no one has to put a protected attribute into the model for the model to discriminate by it.** … Two harm categories … **Allocative harms** … **Representational harms** …"
**Source:** Baker, R. S., & Hawn, A. (2022). *Algorithmic Bias in Education.* IJAIED 32, 1052–1092.
**Finding:** CONFIRMED. Canonical, heavily cited. The five pipeline entry points (training data, proxy/correlated features, measurement/label bias, representation, deployment feedback), the proxy-reconstruction insight, the differential-accuracy documentation, the "unknown bias" territory, and the audit-blocking-via-privacy problem are all accurately characterized. Allocative/representational harm split correctly attributed.

### EVIDENCE — CONFIRMED
**Sentence:** "TNTP's *The Opportunity Myth* (2018) … students stuck in remediation cycles are disproportionately students of color, low-income students, students with disabilities, and English learners … students who instead received grade-appropriate, challenging assignments grew substantially more — on the order of seven additional months of growth. TNTP's follow-up … (*Accelerate, Don't Remediate*, 2021)."
**Source:** TNTP (2018), *The Opportunity Myth* (ERIC ED590204); TNTP (2021), *Accelerate, Don't Remediate.*
**Finding:** CONFIRMED. ~4,000 students across five systems; students who started behind and got grade-appropriate assignments "closed the outcomes gap with their peers by **more than seven months**." Disproportionate impact on students of color, low-income, disabilities, English learners confirmed. (The 66% Black / 53% Latinx figure is the related *college-remediation* statistic, also from TNTP — accurately in the same family.) *Accelerate, Don't Remediate* (2021) confirmed as the follow-up directive.

### EVIDENCE — CONFIRMED
**Sentence:** "Cathy O'Neil named the pattern … (*Weapons of Math Destruction*, 2016)."
**Finding:** CONFIRMED. Standard, correct attribution (opaque models at scale manufacturing their own confirmation).

### SPECIALIST — CONFIRMED
**Sentence:** "*ABROCA.* Absolute Between-ROC Area (Gardner, Brooks & Baker, LAK 2019 …) … Demonstrated across 44 MOOCs and four million learners. … ABROCA is noisy in small samples … (EDM 2025 power test, arXiv 2501.04683)."
**Sources:** Gardner, J., Brooks, C., & Baker, R. (2019). *Evaluating the Fairness of Predictive Student Models Through Slicing Analysis.* LAK '19 (Best Full Paper). Borchers, C. (2025). *Toward Sufficient Statistical Power in Algorithmic Bias Assessment: A Test for ABROCA.* arXiv:2501.04683 (EDM 2025 short paper).
**Finding:** CONFIRMED. ABROCA = area between two subgroups' ROC curves; identical AUC can hide threshold-level disparity; demonstrated on **44 unique MOOCs and over four million learners**. Borchers (2025, EDM) confirms ABROCA is underpowered at typical EDM sample sizes and proposes nonparametric randomization tests — the chapter's "noisy in small samples; can both miss real bias and cry wolf" caution is exactly right.

### EVIDENCE — CONFIRMED
**Sentence:** "Different fairness criteria — calibration, equalized error rates, demographic parity — are mathematically incompatible in general (Kleinberg et al. 2016; Chouldechova 2017)."
**Finding:** CONFIRMED. Kleinberg, Mullainathan & Raghavan (2016, arXiv 1609.05807) and Chouldechova (2017) are the standard fairness-impossibility results; accurately characterized (the audit ends in a named design judgment, not a fairness certificate).

### CURRENT / STAT — CONFIRMED (full-text-level reporting verified)
**Sentence:** "Wisconsin's Dropout Early Warning System … wrong about **74% of the time** … false alarms fell disproportionately on Black and Hispanic students … deliberately calibrated to over-identify risk … the state's own 2021 internal equity analysis had already identified the disparity, and the system kept running."
**Source:** The Markup / Chalkbeat (27 Apr 2023), *False Alarm: How Wisconsin Uses Race and Income to Label Students 'High Risk.'*
**Finding:** CONFIRMED on every element. When DEWS predicted a student would *not* graduate on time it was wrong ~**74%** of the time (per a 2021 validation test; conversely ~97% correct on predicted graduates); racial disparity in false alarms; "cast a wide net" over-identification calibration; DPI's own **2021** internal equity analysis identified the disparity and the system continued. The features included race. All accurate.

### CURRENT — CONFIRMED (aftermath flag resolved)
**Sentence (rewritten):** "DPI removed DEWS data from its district dashboards on 12 October 2023 and put the future of its early-warning systems under evaluation."
**Source:** Wisconsin DPI, WISEdash for Districts / Early Warning Systems pages; Wisconsin Watch / PBS Wisconsin follow-up (Dec 2023 / Jan 2024).
**Finding:** CONFIRMED. After the April 2023 investigation, DPI removed DEWS/CCREWS dashboard data (effective 10/12/2023) and is evaluating the future of the early-warning systems. The chapter's earlier "needs a fresh verification pass" hedge is resolved.

### EVIDENCE — CONFIRMED
**Sentence:** "Claude Steele's stereotype-threat research (*Whistling Vivaldi*, 2010) supplies the mechanism by which a watching adult's lowered expectation becomes part of the treatment …"
**Finding:** CONFIRMED. Steele (2010), *Whistling Vivaldi*; stereotype threat is correctly invoked as the mechanism turning a label into part of the treatment. Standard.

### STAT — CONFIRMED ([verify] removed)
**Sentence:** "the UK's 2020 Ofqual episode … systematically downgrading high achievers at historically lower-performing, disproportionately state schools (roughly 40% of assessments downgraded) … public outcry forced full reversal within days."
**Source:** 2020 UK exam-grading controversy (Ofqual; Wikipedia summary of primary reporting; Bristol CMM analysis).
**Finding:** CONFIRMED. ~**40%** of centre-assessment grades downgraded by the algorithm (≈39% by one grade, ≈3% by two); the algorithm downgraded high achievers at historically lower-performing/state schools while inflating private-school grades; reversal to teacher-assessed grades came **four days** after results (13→17 Aug 2020). Inline [verify] removed; specifics added.

### EVIDENCE — CONFIRMED (handling verified; this is the brief's named PLĀ check)
**Sentence:** "an earlier synthesis used the framework label 'Participatory Learning and Advocacy (PLĀ),' which could not be verified [verify — see pantry flag]; this chapter teaches the practice under its verified names."
**Finding:** CONFIRMED as correctly handled — **and this is the specific check the brief flagged.** Independent search found no education co-design framework named "Participatory Learning and Advocacy / PLĀ" (the established term is "Participatory Learning and *Action*," a community-development methodology, distinct from the learning-analytics co-design literature the chapter cites: LAK '22 participatory/co-design review; *Technology, Knowledge and Learning* 2024). **The chapter does NOT present PLĀ as established** — it explicitly marks the label unverifiable and uses the verified names. No correction needed; the pantry [verify] is resolved (label remains unverifiable; practice is well-evidenced under participatory-design / co-design).

### EVIDENCE — CONFIRMED
**Sentence:** "the EU AI Act's high-risk classification of educational AI is the regulatory floor."
**Finding:** CONFIRMED. The EU AI Act classifies AI used in education/vocational-training access and assessment as high-risk (Annex III). Accurate as a regulatory-floor reference.

## Critical findings
- **No corrections to substance — the equity chapter's evidence base is clean.** Baker & Hawn, TNTP (seven-months growth), ABROCA (44 MOOCs / 4M learners + the 2025 power caution), the fairness-impossibility results, and the DEWS case (74% false alarm; racial disparity; 2021 internal analysis ignored) all confirmed.
- **PLĀ check passed:** the chapter correctly refuses to name PLĀ as an established framework — exactly the behavior the brief required. Resolved, not corrected.
- **Three flags upgraded from [verify] to settled fact:** Ofqual ~40% (with 39%/3% split), DEWS post-2023 (dashboards pulled 10/12/2023, under evaluation), and the PLĀ naming caution.

## References
1. Baker, R. S., & Hawn, A. (2022). *Algorithmic Bias in Education.* IJAIED 32, 1052–1092. — CONFIRMED (canonical; bias entry points; allocative/representational).
2. TNTP (2018). *The Opportunity Myth* (ERIC ED590204); TNTP (2021). *Accelerate, Don't Remediate.* — CONFIRMED (>7 months growth; remediation disparity).
3. Gardner, J., Brooks, C., & Baker, R. (2019). *Evaluating the Fairness of Predictive Student Models Through Slicing Analysis.* LAK '19. — CONFIRMED (ABROCA; 44 MOOCs / 4M learners).
4. Borchers, C. (2025). *Toward Sufficient Statistical Power in Algorithmic Bias Assessment: A Test for ABROCA.* arXiv:2501.04683 (EDM 2025). — CONFIRMED (ABROCA underpowered at small n).
5. Kleinberg, Mullainathan & Raghavan (2016, arXiv 1609.05807); Chouldechova (2017). — CONFIRMED (fairness impossibility).
6. The Markup / Chalkbeat (2023). *False Alarm: How Wisconsin Uses Race and Income to Label Students 'High Risk.'* — CONFIRMED (74% false alarm; racial disparity; 2021 internal analysis). Wisconsin DPI WISEdash/EWS pages — DEWS dashboards removed 10/12/2023, under evaluation.
7. Steele, C. (2010). *Whistling Vivaldi.* — CONFIRMED (stereotype threat).
8. O'Neil, C. (2016). *Weapons of Math Destruction.* — CONFIRMED.
9. 2020 UK Ofqual A-level grading controversy (Ofqual; primary reporting). — CONFIRMED (~40% downgraded; 4-day reversal).
10. Participatory design / co-design in learning analytics (LAK '22 review; *Technology, Knowledge and Learning*, 2024). — CONFIRMED as the verified literature; "PLĀ / Participatory Learning and Advocacy" framework label UNVERIFIABLE and correctly not presented as established by the chapter.
11. EU AI Act, Annex III (education/vocational-training as high-risk). — CONFIRMED (regulatory floor).
