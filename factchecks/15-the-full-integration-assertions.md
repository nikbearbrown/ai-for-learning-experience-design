# Assertions Report: 15-the-full-integration.md
**Date:** 2026-06-07 / **Source file:** chapters/15-the-full-integration.md / **Assertions flagged:** 14 / **Breakdown:** STAT: 2 | GUIDELINE: 0 | APPROVAL: 0 | EVIDENCE: 8 | SPECIALIST: 4 | CURRENT: 0

> **Method note:** Ch15 is the synthesis chapter; most claims restate earlier chapters. Per plan, this pass pinned the NEW attributions (safety-case lineage; Mitchell et al. 2019 model cards; Gebru et al. 2021 datasheets; Madaio et al. 2020; the Bhat/Bhat & Long AIES-25 record; Common Sense Media) and cross-checked the load-bearing restated figures (Bastani; SCALE; LearnLM/Eedi; Tutor CoPilot). The absence claims about the lineage documents ("no withdrawal construct") were verified against **full texts** (arXiv PDFs of Mitchell et al. and Gebru et al.), not abstracts, per the full-text rule. Madaio et al. was also read in full text (jennwv.com/papers/checklists.pdf).

## ⚠️ Critical — Requires Immediate Expert Review

Nothing at the CONTRADICTED level. One precision correction is recommended for the next corrections pass:

- **Madaio et al. (2020) attribution verb.** The chapter: "Madaio et al. (2020) … *found that ethics checklists routinely decay into checkbox compliance* … unless checklist items are anchored to specific decision points in the actual workflow." Full text checked: the paper (qualitative co-design, 48 practitioners, 12 companies; CHI 2020 Best Paper) **does not report observed decay**. It reports (a) practitioner-voiced *concern* that checklists "might incentivize teams to engage in the wrong kinds of behaviors, focusing on minimal, superficial completion of items instead of engaging in discussion and reflection"; (b) precedent from aviation/medicine/security where non-co-designed checklists were "misused or even ignored"; and (c) the strong finding that checklists "must be aligned with teams' existing workflows" via lifecycle "pause points." The chapter's *prescription* (workflow anchoring) is exactly the paper's; the *verb* ("found that … routinely decay") converts a documented risk into an observed regularity. Suggested fix: "warned that ethics checklists invite checkbox compliance … unless anchored to specific decision points ('pause points') in the actual workflow." Not inline-flagged (not contradicted — the directional claim is supported); Evidence Box status cell carries the caveat.

## Full Findings

### SPECIALIST — CONFIRMED (safety-case lineage)
**Assertion type:** BASIC
**Sentence:** "From **safety engineering** it inherits the safety case: a structured argument, supported by evidence, that a system is acceptable for a specific use in a specific context — not a description of the system, an *argument* about it…"
**Claim checked:** That this is the standard safety-case formulation.
**Site visited:** asems.mod.uk (Def Stan 00-56 definition); skybrary.aero (Def Stan 00-56 PDF); en.wikipedia.org/wiki/Safety_case.
**Finding:** CONFIRMED. UK Def Stan 00-56 defines the safety case as "a structured argument, supported by a body of evidence, that provides a compelling, comprehensible and valid case that a system is safe for a given application in a given operating environment." The chapter's paraphrase is faithful (substituting "acceptable" for "safe" — defensible for the lineage point). The [verify] marker was resolved and replaced with a Def Stan 00-56 pointer.
**Expert review needed:** No.
**Suggested reference:** UK MoD, Defence Standard 00-56 (see also Bishop & Bloomfield 1998 for safety-case methodology).

