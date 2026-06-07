# Chapter 15 — The Full Integration: One Experience, Every Guardrail

**Week 15 · Act Three — Apply · FINAL PROJECT: Integration Specification (250 pts)**

---

## Learning Objectives

By the end of this chapter, you will be able to:

1. **Produce** a complete AI integration specification for a real learning experience: interaction specs, guardrails, routing audit, content/feedback boundaries, assessment redesign, transparency layer, agentic boundaries, learner-side design, and evaluation plan — every claim evidence-weighted. *(Bloom: Create — Track A: the instructor's case plus a required own-context section; Track B: your own project, complete)*
2. **Review** a peer's specification using the scaffold/crutch diagnostic before final presentation. *(Bloom: Evaluate — Tracks A and B)*
3. **Defend** the specification to a skeptical reviewer — including at least one AI feature you declined to build, with the evidence for declining. *(Bloom: Create/Evaluate — Tracks A and B)*

---

## Opening Case: What Does Done Look Like?

*Sourced to this course: the instructor's complete Track A specification for the DataWise 101 statistics tutor, built in segments across Chapters 12–14 and the Act Two labs, presented whole. The pilot data behind its evaluation section is the course's provided package — synthetic, labeled as such throughout.*

On the last studio day, before any student presents, the instructor presents — and takes the same review the students will face. On screen: the complete integration specification for the AI homework tutor in DataWise 101, the statistics course this course has carried since Week 2. Fourteen sections, thirty-one pages, one spine.

What "done" looks like, walked in argument order: the experience and its learning claims; the evidence posture — three buckets: decisions standing on causal evidence, on pilot measurement, or declined outright; the touchpoint inventory; the tutoring interaction spec — hint ladder with the answer that is never given, reasoning gates, fading schedule (Week 6); the adaptivity decision (Week 7) and the routing audit with its named blind spot — part-time students, data not collected (Week 8); content and feedback boundaries (Week 9); the assessment redesign with its no-AI windows (Week 10); the transparency layer with the single-click human escape hatch (Week 11); the agentic boundaries — what the tutor may do unprompted, which is almost nothing (Week 12); the learner-side layer — check-the-tutor, reliance dashboard, no-AI-zone map (Week 13); the evaluation plan, unassisted performance primary, durability clause intact (Week 14).

Then the two sections no vendor document carries. **Section 13: the negative specification** — three AI features the tutor will not have, each with the evidence for declining and the condition that would reopen it. The room reads the first one twice: the "Study Buddy" companion mode, the feature every focus group requested, declined. **Section 14: the open questions** — including the one the field cannot answer: the longest measured delay in the evaluation plan is six weeks, and DataWise students will use tools like this for four years. *What four years of this does to a learner is not known. No longitudinal study exists. Here is the next-course linkage we have requested, and the cohort comparison that would know more in three years.*

A student raises the obvious objection: "You're presenting a specification whose central long-term claim is 'not yet known.' Why does this count as done?"

The instructor's answer is this chapter: **done, in this discipline, does not mean every question is closed. It means every touchpoint is accounted for** — guardrailed by evidence, opened to measurement, or declined — and every open question named, with the measurement that would close it. A specification claiming more than that is not more finished. It is less honest — and fourteen weeks of this course have equipped the room to see exactly where.

---

## Prerequisites

This chapter assumes you have:

- **Every prior design-lab artifact, Weeks 5–14**, in whatever state it honestly is. The Week 2 warning has come due: a skipped week is a hole in the specification exactly where that decision should be. Holes are disclosed, not papered (15.2 tells you how).
- **The Evaluation Plan Checkpoint** (Chapter 14) — the specification's spine and the defense's hardest section.
- **The scaffold/crutch diagnostic** (Week 4 midterm format) — now aimed at a peer's specification, and theirs at yours.

---

## Core Content

### 15.1 The Integration Specification as Genre

The document you are assembling has ancestors, and knowing them tells you what the genre demands.

From **safety engineering** it inherits the *safety case*: a structured argument, supported by evidence, that a system is acceptably safe for a specific use in a specific context — not a description of the system, an *argument* about it, every claim traceable to evidence or flagged as assumption [verify — safety-case practice per safety-engineering literature; lineage claim, not a single citation]. From **machine-learning documentation** it inherits the model card and its relatives: Mitchell et al.'s model cards disclose intended use, out-of-scope use, and evaluation results disaggregated by subgroup (Mitchell et al. 2019 [verify]); Gebru et al.'s datasheets force provenance questions a spec sheet never asked (Gebru et al. 2021 [verify]); the system cards published with frontier models extend the form to deployed behavior. The family resemblance is real: intended use, boundaries, subgroup evaluation, known limitations, stated honestly.

And then the inheritance stops, at the exact point this book exists to mark. **No industry documentation template contains a withdrawal claim.** A model card tells you how the system performs; a system card, how it behaves under adversarial pressure. None of them asks — because for most AI products the question is meaningless — *what the human can do when the system is gone*. In learning, that question is not one disclosure among many; it is the product. Your specification is therefore a new genre member: every section terminates in the Withdrawal Test, and the evaluation section stakes the success claim on unassisted performance. That is the difference between documenting an AI system and specifying an AI *integration into learning* — and the reason you could not have downloaded this template from any vendor.

Structurally, the specification is an argument, not a binder. The unit is the **decision trace**: what the learner needed to be able to do → what the evidence said → what we designed, declined, or deferred → how we will know. Each Act Two artifact appears as evidence for a step in that trace, captioned by the decision it served, not by what it is. A reviewer should be able to enter at any touchpoint and reach the evidence in two hops.

### 15.2 The Negative Specification: Designing the Word "No"

The course promised a designer who can "correctly decline an AI feature the evidence says will become a crutch." Here declining becomes a documented artifact rather than a hallway anecdote.

The **negative specification** lists the AI features this integration will not include — each as a dossier, not a gesture: the feature as proposed (steelmanned: what made it attractive, who asked for it); the evidence for declining (specific findings, with endpoint types — a feature declined on vibes is just taste); the harm pathway (which mechanism from this course it would trigger); and the **reopen condition** — the specific evidence that would reverse the decision. The reopen condition separates evidence-disciplined declining from technophobia: a "no" with a reopen condition is a falsifiable position; a bare "no" is a mood. (This book practices the form on itself — its out-of-scope table defers longitudinal reliance effects, equity-positive personalization, and the agentic pattern canon, each with its reopen condition.)

Why force this into the document? Three reasons. First, declined features are where the thesis bites: anyone can add guardrails to what they build; the discipline shows in what they refuse to build, because the crutch is the default and the default is always somebody's feature request. Second, undocumented declines do not stay declined — next year's product manager re-proposes the companion mode, and without the dossier the argument must be re-fought from memory, against fresh enthusiasm, by whoever is left. The negative specification is institutional memory for the word "no." Third, the dossier is your defense's strongest section: the one place you demonstrate judgment *against* your own incentives.

About holes, as promised: a missing artifact, disclosed — "the routing audit could not see part-time students; decisions it grounds are flagged accordingly" — costs points once. The same hole papered over costs the specification its credibility everywhere, because a reviewer who finds one silent gap stops believing the rest. Disclosure is calibration, and calibration is the product you are selling.

### 15.3 The Defense: Studio Crit for a Skeptical Board

The specification is defended live, under a studio-crit protocol adapted to the course's evidence discipline. The format, both tracks:

1. **Presentation (10 minutes):** the decision spine only — six to ten traces, including at least one declined feature. Not a tour of artifacts.
2. **Peer cross-examination (15 minutes):** your classmates, armed with the scaffold/crutch diagnostic and your document, read in advance (Section 15.4 — they have already filed written findings).
3. **The skeptical-reviewer segment (10 minutes):** the instructor (or an invited practitioner) plays the review board that funds things. Expect the four canonical attacks: *engagement* ("your own data shows learners love the feature you declined"); *cost* ("proctored unassisted assessment is friction — justify it"); *durability* ("what does this tell me about year four?"); *vendor* ("the platform we already license does all this out of the box — why is your spec better than their brochure?").
4. **The declined-feature defense (required):** defend at least one "no" — evidence, harm pathway, reopen condition — against a reviewer instructed to advocate for the feature.

Two answers pass that students reliably underuse. First: **"not yet known — and here is the measurement that would know it, by this date, at this cost."** Said with a date and a number, that is an engineering answer; the defense's hardest moment is saying it to a skeptical face without retreating into a claim you cannot license. Second: **pointing at the document** — "that risk is named in Section 14, with its instrumentation" — because a defense is not improvisation; it is demonstrating the document already thought of it. What fails: claim inflation under pressure (your peers have your two registers side by side); answering the engagement attack with engagement counter-data instead of the endpoint argument; and treating the vendor attack as beneath you rather than answering it on the merits — the brochure encodes interaction design intent, and your Week 4 deconstruction skills apply verbatim.

### 15.4 The Failure Mode: Compliance Theater

There is a way to produce all fourteen sections and still fail, and the field has documented it. Madaio et al. (2020), co-designing AI fairness checklists with practitioners, found that ethics checklists routinely decay into checkbox compliance — performed conformance that changes documents rather than systems — unless checklist items are anchored to specific decision points in the actual workflow [verify — Madaio, Stark, Wortman Vaughan & Wallach, CHI 2020; cited from the literature, not from this book's research notes]. The educational-AI version has a recognizable face: the specification whose every guardrail is **policy prose rather than interaction design** *(illustrative case)* — "the system shall promote academic integrity" (no mechanism), "learners will be encouraged to verify outputs" (no trigger, no frequency, no credit), "AI use will be appropriately supervised" (by whom, visible where?). Every sentence is agreeable; no sentence is buildable; the document would survive any review except a build review.

The test that catches it is mechanical, and your peer review applies it to every guardrail: **can this sentence be implemented, and could its absence be detected?** A guardrail that names no interface element, no trigger, no log, and no failure response is not a guardrail; it is a wish wearing one's clothes. The Pattern Cards you have collected all term are the antidote — fourteen weeks of trigger/structure/fading-rule/failure-mode formatting exist so that, this week, nothing in your specification can be vague without looking vague.

The peer-review protocol, then: each student reviews one peer specification with the scaffold/crutch diagnostic, filing written findings against seven named defects — hidden answer-giving (trace the hint ladder to its floor), missing unassisted endpoints, vendor claims imported without deconstruction, invisible routing, weak human escalation, anthropomorphic cues without a vulnerability analysis, unbounded agent actions — plus the compliance-theater sweep. The review is graded on findings quality, not politeness; the best outcome for your final grade is a peer who catches your missing withdrawal endpoint *this* week.

### 15.5 The Designer as the Causal Variable

Fourteen weeks ago you met a table you could not explain. The same model — identical weights, identical capabilities — made learners dramatically better with it and measurably worse without it in one row, and better with it and no worse without it in the next. Everything since has been the explanation: the difference between the rows was a system prompt and a conversation structure. Somebody *designed* row one, probably without meaning to. Somebody designed row two on purpose.

That is the professional identity this course has been building: **in AI-mediated learning, the designer is the causal variable.** Not the model — capability rises every quarter and the table's lesson survives it by construction. Not the learner — Chapter 2 closed the self-regulation hatch; shortcut-seeking is rational in the moment, and structural guardrails are the answer to rational behavior. Not the vendor — the brochure encodes intent, and intent is not an endpoint. The variable left is you: the interaction design, the guardrails, the transparency, the fading, the audit, the evaluation keyed to what the learner can do alone — and the features you declined.

This identity carries obligations adjacent professions will not enforce for you. The evidence base is thin — roughly twenty high-quality causal studies under the field's strictest screens — and practice is years ahead of it; institutions are making irreversible architectural decisions on pilot decks you now know how to read. The populations most at risk are the most aggressively marketed to. Nobody in the procurement chain is paid to add the missing column. The specification genre is how a single designer makes honesty structural instead of heroic: claims pre-specified, limits as clauses, the "no" with a dossier, and the withdrawal question asked in writing where no meeting can unask it.

---

## Mid-Chapter Checkpoint (ungraded)

1. What does your specification contain that no model card, system card, or vendor template contains? (The withdrawal claim — a stated, measurable position on what the learner can do when the AI is gone. If you said "guardrails," reread 15.1; model cards have limitations sections too.)
2. What converts a declined feature from taste into evidence-disciplined design? (The dossier: steelman, evidence with endpoint types, harm pathway, reopen condition. If you skipped the reopen condition, reread 15.2.)
3. A guardrail reads: "The tutor will encourage productive struggle." What is wrong, and what is the test? (Policy prose — not implementable, absence not detectable. Reread 15.4.)
4. The skeptical reviewer asks what your integration does over four years. The passing answer? (Not yet known — no longitudinal evidence exists — plus the named measurement, date, and cost that would know more. Reread 15.3, and say it out loud once before the defense.)

---

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Same model, opposite unassisted outcomes under different interaction designs (+48%/−17% vs. +127%/no deficit) | Bastani et al. (2025), *PNAS* | Assisted + unassisted, randomized | Verified — the spine; the table the book opened with and closes on |
| Self-regulated help-seeking harms long-term outcomes | Bastani chess-academy follow-up | Behavioral | Working paper [verify publication status before press] |
| Human-supervised AI: +5.5pp transfer; self-labeled exploratory | LearnLM/Eedi RCT [verify — arXiv 2512.23633] | Transfer, randomized | Verified via synthesis; exploratory by its own title |
| AI support lifts weakest tutors most (+9pp) | Tutor CoPilot (arXiv 2410.03017) | Distributional, randomized | Verified — the equity-positive exemplar |
| Subgroup evaluation mandate | Baker & Hawn (2022), *IJAIED* 32 | Review | Verified — canonical |
| Human-like cues construct illusory relational care; documented vulnerabilities in companion-AI users (n=344) | Bhat & Long (AIES 2025) [contested — see pantry flag: earlier book documents conflated venue and authorship; confirm against the AIES PDFs] | Survey + design analysis | Verified to exist; framework names pending primary-source check |
| Social AI companions: unacceptable risk for minors | Common Sense Media (2024–2026) | Practitioner risk assessment | Verified in shape [verify figures]; observational |
| Cognitive debt: declining neural engagement with generative offloading | Kosmyna et al. (2025) | Neurological (EEG), n=54 | Single study, published criticism — candidate mechanism only [contested] |
| Fairness checklists decay into checkbox compliance unless anchored to workflow decision points | Madaio et al. (2020), CHI | Qualitative co-design | [verify — cited from the literature, not this book's research notes] |
| Model cards / datasheets as documentation lineage | Mitchell et al. (2019); Gebru et al. (2021) | Documentation frameworks | [verify both] — lineage only; neither contains a withdrawal construct |
| ~20 high-quality causal studies in 800+ papers; zero longitudinal | Stanford SCALE + converging meta-reviews | Evidence mapping | Verified via synthesis — the honesty floor under every defense answer |

**What remains unsettled:** everything in Still Puzzling — which, this week, is not a section of a chapter but the state of the field you are graduating into.

---

## The Pattern Card

**PATTERN: The Full Integration Specification** *(the master card — this TOC is the required structure of the final deliverable, both tracks)*

| § | Section | Source chapter | Terminates in |
|---|---|---|---|
| 1 | The experience and its learning claims | 1, 10 | The claims the AI must not invalidate |
| 2 | Evidence posture (three buckets: act / pilot-and-measure / decline) | 4 | Bucket assignment per AI decision |
| 3 | AI touchpoint inventory (two-layer map) | 1, 5 | Withdrawal Test answer per touchpoint |
| 4 | Tutoring interaction spec: hint ladder, reasoning gates, fading, escalation | 3, 6 | The answer never given; the fading prediction |
| 5 | Adaptivity decision (or the documented decision not to adapt) | 7 | Pacing vs. personalization classification |
| 6 | Routing equity audit + counter-patterns | 8 | Named harms; "what the audit could not see" |
| 7 | Content/feedback boundaries: AI generates / human validates / human authors / learner is told | 9 | The boundary table |
| 8 | Assessment redesign: three-question framework, no-AI windows | 10 | The validity claim, stated |
| 9 | Transparency and trust layer: disclosure, AI role, escape hatch | 11 | Single-click human escalation, verified present |
| 10 | Agentic boundaries: may-do-unprompted / never-without-a-human, notification, reversibility, audit log | 12 | Bounded authority table (labeled inference from policy) |
| 11 | Learner-side design layer: embedded literacy patterns, calibration, reliance dashboard | 13 | What the experience teaches about the AI |
| 12 | Evaluation plan: four endpoints (unassisted primary), subgroups, reliance trajectory, durability clause, two registers | 14 | The pre-written success claim |
| 13 | **Negative specification**: declined features — steelman, evidence, harm pathway, reopen condition | 15 | The word "no," with a dossier |
| 14 | **Reliance Disclosure (final form) + open questions** | 15 | Three evidence-overruled decisions; one structurally open risk; the closing measurement |
| | **Failure modes (whole document)** | | Policy prose where interaction design belongs (15.4); silent holes; diverging registers; an empty §13 — a spec that declined nothing wasn't disciplined, it was agreeable |

---

## Worked Example: The DataWise Specification, Whole

*Act Three concluded — the instructor's complete specification for the Track A statistics tutor, assembled from the segments built in Chapters 12–14 plus the Act Two artifacts. Pilot data synthetic and labeled. This is the document the opening case put on screen; here is how it got there and what it still cannot say.*

**Situation.** DataWise 101: four sections, ~480 students per year, required for six majors; the AI homework tutor was proposed two years ago in the companion course's Week 12 decision memo. Every artifact from Weeks 5–14 exists. The task is assembly into one defensible document — and assembly turns out to be a design act, not a stapling act.

**The problem as the designer sees it.** Three problems surface. The artifacts disagree in places — the Week 6 fading schedule promised contraction signals the Week 13 dashboard wasn't instrumenting; assembly is where seams show. The document has two audiences with opposite failure modes — a build team that needs triggers, a review board that needs argument. And the strongest student request from the focus groups — a persistent, friendly "Study Buddy" persona with session memory — is in no artifact, because the evidence had already said no, and that "no" existed only as a meeting memory.

**Process — including the dead ends.** First assembly pass: chronological by course week. Dead end — reviewers couldn't trace any claim without reading everything; reordered into the master Pattern Card's argument order. Second dead end: guardrails drafted as institution-friendly policy language ("the tutor supports academic integrity…") to ease committee approval — caught by the compliance-theater test (15.4); every guardrail rewritten as trigger/structure/failure-mode, policy prose demoted to a preamble. Third dead end, the instructive one: the negative specification originally read as one dismissive line ("no companion features — see Bhat & Long"). The steelman requirement forced honesty about why the feature kept returning: the focus-group enthusiasm was real, retention pressure is real, and a one-line "no" would not survive the first product meeting after the course ends. The dossier got built properly:

> **Declined feature: "Study Buddy" companion mode** (persistent persona, session memory, affirming register, proactive check-ins). *Steelman:* highest focus-group demand; plausible retention gains; competitors ship it. *Evidence for declining:* relational cues construct illusory care, with documented vulnerability patterns in companion-AI users (Bhat & Long, AIES 2025 [contested — see Evidence Box]); engagement-optimization is the named crutch vector — loving a feature and learning from it dissociate (Bastani et al. 2025); independent practitioner assessment puts relational companion AI in its highest risk class for younger users (Common Sense Media). *Harm pathway:* trust miscalibration → reduced verification → flattened reliance curve → unassisted deficit concentrated in exactly the anxious learners the persona comforts (Klarin et al. 2024). *Reopen condition:* a controlled study showing relational framing improves **unassisted** outcomes without degrading verification — measured, not asserted. Until then: the tutor stays visibly a tool. *Also declined (dossiers in §13):* one-tap full-solution mode (Bastani GPT Base row; chess-academy hatch-closing); autonomous deadline rescheduling (Chapter 12 boundary — agent may suggest, never act).

The **defense run-sheet** came last — one row per anticipated attack: *engagement* → answer from the endpoint architecture, not counter-engagement data; *cost* → proctored isomorph sets priced against the cost of scaling a crutch unmeasured; *vendor* → brochure-deconstruction of the licensed platform's "Socratic mode" (no fading schedule, no unassisted endpoint, no subgroup reporting — intent without instrumentation); *durability* → the open question, answered in the only honest register available.

**Resolution.** Fourteen sections; every guardrail implementable and its absence detectable; the three evidence-overruled decisions named in the final Reliance Disclosure (companion mode declined against demand; full-solution mode declined against convenience; satisfaction demoted from every effectiveness claim against the dean's preference for one number). And §14 ends on the honestly-open question, verbatim from the opening case: *the longest measured delay is six weeks; the field has no longitudinal evidence; what four years of AI-mediated coursework does to a learner is not known.* The next-course linkage and the three-year cohort comparison are specified, costed, and — this is the point — already requested, in writing, where the request cannot be quietly forgotten.

**The lesson.** Assembly is the last design decision: the specification is one argument with fourteen exhibits, and the sections nobody requires — the negative specification and the open questions — are what make the rest believable.

**The limit.** This specification governs one tutor, in one course, against one term of synthetic pilot data; its strongest claims are one-term claims, and it says so. And the genre is first-generation: no industry standard exists for integration specifications, so the document cannot inherit credibility from its form the way a safety case can — it must earn all of it from its evidence discipline. That is harder, and for now it is the job.

### Track A and Track B, structurally

**Track A:** the instructor's case rebuilt in your own words and decisions — graded disagreement with evidence outranks agreement without it — **plus the required own-context section**: one full decision trace (touchpoint → evidence → design or decline → measurement) transposed to a context you know personally, demonstrating the method travels with you and not just with the case. **Track B:** your own project, all fourteen sections, with the Track B standard carried to the end — disclosures cite project-specific evidence (logs, learner data, named constraints), not generic risk language.

---

## Exercises

**15.1 — FINAL INTEGRATION SPECIFICATION** *(Create — production exercise; 250 pts).* The master Pattern Card, executed: all fourteen sections, both tracks as specified above. Grading weights: interaction-level buildability, 60 (compliance-theater test per guardrail); evidence discipline, 50 (claims labeled to the right bucket; flags carried, not smoothed); evaluation plan integrity, 40 (Chapter 14 rubric, re-applied); negative specification, 30 (steelman through reopen condition); decision-spine coherence, 30; final Reliance Disclosure (below), 25; defense performance, 15.

**15.2 — Peer review with the scaffold/crutch diagnostic** *(Evaluate).* Review one assigned peer specification before the defense. File written findings against the seven named defects (15.4) plus the compliance-theater sweep, each citing section and sentence. Graded on findings quality; their grade benefits from your severity. The course's last act of critique participation: be genuinely useful to a colleague by being genuinely hard on their document.

**15.3 — The declined-feature defense rehearsal** *(Apply/Evaluate).* Pair up. Your partner reads your §13 and advocates for your declined feature — steelman first, then pressure ("the focus groups want it; the competitor ships it; the board likes it"). Defend using only your dossier: evidence, harm pathway, reopen condition. Then swap. Submit the two sentences that survived contact: your best answer, and the attack you could not fully answer (which goes into §14 as an open question, where it belongs).

*Assessment note.* The skeptical-reviewer segment includes the durability attack for every student, without exception — the field guarantees the question, and the course refuses to graduate anyone who has not practiced the honest answer.

---

## Withdrawal Test + Reliance Disclosure (final, higher-bar version)

**Withdrawal Test (final form).** The question the course has asked weekly, now asked of the whole document: *for every AI touchpoint, what can the learner do when the AI is taken away — and how does the design make that more rather than less?* In the final specification this is not a paragraph; it is a column: the §3 touchpoint inventory carries a Withdrawal Test answer per row, and the §12 evaluation plan is the proof obligation attached to the column's claims.

**Final Reliance Disclosure (higher bar — required, graded, 25 pts).** Name, with section citations:

1. **Three design decisions where the evidence overruled the feature's appeal** — what was attractive, what overruled it, where the dossier or boundary lives. (In the instructor's spec: companion mode, full-solution mode, the satisfaction composite.)
2. **One place reliance risk remains structurally open** — not a risk you mitigated, one your design *cannot close*: the out-of-product chatbot you cannot instrument, the subgroup your data cannot see, the year your evaluation cannot reach.
3. **The measurement that would close it** — instrument, date, cost, and who you have asked.

A disclosure naming three safe decisions and a decorative risk fails the bar. The reviewer's test: would a competitor reading it learn something true about your product that your marketing would never say? If not, it is not a disclosure yet.

---

## What Would Change My Mind

The specification genre this chapter installs — negative specification, withdrawal column, durability clause, two registers — is justified by the claim that honesty must be structural because no actor in the adoption chain is incentivized to supply it voluntarily. Evidence that well-run institutions reliably catch crutch designs *without* specification discipline — procurement studies showing standard pilot review rejects assisted-only evidence at high rates — would argue the genre is redundant ceremony and this chapter should shrink to a checklist. The current evidence runs the other way (the +40%/92% deck gets funded), but the claim is empirical, and the book holds itself to its own reopen conditions.

---

## Still Puzzling

These are not loose ends of a chapter. They are the open questions of the field you now practice in — the same three this book deferred to a future edition, each with its reopen condition.

1. **The durability gap.** Zero multi-year studies of AI-mediated learning exist. Whether the crutch effect compounds or washes out, whether appropriate reliance develops or dependency deepens, what four years does to a learner — unknown. Reopen condition: the first longitudinal cohorts land. Until then, every specification's strongest claim is a one-term claim, and the honest sentence you practiced in the defense stays in service.
2. **Equity-positive personalization is undemonstrated.** Existing adaptive systems are at best equity-neutral and at times documented equity-negative; Tutor CoPilot's floor-lifting result shows what the positive case's evidence would look like — and remains nearly alone. Reopen condition: distributional gains demonstrated at scale, not theorized.
3. **The agentic pattern canon does not exist.** Chapter 12's non-negotiables are inference from policy frameworks, honestly labeled — not experimental canon. The systems are shipping anyway. Reopen condition: design patterns validated as evidence; until then, every agentic boundary you specify is first-generation practice, and your audit logs are part of how the canon gets built.

---

## Chapter Summary

You can now: assemble a complete AI integration specification as a single evidence argument — fourteen sections, every guardrail buildable, every claim bucketed, every touchpoint terminating in a withdrawal answer; write a negative specification whose declined features carry steelmen, evidence, harm pathways, and reopen conditions; defend the document to a skeptical board, including the declined feature and the honest "not yet known" with its measurement attached; detect compliance theater in your own work and a peer's; and state what all of this serves — in AI-mediated learning, the designer is the causal variable. That is no longer the book's thesis. It is your job description.

---

## Key Terms

- **Integration specification** — the complete, defensible argument that an AI integration preserves learning: interaction specs, guardrails, audits, boundaries, learner-side design, evaluation plan.
- **Withdrawal claim** — the genre's distinguishing element: a stated, measurable position on learner capability in the AI's absence; no industry template contains one.
- **Decision trace** — the spec's unit of argument: need → evidence → design/decline/defer → measurement.
- **Negative specification** — the documented features declined, each with steelman, evidence, harm pathway, reopen condition.
- **Reopen condition** — the named evidence that would reverse a decline; what separates discipline from technophobia.
- **Declined-feature dossier** — the record that keeps "no" defensible after the meeting ends.
- **Compliance theater** — guardrails as policy prose: not implementable, absence undetectable.
- **Defense run-sheet** — anticipated attacks mapped to evidence-grounded answers, drafted before the room is hostile.
- **Studio crit (evidence-disciplined)** — peer review aimed at the document's claims, graded on findings quality.

---

## Closing the Book: The Table, Revisited

No next chapter exists, so the bridge runs backward — to Week 1, and the table you could not explain:

| Condition | Assisted | Unassisted |
|---|---|---|
| GPT Base | +48% | **−17%** |
| GPT Tutor | +127% | no deficit |
| Control | baseline | baseline |

Read it one last time with everything you now have. The rows do not differ in model — Chapter 1 told you that much. They differ in a hint ladder and the answer it never gives (Chapter 6), in a reasoning gate the learner cannot paste through (Chapters 2, 6), in what the system was permitted and forbidden to do (Chapter 11), in whether anyone would ever have *measured* the third column at all (Chapters 4, 14) — and in a designer who either made those decisions or defaulted them. Row one is what shipping the default looks like. Row two is a specification. The difference between the rows was always design — and as of this week, the designer it depends on is you.

---

## Further Reading

- **Bastani et al. (2025). "Generative AI Can Harm Learning." *PNAS*.** Read it a third time — a finding in Week 1, an evaluation design in Week 14, and now the founding document of your professional obligation.
- **Mitchell, M., et al. (2019). "Model Cards for Model Reporting." *Proc. FAT*.** [verify] The nearest documentation ancestor of your specification — and a precise map of what it lacks: no withdrawal construct anywhere in it.
- **Madaio, M., et al. (2020). "Co-Designing Checklists to Understand Organizational Challenges and Opportunities around Fairness in AI." *Proc. CHI 2020*.** [verify] Why accountability documents decay into checkbox theater, and the workflow-anchoring that prevents it.
- **Baker, R.S., & Hawn, A. (2022). "Algorithmic Bias in Education." *IJAIED* 32.** The standing subgroup mandate your §6 and §12 answer to, course or no course.
- **Reich, J. (2020). *Failure to Disrupt*.** The structural skepticism this book inherited and converted into design method — worth reading whole now that you own the method.

---

## LLM Exercise: Red-Team Your Specification Before the Humans Do

Copy-paste the following into an LLM with your draft specification attached. The guardrail is the course in miniature: the model may not critique until you have committed your own weakest-point analysis — reasoning before help, one last time.

> You are a skeptical review board preparing to cross-examine an AI integration specification for a learning experience. You have read Bastani et al. (2025) and Baker & Hawn (2022); you know assisted gains can coexist with unassisted deficits, and that population means hide subgroup harm. Follow this protocol strictly:
>
> **Phase 1 — My weakest points first, before you read closely.** Require me to state, before any critique from you: (a) the section I am least confident defending and why; (b) the guardrail most likely to fail the "implementable, and absence detectable?" test; (c) my declined feature and the attack on its dossier I most fear; (d) the claim in my evaluation plan a hostile methodologist would target first. Do not proceed until I have answered all four in my own words.
>
> **Phase 2 — Audit against my answers.** Now read the specification. Tell me where my self-assessment was wrong: the weak point I missed entirely, and any named fear that is actually well-defended. Cite sections.
>
> **Phase 3 — The four attacks.** Run the engagement attack, the cost attack, the vendor attack, and the durability attack, one at a time, in role. After each, require my answer before the next; flag any answer that inflates a claim beyond what my own evaluation section licenses.
>
> **Phase 4 — The disclosure test.** Read my final Reliance Disclosure and answer one question: would a competitor learn something true about my product from it that my marketing would never say? If no, tell me what the disclosure is avoiding, and make me write the avoided sentence.
>
> **Phase 5 — Verdict, bounded.** State what you would fund, what you would require first, and the single measurement you would make a condition of approval. You may not approve unconditionally; the field's evidence state does not support unconditional approval of anything, including good work.

Deliverable, attached to your final submission: your Phase 1 answers verbatim, the one weak point the model found that you missed, and what you changed because of it — or your defense of why you changed nothing.
