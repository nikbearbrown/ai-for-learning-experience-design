# Assertions Report: 12-agentic-ai.md
**Date:** 2026-06-07
**Source file:** chapters/12-agentic-ai.md
**Assertions flagged:** 9
**Breakdown:** STAT: 3 | GUIDELINE: 0 | APPROVAL: 0 | EVIDENCE: 2 | SPECIALIST: 3 (statute) | CURRENT: 1

---
## ⚠️ Critical — Requires Immediate Expert Review
None. One legal scope-boundary flagged for counsel (Article 5(1)(f) biometric-data scope), annotated inline, not a factual error.

---
## Full Findings

### [STAT] — CONFIRMED (was [verify])
**Sentence:** "HBR Analytic Services (2025) reports that 86% of surveyed organizations plan to increase investment in agentic AI — while only 6% say they deeply trust it."
**Claim checked:** The 86/6 figures and their attribution to HBR Analytic Services 2025.
**Sites visited:** fortune.com (Dec 9 2025); prnewswire.com (HBR/Workato/AWS release); workato.com hosted report PDF.
**Finding:** Confirmed. HBR Analytic Services report (sponsored by Workato and AWS), surveying 603 business/technology leaders in July 2025: 86% expect investment in agentic AI to increase over the next two years; only 6% fully trust AI agents to autonomously run core business processes. CORRECTION APPLIED: the chapter's original "deeply trust it" loosely paraphrased; revised to "fully trust AI agents to run core business processes autonomously" to match the survey item.
**Expert review needed:** No
**Suggested reference:** HBR Analytic Services, *From the Edge to the Core* (2025).

### [STAT] — CONFIRMED (was [verify — attributions not pinned])
**Sentence:** Originally: "agentic deployments in production remain in the single digits, and only about 12% of organizations report governance frameworks ready for autonomous systems."
**Claim checked:** The deployment ("single digits"/~9%) and governance-readiness (~12%) figures.
**Sites visited:** Deloitte Insights Tech Trends 2026; HBR Analytic Services release.
**Finding:** Now pinned. The 12% figure is the HBR survey's own ("just 12% feel risk and governance controls are fully in place"). Production-deployment figure is Deloitte's 2025 emerging-technology survey: 11% in production (NOT single digits — the original "single digits/~9%" was slightly low). CORRECTION APPLIED: text now reads "11% … in production" and "12% … fully in place," attributed to Deloitte 2025 and HBR 2025. The unverifiable "~9%" was removed; [verify] flag resolved.
**Expert review needed:** No
**Suggested reference:** Deloitte, *Tech Trends 2026: Agentic AI strategy*; HBR Analytic Services 2025.

### [SPECIALIST/STATUTE] — CONFIRMED
**Sentence:** "EU AI Act, Annex III, point 3 … high-risk when they determine access or admission, evaluate learning outcomes including when those evaluations steer the learning process … These obligations became enforceable August 2, 2026."
**Claim checked:** Annex III point 3 scope (incl. the "steer the learning process" clause), Article 14 human oversight, and the 2 Aug 2026 applicability date.
**Sites visited:** artificialintelligenceact.eu (Annex III, Article 14); ai-act-service-desk.ec.europa.eu; digital-strategy.ec.europa.eu.
**Finding:** Confirmed verbatim. Annex III(3)(b): "AI systems intended to be used to evaluate learning outcomes, including when those outcomes are used to steer the learning process of natural persons in educational and vocational training institutions at all levels." High-risk obligations (Arts. 6–15, incl. Art. 14 human oversight) apply from 2 August 2026.
**Expert review needed:** No
**Suggested reference:** Regulation (EU) 2024/1689, Annex III pt. 3; Art. 14.

### [SPECIALIST/STATUTE] — CONFIRMED (with scope caveat added)
**Sentence:** "Article 5(1)(f) — the Act outright prohibits AI systems that infer the emotions of a natural person in education institutions, except for medical or safety reasons. Prohibitions took effect in February 2025."
**Claim checked:** Article 5(1)(f) prohibition, education-institution scope, medical/safety exception, Feb 2025 effective date.
**Sites visited:** artificialintelligenceact.eu/article/5; FPF blog; Wolters Kluwer Global Workplace; EC Guidelines C(2025) 884.
**Finding:** Confirmed. Art. 5(1)(f) prohibits inferring emotions in workplace and education institutions except for medical/safety reasons; in force 2 Feb 2025. IMPORTANT NUANCE (annotated inline): the Commission's Feb 4 2025 guidelines tie the prohibition to emotion inference from *biometric* data; whether affect inferred purely from interaction logs is in scope is unsettled. Inline caveat added directing designers to counsel.
**Expert review needed:** Yes — legal counsel on the biometric-scope boundary (annotated, not a textual error).
**Suggested reference:** Reg. (EU) 2024/1689, Art. 5(1)(f); EC Guidelines C(2025) 884 final.

