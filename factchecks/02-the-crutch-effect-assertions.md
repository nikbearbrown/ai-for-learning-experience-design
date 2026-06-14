# Assertions Report: 02-the-crutch-effect.md
**Date:** 2026-06-07 / **Source file:** chapters/02-the-crutch-effect.md / **Assertions flagged:** 12 / **Breakdown:** STAT: 6 | GUIDELINE: 0 | APPROVAL: 0 | EVIDENCE: 9 | SPECIALIST: 2 | CURRENT: 1

## ⚠️ Critical — Requires Immediate Expert Review
None at the severity of a load-bearing CONTRADICTED finding. One citation-level CONTRADICTED (chess working-paper author/title) and two UNVERIFIED claims (Kosmyna "peer-reviewed version appeared"; Liljedahl ~70% quadratic) are annotated and itemized below; the author should correct the chess citation and either source or soften the two UNVERIFIED claims.

## Full Findings

### EVIDENCE/STAT — CONFIRMED (findings) / CONTRADICTED (citation) — load-bearing
- **Assertion type:** EMPHATIC
- **Sentence:** "System-regulated students improved **64%**. Self-regulated students improved **30%** ... (Bastani et al., 'When Does AI Assistance Undermine Learning?', working paper ...)."
- **Claim checked:** 64% vs 30%; >200 chess students; 12-week program; system- vs self-regulated; escalation to a tip every 3–4 moves; students aware yet escalating; authorship and title of the paper.
- **Site visited:** https://knowledge.wharton.upenn.edu/article/when-does-ai-assistance-undermine-learning/ ; https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5604932
- **Finding:** All quantitative and behavioral findings CONFIRMED. Knowledge at Wharton (Feb 24, 2026): on-demand (self-regulated) students achieved "less than half the performance gains" — explicitly "30% vs. 64%"; >200 students, three-month program; by end, self-regulated students requested move-reveal tips "every three to four moves"; follow-up interviews confirm students knew it hurt them yet clicked anyway; effects persisted weeks after training. HOWEVER the CITATION is wrong: the working paper is **Poulidis, S., Bastani, H., & Bastani, O., "Self-Regulated AI Use Hinders Long-Term Learning"** (SSRN 5604932). "When Does AI Assistance Undermine Learning?" is the title of the Knowledge at Wharton article, not the paper, and the first author is the INSEAD doctoral student Stefanos Poulidis, not Bastani. (Secondary coverage + SSRN listing consulted; the underlying working paper itself was not fetched in full, but the title/authorship is established from both the Wharton article's hyperlink to SSRN and the SSRN record.)
- **Expert review needed:** Yes — correct the in-text citation to Poulidis, Bastani & Bastani (SSRN 5604932), and note that "When Does AI Assistance Undermine Learning?" is the press-coverage headline. Annotated inline.
- **Suggested reference:** Poulidis, Bastani & Bastani (2025), "Self-Regulated AI Use Hinders Long-Term Learning," SSRN 5604932.
- **Notes:** The chapter's "Bastani et al." attribution is defensible insofar as Hamsa Bastani is the senior PI and public face of the work, but Poulidis is first author and the title belongs to the article, not the paper. The chapter's "not yet peer-reviewed" caveat is accurate.

### EVIDENCE — CONFIRMED (Baker et al. 2004; Aleven & Koedinger)
- **Assertion type:** BASIC
- **Sentence:** "The intelligent-tutoring-systems field documented 'gaming the system' two decades ago ... (Baker, Corbett, Koedinger & Wagner 2004; Aleven & Koedinger's help-seeking work)."
- **Claim checked:** Baker et al. 2004 gaming-the-system; Aleven & Koedinger help-seeking.
- **Site visited:** Known references — Baker, Corbett, Koedinger & Wagner (2004), CHI 2004, "Off-task behavior in the Cognitive Tutor classroom: When students game the system"; Aleven et al. (2003), Review of Educational Research 73(3).
- **Finding:** Confirmed. Both are correctly characterized canonical ITS references on help-abuse and help-seeking. (Reference-level verification.)
- **Expert review needed:** No.

### EVIDENCE/STAT — CONFIRMED (Liljedahl ~20% / mimicking)
- **Assertion type:** BASIC
- **Sentence:** "Liljedahl's classroom studies ... found that on 'now-you-try-one' tasks after a worked demonstration, only about 20 percent of students actually try to reason it through; the rest slack, stall, fake, or mimic ..."
- **Claim checked:** ~20% reasoning on "now you try one"; four non-thinking behaviors (slacking, stalling, faking, mimicking).
- **Site visited:** https://theconversation.com/from-whiteboard-work-to-random-groups-these-simple-fixes-could-get-students-thinking-more-in-maths-lessons-203059 ; Liljedahl & Allan (2013) "Studenting: The case of 'now you try one'" (PME 37).
- **Finding:** Confirmed-consistent. The four non-thinking behaviors are exactly slacking, stalling, faking, mimicking; mimicking is the single most common at ~53%, and up to 80% of students show non-thinking behavior, which leaves roughly ~20% genuinely reasoning — consistent with the chapter's "about 20 percent actually try to reason." The mimics-believing-it's-compliance characterization matches Liljedahl's account. (Author's own popular write-up + conference-paper metadata consulted; the PME 2013 PDF timed out on fetch but the figures are corroborated across two independent secondary sources.)
- **Expert review needed:** No.
- **Suggested reference:** Liljedahl & Allan (2013), PME 37, Vol. 3, 257–264.