### SPECIALIST — CONFIRMED, including the absence claim (FULL TEXT)
**Assertion type:** BASIC + EMPHATIC
**Sentence:** "Mitchell et al.'s model cards disclose intended use, out-of-scope use, and evaluation results disaggregated by subgroup (Mitchell et al. 2019)" and "**No industry documentation template contains a withdrawal claim** … no withdrawal construct anywhere in it" (Further Reading).
**Claim checked:** Venue/content of the model cards paper; absence of any withdrawal/unassisted-performance construct.
**Site visited:** arxiv.org/abs/1810.03993 (abstract) and arxiv.org/pdf/1810.03993 (**full text**).
**Finding:** CONFIRMED. Mitchell, M., Wu, S., Zaldivar, A., Barnes, P., Vasserman, L., Hutchinson, B., Spitzer, E., Raji, I. D., & Gebru, T. (2019), "Model Cards for Model Reporting," FAT* '19, doi:10.1145/3287560.3287596. The framework discloses intended use, explicitly includes "Out-of-scope" uses (confirmed verbatim in full text), and centers disaggregated evaluation across demographic/intersectional groups. **Absence claim verified against full text:** the paper contains no occurrence of "withdraw*" or "unassisted" and no construct addressing what the human can do when the system is removed. The chapter's caption was updated from "lineage sources pending verification" to record the full-text check.
**Expert review needed:** No.
**Suggested reference:** Mitchell, M., et al. (2019). Model Cards for Model Reporting. *Proc. FAT\* '19*, 220–229.
**Notes:** The chapter's universal form ("**No** industry documentation template…") is verified for the two flagship ancestors it names; as a universal it remains an interpretive claim — the figure caption appropriately frames it as the book's reading.

### SPECIALIST — CONFIRMED, including the absence claim (FULL TEXT)
**Assertion type:** BASIC
**Sentence:** "Gebru et al.'s datasheets force provenance questions a spec sheet never asked (Gebru et al. 2021)."
**Claim checked:** Venue/date/content; absence of withdrawal construct.
**Site visited:** arxiv.org/abs/1803.09010 (abstract; v8 notes "Published in CACM in December, 2021") and arxiv.org/pdf/1803.09010 (**full text**).
**Finding:** CONFIRMED. Gebru, Morgenstern, Vecchione, Wortman Vaughan, Wallach, Daumé III, & Crawford, "Datasheets for Datasets," *CACM* 64(12), 2021 (orig. arXiv 2018). Provenance is core ("document the provenance, creation, and use of machine learning datasets"); the electronics-datasheet analogy supports "questions a spec sheet never asked." **Absence claim verified against full text:** no "withdraw*"/"unassisted" construct. The 2021 date is correct for the published CACM version.
**Expert review needed:** No.
**Suggested reference:** Gebru, T., et al. (2021). Datasheets for Datasets. *CACM*, 64(12), 86–92.

### EVIDENCE — CONFIRMED with register caveat (FULL TEXT)
**Assertion type:** EMPHATIC
**Sentence:** "Madaio et al. (2020), co-designing AI fairness checklists with practitioners, found that ethics checklists routinely decay into checkbox compliance — performed conformance that changes documents rather than systems — unless checklist items are anchored to specific decision points in the actual workflow."
**Claim checked:** Authors, venue, and whether the paper supports the decay-unless-anchored claim.
**Site visited:** jennwv.com/papers/checklists.pdf (**full text**); dl.acm.org/doi/10.1145/3313831.3376445; michaelmadaio.com.
**Finding:** Paper CONFIRMED: Madaio, Stark, Wortman Vaughan & Wallach, CHI 2020, Best Paper; iterative co-design with 48 practitioners from 12 companies. Substance: workflow anchoring is the paper's central desideratum ("AI fairness checklists must be aligned with teams' existing workflows," structured by lifecycle stage with medical-literature "pause points"); the checkbox-compliance failure mode appears as practitioner concern and cross-domain precedent ("minimal, superficial completion of items instead of engaging in discussion and reflection"; security checklists: "'I could just check things off, and then I'm good!' And they were not good."). **Caveat:** "found that … routinely decay" overstates a qualitative co-design study's voiced concerns into an observed regularity — see Critical section for suggested rewording. The [verify] marker was resolved to a full citation; the Evidence Box status cell carries the caveat.
**Expert review needed:** No — wording fix only.
**Suggested reference:** Madaio, M. A., Stark, L., Wortman Vaughan, J., & Wallach, H. (2020). Co-Designing Checklists to Understand Organizational Challenges and Opportunities around Fairness in AI. *Proc. CHI 2020*, Paper 318.

