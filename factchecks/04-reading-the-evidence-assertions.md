# Assertions Report: 04-reading-the-evidence.md
**Date:** 2026-06-07
**Source file:** chapters/04-reading-the-evidence.md
**Assertions flagged:** 12
**Breakdown:** STAT: 5 | GUIDELINE: 1 | EVIDENCE: 4 | SPECIALIST: 0 | CURRENT: 2 | AI-ONLY: 0

---
## ⚠️ Critical — Requires Immediate Expert Review
None requiring expert review. One imprecision corrected inline (school count); see below.

---
## Full Findings

### [STAT] — CONFIRMED (full text)
**Assertion type:** EMPHATIC
**Sentence:** "Stanford's SCALE Initiative analyzed more than 800 academic studies... and identified only about 20 that rigorously measure causal impact... The repository has since passed 1,100 papers..."
**Site visited:** https://scale.stanford.edu/research-in-action/understanding-evidence-base-ai-k12-education (full article)
**Finding:** Verbatim confirmed. "analyzed the more than 800 academic papers... in the AI Hub Research Repository as of October 2025... In only several months the Repository is now over 1,100 papers... we identified only 20 high-quality causal studies." Also confirmed verbatim: "There are no high-quality causal studies of student AI use conducted in U.S. K-12 classrooms"; "Most studies examine short-term outcomes"; "Very little research examines impacts on equity, student wellness, or social development"; and the guardrails-beat-chatbots finding ("AI tools designed with pedagogical guardrails... show more promising outcomes than general-purpose chatbots"). Report dated 03/11/2026, titled "The Evidence Base on AI in K-12: A 2026 Review."
**Expert review needed:** No
**Notes:** Full-text source verification. The chapter's epistemic caveat ("single organization's census with explicit inclusion criteria") is well-judged.

### [EVIDENCE] — PARTIALLY VERIFIED (abstract/existence only)
**Assertion type:** BASIC
**Sentence:** "A PRISMA-guided meta-review of 35 systematic reviews of generative AI in education... (Zhang, Deng & Shadiev 2026)."
**Site visited:** https://journals.sagepub.com/doi/10.1177/07356331261419689
**Finding:** Paper confirmed: Zhang, Deng & Shadiev, "A Meta-Review of Generative AI in Education: Synthesizing Findings from Systematic Reviews," *Journal of Educational Computing Research* 64(4), 1068–1092 (2026). The specific "35 reviews" count and the PRISMA / "methodologically inconsistent" characterization could not be confirmed from the accessible abstract (article paywalled; full text did not render). The claim is plausible and venue-correct but the precise numbers rest on the author's notes. Left as-is; reference annotated with this limitation. NOT contradicted (full-text rule respected — could not access, so UNVERIFIED on the specifics, not CONTRADICTED).
**Expert review needed:** Author should confirm "35" against the PDF.

### [STAT] — CONFIRMED (cross-reference)
**Assertion type:** EMPHATIC
**Sentence:** "+48% with the tool present, −17% without it (Bastani et al. 2025)."
**Finding:** PNAS 122(26) e2422633122. Confirmed (see Ch.3 report). Correction PNAS e2518204122 exists; headline unchanged.
**Expert review needed:** No

### [STAT] — IMPRECISE → CORRECTED INLINE
**Assertion type:** BASIC
**Sentence (original):** "a large randomized trial across 73 schools in seven states."
**Site visited:** https://www.rand.org/pubs/research_briefs/RB9746.html
**Finding:** The Pane et al. (2014) trial ran in **147 school sites: 73 high schools and 74 middle schools** in 51 districts across seven states. The ≈+0.20 year-2 effect is the high-school arm (the middle-school estimate was similar but not statistically significant). "73 schools" silently drops the 74 middle schools and the fact that 73 is specifically the high-school count. Inline FACT-CHECK FLAG added recommending "73 high schools." (The product-A scenario is illustrative, so this is a precision note, not a hard error.)
**Expert review needed:** No

### [STAT] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "no significant effect in year one, roughly +0.20 standard deviations in year two, after schools learned to implement it (Pane et al. 2014); a federal evidence review rating its effects on algebra achievement as *mixed* (WWC 2016)."
**Site visited:** RAND RB-9746; WWC 2016 report.
**Finding:** Both exact. Year-1 null, year-2 ≈0.20 (50th→58th percentile) for high schools; WWC 2016 = "mixed effects" on algebra. Matches.
**Expert review needed:** No