### EVIDENCE — UNVERIFIED (Liljedahl ~70% quadratic / four days)
- **Assertion type:** BASIC
- **Sentence:** "Liljedahl saw the same dissociation in classrooms: students fluent in collaborative work, of whom about 70 percent could not factor a similar quadratic four days later."
- **Claim checked:** ~70% of students could not factor a similar quadratic four days after fluent group work.
- **Site visited:** Liljedahl papers index, The Conversation summary, Building Thinking Classrooms PDF excerpt (peterliljedahl.com), Pershan critique (pershmail.substack.com).
- **Finding:** UNVERIFIED. This specific figure (70% / quadratic / four-day delay) was not located in Liljedahl's freely available papers or popular coverage. Liljedahl's published numbers cluster around engagement/uptake (53% mimicking, 80% non-thinking, 35% listening, 15% naming subtopics), not a delayed-retention quadratic statistic. It may originate in the *Building Thinking Classrooms* book (2021, Corwin), whose full text is inaccessible here. Per the project's full-text rule, this is UNVERIFIED ("full text inaccessible"), not CONTRADICTED.
- **Expert review needed:** Yes — supply a page citation from the BTC book if that is the source, or soften/remove the specific 70% figure. Annotated inline.
- **Suggested reference:** Liljedahl (2021), Building Thinking Classrooms in Mathematics, Corwin — pending page locator.

### SPECIALIST/EVIDENCE — CONFIRMED (Hattie effect sizes)
- **Assertion type:** BASIC
- **Sentence:** "summarization (*d* = 0.79), practice testing (*d* = 0.54), note taking (*d* = 0.50) ... Reclassifying Hattie's 252 influences ..."
- **Claim checked:** d-values for summarization, practice testing, note taking; 252-influence count.
- **Site visited:** https://visible-learning.org/hattie-ranking-influences-effect-sizes-learning-achievement/
- **Finding:** Confirmed. Summarization d = 0.79, practice/deliberate testing d = 0.54, note taking d = 0.50 all match the published Visible Learning rankings. The ~252-influence figure matches the VLPLUS-252 list. (Visible-learning.org consulted.)
- **Expert review needed:** No.

### EVIDENCE/SPECIALIST — CONFIRMED (offloading literature)
- **Assertion type:** BASIC
- **Sentence:** "cognitive offloading ... (Risko & Gilbert 2016)"; "Sparrow, Liu and Wegner (2011) ... the 'Google effect'"; "Storm and Stone (2015) showed that saving one file improves memory for the next."
- **Claim checked:** Three named offloading findings.
- **Site visited:** Known references — Risko & Gilbert 2016 (Trends Cogn Sci 20:676–688); Sparrow, Liu & Wegner 2011 (Science 333:776–778); Storm & Stone 2015 (Psych Science 26:182–188).
- **Finding:** Confirmed. All three correctly attributed and characterized (offloading definition; Google effect = remembering where over what; saving-enhanced memory). Reference-level verification.
- **Expert review needed:** No.

