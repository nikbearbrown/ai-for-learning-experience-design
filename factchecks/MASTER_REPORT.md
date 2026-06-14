# Master Fact-Check Report

**Book folder:** ai-for-learning-experience-design (*AI for Learning Experience Design — Scaffold or Crutch: Designing AI-Mediated Learning*)
**Date:** 2026-06-07
**Total files processed:** 18 (frontmatter, 15 chapters, fundamental-themes appendix, back matter)
**Method note:** Run under the full-text rule learned on the companion volume — any CONTRADICTED/OUTDATED verdict about a paper's *content* was verified against the paper's full text, never the abstract; absence claims required full text or were downgraded to UNVERIFIED. Several spine papers (Bastani PNAS + SI, Mitchell model cards, Gebru datasheets, Madaio, LearnLM/Eedi, both Bhat AIES-25 papers) were read in full.

**Field adaptation:** education/AI sources — PNAS/PubMed, Google Scholar, arXiv, publisher pages, ADL (xAPI), CAST/W3C, EDUCAUSE, The Markup, EU AI Act/EC guidance, AAAI proceedings.

---

## Overall result

The book held up better than the companion volume — a consequence of the author revision tightening the chapters and of this book's heavier `[verify]`/`[contested]` self-flagging, most of which this pass resolved. **No load-bearing study was misrepresented.** The corrections are citation-level (wrong author, wrong first-author, one inverted dimension table, one stale effect-size figure), and every one was applied inline by the checking pass. The single highest-risk item — the three-way Bhat citation tangle that the LXD book got wrong — is **clean here**: the author's revision carried the correction, verified against both AAAI PDFs.

## Critical findings (all corrected inline)

### 1. Ch9 — Steiss et al. 2024 feedback-dimension claim was INVERTED — **CONTRADICTED → corrected**
The chapter had humans winning on "localization" and "criteria-linked commentary" with AI competitive on clarity/tone. Full text: humans scored better on every dimension *except* criteria-based; "localization" isn't a scored construct; ChatGPT was slightly *better* on reasoning/argumentation/evidence. The directional headline (humans win overall, 4.0 vs 3.6) was right. Prose + Evidence Box row corrected.

### 2. Ch10 — wrong fourth author on the detection study — **CONTRADICTED → corrected**
"Scarfe, Watcham, Clarke & Hamill" → correct is **Roesch** (Scarfe et al. 2024, PLOS ONE 19(6):e0305354). Findings (94% undetected; AI grades ~half a boundary higher) confirmed.

### 3. Ch2 / Ch15 — chess-academy paper misattributed — **CONTRADICTED (authorship) → corrected**
Findings (64% vs 30%, 200+ students, escalation despite awareness) all confirmed, but the paper is **Poulidis, Bastani & Bastani, "Self-Regulated AI Use Hinders Long-Term Learning" (SSRN 5604932)** — Poulidis is first author, and "When Does AI Assistance Undermine Learning?" was the Wharton headline, not the title. Still an unpublished working paper as of June 2026 — re-verify at press.

### 4. Ch7 (and Ch4) — the "+0.04 Cognitive Tutor" figure won't reconcile — **flagged inline for print**
Not reproducible from the June 2016 WWC report (domain averages ≈0.11 algebra / ≈0.05 general math; improvement index +4). Pane et al. RAND year-two ≈+0.20 confirmed. Likely an effect-size/improvement-index units confusion. Corrected where the chapter stated it; the argument doesn't depend on the value. (Same figure flagged in the companion volume — a shared-source artifact.)