### [STAT/GUIDELINE] — CONFIRMED
**Assertion type:** EMPHATIC
**Sentence:** "Kraft's education-specific benchmarks... where 36% of RCT effect sizes on standardized achievement outcomes fall below 0.05... below 0.05 small, 0.05–0.20 medium, above 0.20 large... (Kraft 2020)." Also: "improvement index... about 0.25 ≈ +10 percentile points."
**Site visited:** https://journals.sagepub.com/doi/10.3102/0013189X20912798 (and EdWorkingPaper)
**Finding:** Kraft, "Interpreting Effect Sizes of Education Interventions," *Educational Researcher* 49(4), 241–253 (2020). Confirmed: 36% of effect sizes from RCTs with standardized achievement outcomes are <0.05 SD; proposed schema <0.05 small / 0.05–0.20 medium / >0.20 large, to be read jointly with cost and scalability; Cohen's 0.2/0.5/0.8 not derived from field-based education research. The 0.25≈+10 percentile improvement-index conversion is standard WWC arithmetic and consistent.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "VanLehn's (2011) review found human tutoring at roughly *d* ≈ 0.79... intelligent tutoring systems close behind at ≈ 0.76. ... Bloom's claim... two standard deviations... has never replicated at that magnitude."
**Finding:** VanLehn confirmed (see Ch.3). Bloom (1984) "The 2 Sigma Problem," *Educational Researcher* 13(6) — the two-sigma figure and its non-replication at magnitude are standard scholarship. Correct.
**Expert review needed:** No

### [STAT] — CONFIRMED (full text)
**Assertion type:** BASIC
**Sentence:** "Kestin et al. (2025) found a research-based AI tutor outperforming in-class active learning in Harvard physics — strong on immediate unassisted post-tests, silent on retention... about a week."
**Site visited:** https://www.nature.com/articles/s41598-025-97652-6
**Finding:** Kestin, Miller, Klales, Milbourne & Ponti, "AI tutoring outperforms in-class active learning," *Scientific Reports* 15:17458 (2025). Harvard Physical Sciences 2, Fall 2023, ~180 students, within-subject alternating weeks; AI condition ~2× learning gains vs. active-learning classroom; short window. Endpoint classification (immediate, no retention) correct.
**Expert review needed:** No

### [CURRENT/EVIDENCE] — CONFIRMED
**Assertion type:** EMPHATIC
**Sentence:** "in spring 2024, Los Angeles Unified launched 'Ed,'... built by the startup AllHere, on a contract reported at roughly $6 million. Within about three months, AllHere's CEO had departed, most staff were furloughed, the company collapsed into insolvency, and a former employee publicly warned that the system's data handling did not match what was promised."
**Site visited:** https://www.the74million.org/article/whistleblower-l-a-schools-chatbot-misused-student-data-as-tech-co-crumbled/ ; incidentdatabase.ai/cite/793 ; Fox/Yahoo coverage
**Finding:** All confirmed. LAUSD "Ed" student advisor by AllHere; contract reported up to $6M (district had paid ~$3M); launched spring 2024; June 14, 2024 most of ~50 staff furloughed, CEO Joanna Smith-Griffin departed (later arrested on fraud charges, Nov 2024); company insolvent; former senior director of software engineering Chris Whiteley raised data-handling/privacy concerns (data sent overseas, over-collection, third-party logging). No causal evaluation of learning impact existed. Chapter's "(figures 'as reported')" hedge is appropriate.
**Expert review needed:** No

### [GUIDELINE] — CONFIRMED (framework)
**Assertion type:** BASIC
**Sentence:** "the ESSA evidence framework: Tier 1 (Strong — well-designed RCTs), Tier 2 (Moderate — quasi-experimental), Tier 3 (Promising — correlational with controls), Tier 4 (Demonstrates a Rationale...)."
**Finding:** Accurate statement of the four ESSA evidence tiers (ESEA as amended by ESSA, §8101(21)(A)). Standard. Correct.
**Expert review needed:** No

### [EVIDENCE] — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "The two claim-autopsy questions... find the comparison group; ask what the percentage is a percentage of (Bergstrom & West 2020)."
**Finding:** Bergstrom & West, *Calling Bullshit* (2020) — the comparison-group and denominator questions are central to that book. Correct attribution.
**Expert review needed:** No

---
## Unverified Assertions
| Sentence | Category | Assertion Type | Reason unverified |
|---|---|---|---|
| "35 systematic reviews" / PRISMA characterization (Zhang, Deng & Shadiev 2026) | EVIDENCE | BASIC | Paper exists and venue correct; specific count and methodological framing not accessible (paywalled full text) — UNVERIFIED, not contradicted |
| "Researcher-designed proximal outcomes routinely run two to four times larger than standardized distal outcomes" | STAT | BASIC | A real and well-documented pattern in the literature (e.g., Lipsey et al.; Kraft discusses it), but the specific "2–4×" multiplier not pinned to a single source this pass |
| Hattie's *Visible Learning* 0.40 hinge | EVIDENCE | BASIC | Accurately attributed to Hattie's tradition; the chapter correctly frames it as a contested benchmark, not endorsed |

---
## AI-Pass Flags
- The three-pile claim-deconstruction method, four-endpoint taxonomy, three-bucket discipline, and risk-asymmetry concept are the book's own framework (correctly skipped).
- Product A / Product B and the Priya/Mentora case are illustrative scenarios (skipped).
- All exercise prompts, spec-file apparatus, and the StatCoach validation artifact in Exercise 5 are pedagogical apparatus (skipped) — note: the Exercise 5 "answer key" correctly states VanLehn real/accurate, Bastani real/laundered (+48% assisted, −17% withdrawn), and Okafor & Lindqvist fabricated; these internal consistency checks align with verified facts.
