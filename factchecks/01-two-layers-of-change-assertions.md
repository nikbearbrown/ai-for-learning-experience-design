# Assertions Report: 01-two-layers-of-change.md
**Date:** 2026-06-07 / **Source file:** chapters/01-two-layers-of-change.md / **Assertions flagged:** 11 / **Breakdown:** STAT: 5 | GUIDELINE: 1 | APPROVAL: 0 | EVIDENCE: 6 | SPECIALIST: 1 | CURRENT: 1

## ⚠️ Critical — Requires Immediate Expert Review
None found. No CONTRADICTED-load-bearing or OUTDATED+COMBINATION assertions. One minor CONTRADICTED on a non-load-bearing aside (EVER "predates the GenAI wave"), resolved by annotation.

## Full Findings

### EVIDENCE/STAT — CONFIRMED
- **Assertion type:** BASIC
- **Sentence:** "A research team randomized those sessions into three conditions (Bastani et al. 2025, *PNAS* 122(26))." plus the +48% / +127% / −17% table.
- **Claim checked:** Three-condition RCT (GPT Base / GPT Tutor / control) in a Turkish high school, ~1,000 students grades 9–11, 2023–24; practice gains +48% (Base) and +127% (Tutor); unassisted exam −17% (Base) vs control; Tutor no significant deficit.
- **Site visited:** https://www.pnas.org/doi/10.1073/pnas.2422633122 ; https://pubmed.ncbi.nlm.nih.gov/40560616/
- **Finding:** Confirmed against the PNAS abstract and corroborating coverage. Title is "Generative AI without guardrails can harm learning: Evidence from high school mathematics." +48% / +127% practice improvement and −17% unassisted figures match exactly. (Abstract + publisher page consulted; effect sizes are reported in the abstract itself.)
- **Expert review needed:** No.
- **Suggested reference:** Bastani et al. 2025, PNAS 122(26), e2422633122.
- **Notes:** Citation volume/issue/DOI all correct.

### EVIDENCE/STAT — CONFIRMED ([verify]-adjacent: correction claim)
- **Assertion type:** BASIC
- **Sentence:** "*PNAS* issued a formal correction in August 2025. The correction fixed a production error in one author's affiliation. No findings, data, or analyses changed (Bastani et al. 2025, correction 10.1073/pnas.2518204122)."
- **Claim checked:** Correction is affiliation-only; not a retraction.
- **Site visited:** https://www.pnas.org/doi/10.1073/pnas.2518204122 ; https://pubmed.ncbi.nlm.nih.gov/40833419/
- **Finding:** Confirmed. Correction published August 20, 2025; fixes Osbert Bastani's affiliation (Dept. of Computer and Information Science, UPenn). No findings/data/analyses altered. DOI matches.
- **Expert review needed:** No.
- **Suggested reference:** Correction for Bastani et al., PNAS, 10.1073/pnas.2518204122.

### GUIDELINE/EVIDENCE — CONTRADICTED (minor, non-load-bearing) + [verify] RESOLVED
- **Assertion type:** BASIC
- **Sentence:** "A principled rubric for separating engagement evidence from learning evidence already exists and predates the GenAI wave: the EdTech Evidence Evaluation Routine (EVER) ... [verify — confirm exact author list and Hirsh-Pasek's role on the EVER paper; the 2015 four-pillars paper is the safe anchor]."
- **Claim checked:** (a) EVER author list; (b) Hirsh-Pasek's role; (c) "predates the GenAI wave."
- **Site visited:** https://www.nature.com/articles/s41539-023-00186-7 (full text consulted via fetched HTML)
- **Finding:** EVER = Kucirkova, N., Brod, G., & Gaab, N. (2023), *npj Science of Learning* 8:35, published 2023-09-06. Hirsh-Pasek is NOT an author; her 2015 four-pillars paper (Putting education in "educational" apps, *Psych Sci Public Interest* 16:3–34) is cited by EVER as a foundational reference (ref 2). The "predates the GenAI wave" clause is incorrect — EVER published Sept 2023, ~10 months after ChatGPT's Nov 2022 release; it post-dates the wave's onset. The four pillars (active, engaged/meaningful, socially interactive, iterative) are correctly characterized. [verify] flag RESOLVED and removed from chapter text; replaced with annotation.
- **Expert review needed:** Optional — author may want to soften "predates the GenAI wave" to "is grounded in pre-GenAI learning science (the 2015 four-pillars framework)."
- **Suggested reference:** Kucirkova, Brod & Gaab 2023, npj Science of Learning 8:35; Hirsh-Pasek et al. 2015, PSPI 16:3–34.
- **Notes:** The book's substantive point (EVER operationalizes the four pillars as an evaluation checklist) is accurate; only the "predates" timing and the implied Hirsh-Pasek authorship are off. Annotated inline.