### EVIDENCE — CONFIRMED; conflation RESOLVED (the chapter's own contested flag)
**Assertion type:** BASIC
**Sentence:** Evidence Box row "Human-like cues construct illusory relational care; vulnerability patterns in companion-AI users (n=344) — Bhat & Long (AIES 2025) [contested — confirm against the AIES PDFs; earlier synthesis may have conflated venue and authorship]" and the Study Buddy dossier citation.
**Claim checked:** Whether the AIES-25 attribution survives a primary-source check.
**Site visited:** ojs.aaai.org/index.php/AIES/article/view/36560 and /36561 (AIES-25 proceedings pages with abstracts and PDF links).
**Finding:** RESOLVED — the chapter's suspicion was exactly right: the row had merged **two adjacent AIES-25 papers**, both real, both Northwestern, same venue and volume. (1) **Bhat, M. (2025)**, "Toward an Ethic of Synthetic Relationality," *Proc. AIES-25* 8(1), 416–429, doi:10.1609/aies.v8i1.36560 — the **n=344** anonymous Character.AI user survey; themes include identity projection, perceived relationship growth, addictive engagement, boundary confusion, emotional substitution, ethical dissonance, trauma reenactment; flags risk "particularly for younger and vulnerable populations." (2) **Bhat, M., & Long, D. (2025)**, "Emotional Plausibility vs. Emotional Truth: Designing Against Affective Misinformation in Conversational AI," *Proc. AIES-25* 8(1), 430–444, doi:10.1609/aies.v8i1.36561 — the framework paper: anthropomorphic cues "create the illusion of relational care"; cross-system design audit. The dossier citation and Evidence Box row were corrected to attribute the survey to Bhat (2025) and the illusory-care framework to Bhat & Long (2025); contested flags removed. Consistent with Chapter 11, which already cites both DOIs correctly.
**Expert review needed:** No.
**Suggested reference:** Both AIES-25 papers as above.

### EVIDENCE — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "independent practitioner assessment places relational companion AI in its highest risk class for younger users (Common Sense Media)" / Evidence Box "Social AI companions: unacceptable risk for minors."
**Claim checked:** The Common Sense Media risk classification.
**Site visited:** commonsensemedia.org (Social AI Companions risk assessment PDF and press releases; "Talk, Trust, and Trade-Offs" 2025 survey).
**Finding:** CONFIRMED. Common Sense Media's AI risk assessment of social AI companions (2025, conducted with Stanford School of Medicine's Brainstorm Lab), covering Character.AI, Replika, Nomi and others, rates them "Unacceptable" risk for users under 18 and recommends no social AI companions for minors. The companion survey finding (~3 in 4 US teens have used AI companions) — relevant to Ch13, not quoted in Ch15 — also checks out. Ch15 cites only the risk class, which is exact. [verify figures] resolved.
**Expert review needed:** No.
**Suggested reference:** Common Sense Media (2025). *Social AI Companions: AI Risk Assessment*.
**Notes:** Evidence Box dating tightened from "(2024–2026)" to "(2025, with Stanford Brainstorm Lab)" for the assessment actually relied on.

### EVIDENCE — CONFIRMED (primary source fetched)
**Assertion type:** BASIC
**Sentence:** Evidence Box row "Human-supervised AI: +5.5pp transfer; self-labeled exploratory — LearnLM/Eedi RCT [verify — arXiv 2512.23633]."
**Claim checked:** The +5.5pp transfer figure, the "exploratory" self-label, and the arXiv ID.
**Site visited:** arxiv.org/abs/2512.23633 (full abstract fetched).
**Finding:** CONFIRMED verbatim. "AI tutoring can safely and effectively support students: **An exploratory RCT** in UK classrooms" (LearnLM Team Google & Eedi, Dec 2025). N=165 students, five UK secondary schools; tutors approved 76.4% of drafted messages with zero/minimal edits; LearnLM-supported students were 5.5pp more likely to solve novel problems on subsequent topics (66.2% vs. 60.7%). "Exploratory" is in the title; authorship is the model maker plus platform (industry-published — the provenance flag Ch3/Ch4 carry is warranted). [verify] resolved.
**Expert review needed:** No.
**Suggested reference:** LearnLM Team & Eedi (2025). arXiv:2512.23633.