### [EVIDENCE] — CONFIRMED
**Sentence:** L0–L3 authority ladder "is the book's adaptation of … Sheridan and Verplanck's 1978 ten-level scale and Parasuraman, Sheridan and Wickens' 2000 types-and-levels model."
**Claim checked:** The human-factors lineage citations.
**Sites visited:** scirp.org; pubmed.ncbi.nlm.nih.gov/11760769; hfes-europe.org.
**Finding:** Confirmed. Parasuraman, Sheridan & Wickens (2000), *IEEE Trans. SMC-A* 30(3), 286–297. Sheridan & Verplank (1978), *Human and Computer Control of Undersea Teleoperators*, MIT — ten-level taxonomy. Chapter correctly frames these as design-tool lineage, not measured educational taxonomy.
**Expert review needed:** No

### [CURRENT/EVIDENCE] — CONFIRMED (was [verify — no pinned article])
**Sentence:** Evidence Box: Agentic AI definition attributed to "MIT Sloan (2026)".
**Claim checked:** Existence and wording of an MIT Sloan agentic-AI definition.
**Sites visited:** mitsloan.mit.edu/ideas-made-to-matter/agentic-ai-explained (full text fetched).
**Finding:** Pinned. MIT Sloan, "Agentic AI, explained" (Beth Stackpole, Feb 18 2026): "a new breed of AI systems that are semi- or fully autonomous and thus able to perceive, reason, and act on their own." CORRECTION APPLIED: Evidence Box now cites the full article with date; [verify] removed.
**Expert review needed:** No
**Suggested reference:** Stackpole, B. (2026). "Agentic AI, explained." MIT Sloan Ideas Made to Matter.

### [CURRENT] — CONFIRMED (was [verify product scope])
**Sentence:** "Instructure … announced IgniteAI, an agentic layer for the LMS with partnerships including major model vendors."
**Claim checked:** IgniteAI existence, agentic scope, vendor partnership.
**Sites visited:** instructure.com press releases; prnewswire.com.
**Finding:** Confirmed. Instructure–OpenAI global partnership announced July 23 2025; IgniteAI launched (AWS Bedrock–powered); IgniteAI Agent launched March 12 2026 (reported 30,000+ educators). Dates added to text. Standing [verify at time of use] retained (correctly) because scope expands quarterly.
**Expert review needed:** No

### [CURRENT] — CONFIRMED (was reported)
**Sentence:** "In February 2026, a 22-year-old founder launched 'Einstein,' an agentic tool that connects to Canvas and autonomously … submits homework … It triggered an open letter."
**Claim checked:** Einstein launch, founder age, Canvas integration, open letter to vendors.
**Sites visited:** insidehighered.com (Feb 26 2026); chronicle.com.
**Finding:** Confirmed with one chronology correction. Advait Paliwal (22, Brown dropout) launched Einstein, Feb 2026. CORRECTION APPLIED: the open letter (by educator Anna Mills) was sent ~two months BEFORE Einstein's launch, not triggered by it — text revised. Added: Instructure cease-and-desist took the site down after the IHE story.
**Expert review needed:** No
**Suggested reference:** Inside Higher Ed, "Agentic AI Can Complete Whole Courses. Now What?" (Feb 26 2026).

### [EVIDENCE] — CONFIRMED
**Sentence:** "an unguardrailed responder produced −17% unassisted performance" (Bastani); and boat-racing reward-hacking agent from Christian's *Alignment Problem*.
**Claim checked:** Bastani −17% figure; CoastRunners reward-hacking example.
**Sites visited:** pnas.org/doi/10.1073/pnas.2422633122; openai.com faulty-reward-functions; en.wikipedia.org/Alignment_Problem.
**Finding:** Confirmed. Bastani et al. 2025 PNAS: GPT Base −17% unassisted exam performance (stat. sig. below control). CoastRunners boat that loops collecting targets instead of finishing — OpenAI 2016, featured in Christian (2020). Both accurately represented.
**Expert review needed:** No

---
## Unverified Assertions
| Sentence | Category | Reason unverified |
| Biometric-scope boundary of Art. 5(1)(f) | Statute interpretation | Genuinely unsettled in current EC guidance — flagged inline for counsel, not resolvable by fact-check |

---
## [verify] markers resolved/removed
- HBR 86/6 → CONFIRMED, attribution pinned (603 leaders, July 2025).
- Deployment/governance percentages → CONFIRMED (11% Deloitte, 12% HBR); unverifiable "~9%" removed.
- MIT Sloan definition → CONFIRMED, article pinned (Feb 18 2026).
- IgniteAI scope → CONFIRMED, dates added; standing "verify at time of use" retained by design.

## References added
Yes — 13-entry "## References" section appended to chapter (HBR, Deloitte, EU AI Act arts., EC guidelines, Sheridan-Verplank, Parasuraman et al., Instructure, IHE, MIT Sloan, Bastani, Christian, Markup/DEWS, FERPA).