### EVIDENCE/STAT — CONFIRMED (Kosmyna findings) / UNVERIFIED (publication status)
- **Assertion type:** COMBINATION (EMPHATIC + I-LANGUAGE hedging)
- **Sentence:** "Kosmyna et al. ... (MIT Media Lab; arXiv:2506.08872, June 2025; a peer-reviewed version subsequently appeared — final venue to be confirmed [verify]). Fifty-four participants ... 'up to 55%' connectivity reduction ... a published critical commentary (arXiv:2601.00856) ..."
- **Claim checked:** n=54; 3 sessions + crossover session n=18; EEG connectivity ordering (Brain-only > Search > LLM); ~83% could not quote own essay; homogeneous essays; cognitive debt; the existence of a peer-reviewed version; the critical commentary.
- **Site visited:** https://arxiv.org/abs/2506.08872 ; https://pmc.ncbi.nlm.nih.gov/articles/PMC12723506/ (Br J Gen Pract commentary, full text) ; https://arxiv.org/abs/2601.00856 (full text of commentary) ; https://www.media.mit.edu/projects/your-brain-on-chatgpt/publications/
- **Finding:** Findings CONFIRMED: n=54 (sessions 1–3), 18 in session 4 crossover; connectivity scaled down with external support (Brain-only strongest, LLM weakest, "up to 55% reduced connectivity" — exact phrase corroborated by the BJGP commentary); 83% of LLM users unable to quote their just-written essays; LLM essays statistically homogeneous; crossover under-engagement; "cognitive debt" coinage; authors' own FAQ disclaiming "brain damage"/"dumber" framings. The critical commentary is real: Stankovic, Hirche, Kollatzsch & Doetsch (arXiv:2601.00856, submitted Dec 29, 2025), raising sample-size, reproducibility, EEG-method, reporting-inconsistency, and transparency concerns — exactly as the chapter describes. HOWEVER the claim "a peer-reviewed version subsequently appeared" is UNVERIFIED and likely inaccurate: MIT Media Lab's own publications page, PubMed, and Google Scholar coverage show only the arXiv preprint as of 2026-06-07. The commentary at 2601.00856 itself frames its suggestions as improving "the manuscript's readiness for peer-reviewed publication" — i.e., implying it was NOT yet peer-reviewed. The 2506.08872 record shows no journal-reference. Note the chapter also calls the commentary "published"; it is an arXiv preprint commentary, not a journal-published comment — a minor over-statement but parallel to the preprint it critiques.
- **Expert review needed:** Yes — revise "a peer-reviewed version subsequently appeared — final venue to be confirmed" to "remains an arXiv preprint as of mid-2026" unless the author has a specific journal citation. Annotated inline. Consider also softening "published critical commentary" to "a critical commentary posted to arXiv (2601.00856)."
- **Suggested reference:** Kosmyna et al. (2025), arXiv:2506.08872 (preprint); Stankovic et al. (2025), arXiv:2601.00856 (preprint commentary).
- **Notes:** The chapter's careful hedging ("single-source preprint, n=54," "engagement proxy not a learning outcome," "taken seriously for what it converges with, not for what it is") is exemplary and accurate. Only the publication-status sentence overshoots.

### EVIDENCE — CONFIRMED (Bjork desirable difficulties; Roediger & Karpicke; Kapur)
- **Assertion type:** BASIC
- **Sentence:** "Bjork's **desirable difficulties** (Bjork 1994; Bjork & Bjork 2011) ... Retrieval practice: testing beats restudy (Roediger & Karpicke 2006) ... Kapur's **productive failure** (2008; 2016) ..."
- **Claim checked:** Desirable-difficulties canon; retrieval-practice citation; productive-failure citations.
- **Site visited:** Known references — Roediger & Karpicke 2006 (Psych Science 17:249–255); Kapur 2008 (Cognition & Instruction 26:379–424), 2016 (Educational Psychologist 51:289–299).
- **Finding:** Confirmed. All correctly attributed and characterized; the desirable-difficulties → AI-removes-the-difficulty mapping is a fair reading. Reference-level verification.
- **Expert review needed:** No.

### EVIDENCE — CONFIRMED (Fan et al. 2025)
- **Assertion type:** BASIC
- **Sentence:** "Fan et al. (2025, *British Journal of Educational Technology*), pointedly titled 'Beware of metacognitive laziness.' In a lab study of essay-revision learning with four support conditions — ChatGPT, a human expert, a checklist, nothing — the ChatGPT group improved essay scores most but showed no greater knowledge gain or transfer, and trace data showed fewer metacognitive events ..."
- **Claim checked:** Four conditions; ChatGPT best essay-score improvement; no greater knowledge gain/transfer; fewer metacognitive events.
- **Site visited:** https://bera-journals.onlinelibrary.wiley.com/doi/abs/10.1111/bjet.13544
- **Finding:** Confirmed. Fan et al. 2025, BJET 56:489–530. Randomized lab study, 117 university students, four groups (control/no support, ChatGPT-4, human expert, checklist-based writing analytics). ChatGPT group outperformed on essay-score improvement but knowledge gain and transfer were not significantly different; SRL-process frequencies differed across groups (metacognitive laziness). All match. (Publisher abstract + secondary analysis consulted.)
- **Expert review needed:** No.