### EVIDENCE — RESOLVED: still a working paper (status check, as the flag requested)
**Assertion type:** BASIC
**Sentence:** Evidence Box row "Self-regulated help-seeking harms long-term outcomes — Bastani chess-academy follow-up — Working paper [verify publication status before press]."
**Claim checked:** Publication status and identity of the chess-academy study.
**Site visited:** papers.ssrn.com/abstract_id=5604932; knowledge.wharton.upenn.edu ("When Does AI Assistance Undermine Learning?"); knowledge.insead.edu; penntoday.upenn.edu.
**Finding:** The study is **Poulidis, S., Bastani, H., & Bastani, O., "Self-Regulated AI Use Hinders Long-Term Learning"** (Wharton School Research Paper, Oct 2025; SSRN 5604932). 200+ chess students, 12-week program, system-regulated vs. self-regulated conditions; self-regulated students achieved less than half the gains (≈30% vs. ≈64%) — matching Ch2's "64/30 split." **As of 2026-06 it remains an unpublished working paper**; the Evidence Box row was updated with the SSRN ID and a re-verify-at-press note. Authorship nuance: first author is Poulidis (INSEAD); "Bastani chess-academy follow-up" is acceptable group shorthand but the References entry carries the full author list.
**Expert review needed:** No — but MUST re-check status at press; working-paper findings can change in peer review.
**Suggested reference:** Poulidis, Bastani & Bastani (2025). SSRN 5604932.

### STAT — CONFIRMED (cross-check of the spine figures)
**Assertion type:** EMPHATIC
**Sentence:** "(+48%/−17% vs. +127%/no deficit)" (Evidence Box) and the closing table (GPT Base +48%/−17%; GPT Tutor +127%/no deficit).
**Claim checked:** Bastani et al. figures, restated from Ch1/Ch2/Ch14.
**Site visited:** pnas.org (10.1073/pnas.2422633122) — verified against the primary source in the companion-volume pass; figures re-cross-checked here.
**Finding:** CONFIRMED. Practice: ~48% (GPT Base), ~127% (GPT Tutor); unassisted exam: GPT Base 17% worse than control, GPT Tutor parity. The Aug 2025 PNAS correction (122(34), e2518204122) is affiliation-only. Note for consistency: −17% is a *relative* reduction (the chapter's "−17%" usage is correct; the appendix's "17 percentage points" is the looser rendering — see the Ch97 report).
**Expert review needed:** No.
**Suggested reference:** Bastani, H., et al. (2025). *PNAS*, 122(26), e2422633122.

### STAT — CONFIRMED
**Assertion type:** BASIC
**Sentence:** "roughly twenty high-quality causal studies under the field's strictest screens" / Evidence Box "~20 high-quality causal studies in 800+ papers; zero longitudinal."
**Claim checked:** The Stanford SCALE census figures.
**Site visited:** scale.stanford.edu/research-in-action/understanding-evidence-base-ai-k12-education (verified in the companion-volume pass).
**Finding:** CONFIRMED. SCALE identified 20 high-quality causal studies among 800+ K-12 repository papers; the repository has since grown to 1,100+ (the ratio the chapter argues from only widens). "Zero longitudinal" is consistent with SCALE's findings (most studies short-term) and Ch4's treatment.
**Expert review needed:** No.
**Suggested reference:** Stanford SCALE Initiative, Understanding the Evidence Base on AI in K-12 Education.

### EVIDENCE — CONFIRMED (restated; verified in companion pass)
**Assertion type:** BASIC
**Sentence:** "AI support lifts weakest tutors most (+9pp) — Tutor CoPilot (arXiv 2410.03017)."
**Claim checked:** The +9pp subgroup figure.
**Site visited:** arxiv.org/abs/2410.03017 (verified verbatim in the companion-volume pass).
**Finding:** CONFIRMED. +4pp overall mastery; +9pp for students of lower-rated tutors; $20/tutor/year; 900 tutors, 1,800 students; preregistered.
**Expert review needed:** No.
**Suggested reference:** Wang, R. E., et al. (2024). arXiv:2410.03017.