### EVIDENCE/SPECIALIST — CONFIRMED
- **Assertion type:** BASIC
- **Sentence:** "Hirsh-Pasek and colleagues (2015) established four conditions under which durable learning occurs: ... actively involved ... engaged with the learning material ... meaningful ... socially interactive ..."
- **Claim checked:** Four pillars attributed to Hirsh-Pasek et al. 2015.
- **Site visited:** Confirmed via EVER paper references and PSPI record.
- **Finding:** Confirmed. The "four pillars of learning" (active, engaged, meaningful, socially interactive) are the Hirsh-Pasek et al. 2015 framework. (Abstract/secondary-source level; the framework is widely and consistently reported.)
- **Expert review needed:** No.

### EVIDENCE — CONFIRMED (Soderstrom & Bjork)
- **Assertion type:** BASIC
- **Sentence:** "Soderstrom and Bjork (2015) reviewed decades of evidence that performance during acquisition is an unreliable — often inversely related — index of long-term learning."
- **Claim checked:** Learning-vs-performance distinction; acquisition performance unreliable index of retention.
- **Site visited:** Known reference; Perspectives on Psychological Science 10(2):176–199.
- **Finding:** Confirmed as an accurate characterization of Soderstrom & Bjork 2015, "Learning versus performance: An integrative review." Citation correct.
- **Expert review needed:** No.

### STAT/CURRENT — CONFIRMED (adoption figures)
- **Assertion type:** BASIC
- **Sentence:** "A Synthesia-commissioned survey of L&D professionals (fielded late 2025) reports 87% already using AI at work ... An independent 2025 survey of 144 instructional designers found 83% using ChatGPT ... (via AACE Review)."
- **Claim checked:** 87% Synthesia; 83% of n=144 instructional designers (AACE).
- **Site visited:** https://www.synthesia.io/reports/ai-in-learning-and-development-report-2026 ; https://aace.org/review/generative-ai-for-instructional-design-changes-chances-challenges/
- **Finding:** Confirmed. Synthesia 2026 L&D report: ~87% of teams using AI (survey fielded Oct–Nov 2025, 421 professionals) — vendor-commissioned, correctly flagged in text. AACE/McNeill et al. 2025: 144 instructional designers, 83% using ChatGPT, efficiency top benefit, accuracy verification top challenge — all confirmed. (Publisher/vendor pages consulted.)
- **Expert review needed:** No. The conflict-of-interest flag on Synthesia is appropriately stated.

### EVIDENCE — CONFIRMED (Moore et al. 2025)
- **Assertion type:** BASIC
- **Sentence:** "in Moore et al. (2025), novice designers' AI-assisted microlessons scored higher on quality for half of assignments and never lower on average."
- **Claim checked:** AI-assisted novice microlessons scored higher for half of assignments, never lower on average.
- **Site visited:** https://link.springer.com/chapter/10.1007/978-3-031-98459-4_35
- **Finding:** Confirmed. Moore, Eckstein, Kwon & Stamper (2025), "Generative AI in Instructional Design Education: Effects on Novice Microlesson Quality" (EC-TEL 2025). A/B field experiment, 27 graduate students, 8 microlessons; genAI-assisted scored significantly higher for half the assignments, never lower on average; no evidence genAI hindered learning. (Publisher abstract + secondary analysis consulted.)
- **Expert review needed:** No.

## Unverified Assertions
| Assertion | Reason |
|---|---|
| "no study has yet directly tested whether Layer 1 fluency predicts Layer 2 design errors" | Book-flagged as its own construct (AI-ONLY style self-flag); an absence claim the book itself owns. Not independently checkable; appropriately hedged. |
| GPT Base students "transcribing not processing"; GPT-4 errors "propagated verbatim" | Mechanism detail from Bastani full text; consistent with abstract-level framing. Not separately verified against full text (paywalled), but congruent with the paper's stated thesis. Treated as CONFIRMED-consistent, not flagged in-text. |

## AI-Pass Flags
None. The two-layer taxonomy, Withdrawal Test, and endpoint-type discipline are explicitly labeled as the book's own constructs ("we flag our own constructs by the same standard we will apply to vendors") and are internally consistent. No contradictions between the opening table framing and the later assisted/unassisted exposition.