### EVIDENCE/STAT — CONFIRMED (Wang et al. 2024 — "Scaffold or Crutch?")
- **Assertion type:** BASIC
- **Sentence:** "Wang et al. (2024, arXiv:2412.02653) — 'Scaffold or Crutch?' — found 85% of surveyed STEM students reporting GenAI use for coursework, over half inputting problems directly for the AI to solve, and 38% simply copy-pasting. State the caveat ... 40 students plus 28 faculty ..."
- **Claim checked:** 85% used genAI; >half input problems for AI to solve; 38% copy-paste; n=40 students + 28 faculty.
- **Site visited:** https://arxiv.org/abs/2412.02653 ; https://arxiv.org/html/2412.02653v1 (full HTML consulted)
- **Finding:** Confirmed against full text. Of 40 surveyed students, 34 (85%) used genAI tools for coursework. 38% would "copy/paste or paraphrase the problem and ask AI to solve" it, plus an additional 16% who copy-paste and provide additional context — so "over half inputting problems directly" (38%+16% = 54%) is accurate, and the standalone "38% simply copy-pasting" is the exact table value. Sample = 40 students + 28 faculty. Authors: Wang, Wu, Tufts II, Wieman, Salehi, Haber. All confirmed at full-text level.
- **Expert review needed:** No. The n=40 caveat is correctly stated.
- **Suggested reference:** Wang et al. (2024), arXiv:2412.02653.

### STAT — CONFIRMED ([verify] RESOLVED — HEPI/Kortext)
- **Assertion type:** BASIC
- **Sentence:** "the HEPI/Kortext 2025 UK survey (n≈1,000+) found roughly 88% of undergraduates had used GenAI for assessments in some form [verify exact figure]."
- **Claim checked:** ~88% of students used GenAI for assessments; n≈1,000+.
- **Site visited:** https://www.hepi.ac.uk/reports/student-generative-ai-survey-2025/ ; https://www.hepi.ac.uk/2025/02/26/hepi-kortext-ai-survey-shows-explosive-increase-in-the-use-of-generative-ai-tools-by-students/
- **Finding:** Confirmed. HEPI/Kortext Student Generative AI Survey 2025 (Josh Freeman, Policy Note 61, published Feb 26 2025, n = 1,041 via Savanta): students using genAI for assessments rose from 53% (2024) to **88%** (2025). Exact figure matches. [verify] flag RESOLVED and removed from chapter text.
- **Expert review needed:** No.
- **Suggested reference:** Freeman (2025), HEPI Policy Note 61.

## Unverified Assertions
| Assertion | Reason |
|---|---|
| Liljedahl ~70% could not factor a quadratic four days later | Specific figure not found in accessible papers; possibly from BTC book (full text inaccessible). UNVERIFIED per full-text rule. Annotated. |
| Kosmyna "a peer-reviewed version subsequently appeared" | No peer-reviewed version located on MIT Media Lab pubs page, PubMed, or Scholar as of 2026-06-07; evidence points to it remaining a preprint. UNVERIFIED, likely inaccurate. Annotated. |
| "no fading ... least-studied pattern in GenAI tutoring" | Book-flagged as its own evidence-informed extrapolation ("labeled as such"). Self-owned; not independently checkable. |
| Bastani GPT Base "error-propagation trail" (errors propagated verbatim) | Mechanism from Bastani full text (paywalled); consistent with Ch.1 framing and the paper's thesis. Not re-verified against full text. |

## AI-Pass Flags
None. Internal consistency is strong: the chapter repeatedly and correctly distinguishes assisted vs unassisted vs engagement-proxy endpoints, explicitly tags the chess paper as not-yet-peer-reviewed, tags Kosmyna as single-source/engagement-proxy, and tags Wang's n=40 caveat. The "five crutch patterns" and "no fading" extrapolation are labeled as the book's constructs. The only issues are the three citation/status items above (chess authorship/title; Kosmyna publication status; Liljedahl 70% sourcing), all annotated — none are internal contradictions.