### EVIDENCE — CONFIRMED (canonical)
**Assertion type:** BASIC
**Sentence:** "Subgroup evaluation mandate — Baker & Hawn (2022), *IJAIED* 32" and Further Reading entry.
**Claim checked:** Citation accuracy.
**Site visited:** link.springer.com/article/10.1007/s40593-021-00285-9.
**Finding:** CONFIRMED. Baker, R. S., & Hawn, A. (2022). Algorithmic Bias in Education. *IJAIED*, 32, 1052–1092. Canonical review; correctly characterized as the standing subgroup-evaluation mandate.
**Expert review needed:** No.
**Suggested reference:** As above.

### EVIDENCE — CONFIRMED with standing flags (restated)
**Assertion type:** BASIC
**Sentence:** Evidence Box row "Cognitive debt: declining neural engagement with generative offloading — Kosmyna et al. (2025) — Single study, published criticism — candidate mechanism only [contested]."
**Claim checked:** That the row's own status label is accurate.
**Site visited:** arxiv.org/abs/2506.08872 (verified in companion pass; methodological commentary noted).
**Finding:** CONFIRMED as labeled. Non-peer-reviewed preprint, n=54 (18 at session 4), large ANOVA count drawing published criticism. The row's "[contested]" is an accurate permanent epistemic label, not an unresolved verification marker — left in place deliberately.
**Expert review needed:** No.
**Suggested reference:** Kosmyna, N., et al. (2025). arXiv:2506.08872.

### SPECIALIST — UNVERIFIED as a universal (interpretive thesis, partially verified)
**Assertion type:** EMPHATIC
**Sentence:** "**No industry documentation template contains a withdrawal claim.**" / "system cards from frontier model deployments extend the form to deployed behavior."
**Claim checked:** The universal absence claim across the documentation genre.
**Site visited:** Full texts of the two named ancestors (above); system cards not exhaustively surveyed.
**Finding:** Verified for the two flagship ancestors by full-text check (no withdrawal/unassisted construct in Mitchell et al. 2019 or Gebru et al. 2021); the system-card characterization (deployed/adversarial behavior, e.g., GPT-4 System Card) is accurate as a genre description. The *universal* form is an interpretive claim no finite check can close; Figure 15.4's caption already frames the present-but-empty-slot rendering as "the book's interpretive reading." Status: defensible, properly framed, not exhaustively verifiable.
**Expert review needed:** No.
**Suggested reference:** n/a (book's thesis).

## Unverified Assertions

| Sentence (abbrev.) | Category | Why unverified |
|---|---|---|
| The entire DataWise 101 running case (14 sections, 31 pages, focus-group demand, routing audit blind spot, assembly dead ends, defense protocol) | EVIDENCE (illustrative) | Fictional running case; internally consistent with the book's verified evidence; not fact-checkable |
| "No industry standard exists for integration specifications" | SPECIALIST | Universal absence claim; consistent with the field (no ISO/IEEE standard for AI-learning integration specs found), but unprovable as a universal |
| "the +40%/92% deck gets funded" (What Would Change My Mind) | EVIDENCE (rhetorical) | Callback to the book's illustrative vendor-deck case, not an empirical claim |
| Four canonical defense attacks; decision-trace structure; two-registers apparatus | — | Author's normative pedagogy; AI-ONLY, no external check |
| "Bastani et al. (2025). 'Generative AI Can Harm Learning'" (Further Reading title) | EVIDENCE | Title shorthand: published title is "Generative AI **without guardrails** can harm learning: Evidence from high school mathematics." Same minor item flagged in the companion volume; fix at copyedit |

## AI-Pass Flags

- **One wording correction recommended (Madaio verb — see Critical).** Everything else resolved clean: all seven inline [verify]/[contested] markers in this chapter were resolved and removed/replaced; the Evidence Box status cells now record the verdicts.
- **The chapter's self-suspicion was vindicated twice.** The "[contested — earlier synthesis may have conflated venue and authorship]" flag on Bhat & Long was exactly right: two AIES-25 papers had been merged into one citation. The chapter's apparatus caught its own error before this pass did — the corrected citation now names both.
- **Working-paper dependency:** the chess-academy follow-up (Poulidis, Bastani & Bastani, SSRN 5604932) remains unpublished as of 2026-06. The Evidence Box now carries the SSRN ID and a re-verify-at-press instruction. If it fails peer review, Ch2's self-regulation argument loses its strongest single support (though Bastani 2025's guardrail contrast and the help-abuse ITS literature would still carry the direction).
- **Genre-lineage absence claims are now full-text-verified for the named ancestors** — the strongest verification this genre of claim admits. Do not let future edits extend "no withdrawal construct" to specific documents that were not checked.
- **Further Reading title shorthand** for Bastani (see Unverified table) — copyedit item.