### 5. Ch7 — Cao et al. figures were under-cautioned — **corrected**
The 30–50%/15–25% figures *are* in the published abstract (the chapter said they couldn't be confirmed). Rewritten to state them with the correct caution: asserted as a synthesis conclusion, untraced to primary studies, low-prestige venue.

### 6. Ch12 — agentic deployment/governance numbers pinned and corrected
Production deployment is **11%** (Deloitte 2025), not "single digits/~9%"; governance-ready 12% is HBR's own (86/6 confirmed, 603 leaders). MIT Sloan definition pinned (Stackpole, Feb 2026). Einstein chronology corrected (the open letter preceded the launch; Instructure issued a cease-and-desist). Art. 5(1)(f) emotion-inference prohibition flagged as biometric-scoped per EC Feb-2025 guidance — affect-from-logs is an unsettled legal boundary (counsel note).

## The spine held (full-text or primary verified)

Bastani et al. 2025 PNAS (+48/−17/+127/≈0, the 57-prompt GPT-Tutor design, arithmetic-error signature; Aug 2025 correction affiliation-only); LearnLM/Eedi +5.5pp exploratory (CI [−1.4,+12.4], 93.6% posterior — the bold prose reads more settled than the Bayesian summary; flagged); Tutor CoPilot +4/+9pp (900 tutors / 1,800 students — resolved the [verify]); SCALE 20-in-800; Kraft 2020 benchmarks; VanLehn 2011 (0.76/0.79 — resolved); Wood/Bruner/Ross 1976, Chi, Renkl & Atkinson, Kalyuga, Baker 2004, Corbett & Anderson BKT, Piech DKT; Baker & Hawn 2022, TNTP, ABROCA, **DEWS 74% (The Markup 2023; DPI pulled the dashboards Oct 2023)**, Ofqual (39%/3% — resolved); Lee & Moore 2024, the 77-study review, IRRODL n=108, Scarfe/Liang detection rates, Messick/Kane, Corbin/Dawson/Liu; **both Bhat AIES-25 papers correctly cited**, Lee & See, Schilke & Reimann, WGU toplines (the 40%+ non-user figure resolved to 41%); HBR 86/6, EU AI Act Annex III/Art. 14/Aug-2-2026, Sheridan & Verplanck lineage, IgniteAI; Long & Magerko, UNESCO frameworks, **Sperling et al. 2024** (correctly dated), SAILD = Yue/Jong/Dai 2025 (skills-dimension qualitative caveat honored); arXiv 2604.04721 N=1,222 unassisted-deficit replication (preprint status explicit); Mitchell 2019 + Gebru 2021 (full-text — the "no withdrawal construct" absence claim verified), Madaio 2020 (compliance-theater claim softened from "found checklists decay" to "warned").

## [verify] markers resolved this pass

~20 inline markers cleared across the book (VanLehn ×2, Tutor CoPilot ns, WWC figure, Yang & Stefaniak / Kumar / Palani & Ramos pinned, Ofqual, DEWS aftermath, PLĀ confirmed-absent, HEPI/Kortext 88%, EVER authorship, Hwang & Lee, Texas A&M outcome, WGU non-user segment, HBR/deployment numbers, MIT Sloan, SAILD authors, Sperling date, arXiv preprint status). 17 [verify] markers remain — the genuinely open ones (Kosmyna's still-unpublished venue, Liljedahl's BTC-book figures behind a paywall, the zero-GenAI-fading-RCT absence claim by nature, standing "verify at each offering" product-scope markers, the AILit final competency count, the biometric-scope legal boundary).

## Watch-outs for future editors (do NOT "correct" these)

- **Several chapters' Exercise blocks contain deliberately planted failure-mode artifacts** (Ch4 "StatCoach AI" with an inflated and a nonexistent citation; Ch8 "StatTutor" routing audit with three planted flaws) — pedagogical, with answer keys. Not errors.
- **Ch97 (appendix)** is manifesto register by its own preamble. The dopamine/BDNF/dendritic-spine consolidation chain is defensible component-by-component but overdrawn as a strict universal "no friction → no consolidation" conditional (best established for reward learning; spacing/sleep/retrieval also consolidate) — documented here, not flagged inline. The "17 percentage points" phrasing simplifies a 17% relative reduction (the body states it precisely). Tier 3 has no body heading — confirm intentional.
- **LearnLM transfer (+5.5pp)** point estimate is correct but its credible interval crosses zero — keep the prose from hardening into a settled claim.
- **Ch3 Figures 3.2/3.5 PNGs** still bake "ns unverified" into the image now that 900/1,800 is confirmed — regenerate those two captions on the next figure pass.

## Chapter-by-chapter summary

| File | Flagged | Critical | Contradicted | Corrected inline | Confirmed |
|---|---|---|---|---|---|
| 00-frontmatter | 0 | 0 | 0 | 0 | 0 |
| 01-two-layers | 11 | 1 | 1 (minor) | 1 | 10 |
| 02-crutch-effect | 12 | 1 | 1 (citation) | 1 | 9 |
| 03-scaffold | ~10 | 1 | 1 (WWC) | 1 | 9 |
| 04-reading-evidence | ~12 | 1 | 0 | 1 (+0.04 flag) | 10 |
| 05-design-partner | ~11 | 0 | 0 (1 label) | 1 | 9 |
| 06-tutoring | ~11 | 1 | 0 | 0 | 10 |
| 07-adaptive-systems | ~11 | 1 | 1 (Cao) | 2 | 8 |
| 08-routing-equity | ~12 | 0 | 0 | 0 | 11 |
| 09-content-feedback | ~11 | 1 | 1 (Steiss) | 1 | 9 |
| 10-assessment | ~11 | 1 | 1 (Scarfe author) | 1 | 9 |
| 11-trust-transparency | ~10 | 0 | 0 | 0 | 8 |
| 12-agentic-ai | ~8 | 1 | 0 | 4 (pins) | 9 |
| 13-ai-literacy | ~9 | 0 | 0 | 0 | 9 |
| 14-evaluating | ~10 | 0 | 0 | 0 | 10 |
| 15-full-integration | 14 | 1 | 1 (Bhat resolved) | 1 | 12 |
| 97-fundamental-themes | 6 | 0 | 0 | 0 | 3 |
| 99-back-matter | 0 | 0 | 0 | 0 | 0 |

## Recommended next steps

The book is in strong factual shape and all genuine corrections are already applied — no editorial action is *blocking*. Before freeze: (1) recompute or re-source the +0.04 Cognitive Tutor figure (Ch4, Ch7) against the WWC PDF; (2) confirm the chess working paper's publication status at press and update the Poulidis et al. citation; (3) regenerate the two Ch3 figure captions that still say "ns unverified"; (4) soften the LearnLM transfer prose to match its credible interval; (5) decide the standing-marker policy (Kosmyna venue, fading-RCT absence claim) for the print edition. The EVIDENCE and STAT categories produced the most flags — correct for an evidence-first book — and they held. No fabricated citation was found in the book's own prose; the only fabricated citations present are the deliberately planted ones in the exercises.