## References

1. **Bastani, H., et al. (2025).** Generative AI without guardrails can harm learning. *PNAS*, 122(26), e2422633122. — CONFIRMED (+48%/+127% practice; −17% unassisted, GPT Base; parity, GPT Tutor). Aug 2025 correction affiliation-only.
2. **Poulidis, S., Bastani, H., & Bastani, O. (2025).** Self-Regulated AI Use Hinders Long-Term Learning. SSRN 5604932. — CONFIRMED as working paper (still unpublished 2026-06; ~64% vs. ~30% gains; re-verify at press).
3. **LearnLM Team (Google) & Eedi (2025).** AI tutoring can safely and effectively support students: An exploratory RCT in UK classrooms. arXiv:2512.23633. — CONFIRMED (+5.5pp transfer, 66.2% vs. 60.7%; 76.4% zero/minimal edits; N=165; "exploratory" in title).
4. **Wang, R. E., et al. (2024).** Tutor CoPilot. arXiv:2410.03017. — CONFIRMED (+4pp/+9pp/$20).
5. **Baker, R. S., & Hawn, A. (2022).** Algorithmic Bias in Education. *IJAIED*, 32, 1052–1092. — CONFIRMED.
6. **Bhat, M. (2025).** Toward an Ethic of Synthetic Relationality. *Proc. AIES-25*, 8(1), 416–429. doi:10.1609/aies.v8i1.36560. — CONFIRMED (n=344 survey).
7. **Bhat, M., & Long, D. (2025).** Emotional Plausibility vs. Emotional Truth. *Proc. AIES-25*, 8(1), 430–444. doi:10.1609/aies.v8i1.36561. — CONFIRMED (illusory-care framework; conflation with #6 resolved).
8. **Common Sense Media (2025).** *Social AI Companions: AI Risk Assessment* (with Stanford Brainstorm Lab). — CONFIRMED (unacceptable risk, under-18s).
9. **Kosmyna, N., et al. (2025).** Your Brain on ChatGPT. arXiv:2506.08872. — CONFIRMED as labeled (preprint, n=54, contested).
10. **Madaio, M. A., Stark, L., Wortman Vaughan, J., & Wallach, H. (2020).** Co-Designing Checklists… *Proc. CHI 2020* (Best Paper). — CONFIRMED (full text); "found … routinely decay" should soften to "warned" — correction recommended.
11. **Mitchell, M., et al. (2019).** Model Cards for Model Reporting. *Proc. FAT\* '19*. — CONFIRMED (full text; no withdrawal construct).
12. **Gebru, T., et al. (2021).** Datasheets for Datasets. *CACM*, 64(12), 86–92. — CONFIRMED (full text; no withdrawal construct).
13. **UK MoD, Def Stan 00-56.** Safety-case definition. — CONFIRMED (chapter paraphrase faithful).
14. **Stanford SCALE Initiative.** Evidence base on AI in K-12. — CONFIRMED (20 in 800+; repository now 1,100+).
