# Chapter 15 — The Full Integration: One Experience, Every Guardrail
*Done does not mean every question is closed. It means every touchpoint is accounted for.*

On the last studio day, before any student presents, the instructor presents — and takes the same review the students will face.

On screen: the complete integration specification for the AI homework tutor in DataWise 101, the statistics course this course has carried since Week 2. Fourteen sections, thirty-one pages, one spine. Walked in argument order: the experience and its learning claims; the evidence posture, bucketed into act, pilot-and-measure, and decline; the tutoring interaction spec with the hint ladder and the answer it never gives; the fading schedule; the adaptivity decision; the routing audit with its named blind spot — part-time students, data not collected; the content and feedback boundaries; the assessment redesign with its no-AI windows; the transparency layer with the single-click human escape hatch; the agentic boundaries — what the tutor may do unprompted, which is almost nothing; the learner-side layer; the evaluation plan with unassisted performance as the primary endpoint and the durability clause intact.

Then the two sections no vendor document carries. **Section 13: the negative specification** — three AI features the tutor will not have, each with the evidence for declining and the condition that would reopen it. The room reads the first one twice: the "Study Buddy" companion mode, the feature every focus group requested, declined. **Section 14: the open questions** — including the one the field cannot answer: *the longest measured delay in the evaluation plan is six weeks, and DataWise students will use tools like this for four years. What four years of this does to a learner is not known. No longitudinal study exists. Here is the next-course linkage we have requested, and the cohort comparison that would know more in three years.*

A student raises the obvious objection: "You're presenting a specification whose central long-term claim is 'not yet known.' Why does this count as done?"

The instructor's answer is this chapter: **done, in this discipline, does not mean every question is closed. It means every touchpoint is accounted for** — guardrailed by evidence, opened to measurement, or declined — and every open question named, with the measurement that would close it. A specification claiming more than that is not more finished. It is less honest, and fourteen weeks of this course have equipped the room to see exactly where.

<!-- → [DIAGRAM: the specification as a decision-argument structure — center spine labeled "the learning claim: what the student can do without the AI"; fourteen branches radiating from the spine, one per specification section, each branch ending in either a filled circle (guardrail in place) or an open circle (open question, measurement attached); two branches highlighted in red labeled "§13 Negative Specification" and "§14 Open Questions." Caption: "The document is not a binder of artifacts. It is one argument with fourteen exhibits. The two sections nobody requires are what make the rest believable."] -->

---

The document you are assembling has ancestors, and knowing them tells you what the genre demands.

From **safety engineering** it inherits the safety case: a structured argument, supported by evidence, that a system is acceptable for a specific use in a specific context — not a description of the system, an *argument* about it, every claim traceable to evidence or flagged as assumption [verify — safety-case practice per safety-engineering literature; lineage claim, not a single citation]. From **machine-learning documentation** it inherits the model card and its relatives: Mitchell et al.'s model cards disclose intended use, out-of-scope use, and evaluation results disaggregated by subgroup (Mitchell et al. 2019 [verify]); Gebru et al.'s datasheets force provenance questions a spec sheet never asked (Gebru et al. 2021 [verify]); system cards from frontier model deployments extend the form to deployed behavior. The family resemblance is real: intended use, boundaries, subgroup evaluation, known limitations, stated honestly.

And then the inheritance stops, at the exact point this book exists to mark. **No industry documentation template contains a withdrawal claim.** A model card tells you how the system performs; a system card, how it behaves under adversarial pressure. None of them asks what the human can do when the system is gone. In learning, that question is not one disclosure among many; it is the product. Your specification is a new genre member: every section terminates in the Withdrawal Test, and the evaluation section stakes the success claim on unassisted performance. That is the difference between documenting an AI system and specifying an AI *integration into learning*.

Structurally, the specification is an argument, not a binder. The unit is the **decision trace**: what the learner needed to be able to do → what the evidence said → what was designed, declined, or deferred → how you will know. Each Act Two artifact appears as evidence for a step in that trace, captioned by the decision it served. A reviewer should be able to enter at any touchpoint and reach the evidence in two hops.

---

The course promised a designer who can correctly decline an AI feature the evidence says will become a crutch. Here declining becomes a documented artifact rather than a hallway anecdote.

The **negative specification** lists the AI features the integration will not include — each as a dossier: the feature as proposed, steelmanned (what made it attractive, who asked for it); the evidence for declining, with endpoint types; the harm pathway (which mechanism from this course it triggers); and the **reopen condition** — the specific evidence that would reverse the decision. The reopen condition separates evidence-disciplined declining from technophobia. A "no" with a reopen condition is a falsifiable position; a bare "no" is a mood. This book practices the form on itself — its out-of-scope table defers longitudinal reliance effects, equity-positive personalization, and the agentic pattern canon, each with its reopen condition.

Three reasons to force this into the document. First, declined features are where the thesis bites: anyone can add guardrails to what they build; the discipline shows in what they refuse to build, because the crutch is the default and the default is always somebody's feature request. Second, undocumented declines do not stay declined — next year's product manager re-proposes the companion mode, and without the dossier the argument must be re-fought from memory, against fresh enthusiasm. The negative specification is institutional memory for the word "no." Third, the dossier is the defense's strongest section: the one place the designer demonstrates judgment against their own incentives.

About holes: a missing artifact, disclosed — "the routing audit could not see part-time students; decisions it grounds are flagged accordingly" — costs points once. The same hole papered over costs the specification its credibility everywhere. Disclosure is calibration, and calibration is the product.

---

The specification is defended live, under a studio-crit protocol adapted to the course's evidence discipline.

Presentation is ten minutes: the decision spine only — six to ten traces, including at least one declined feature. Not a tour of artifacts. Peer cross-examination runs fifteen minutes: classmates armed with the scaffold/crutch diagnostic and the document, read in advance, with written findings already filed. Then the skeptical-reviewer segment, ten minutes: the instructor or an invited practitioner plays the review board that funds things. Expect four canonical attacks. *Engagement:* "your own data shows learners love the feature you declined." *Cost:* "proctored unassisted assessment is friction — justify it." *Durability:* "what does this tell me about year four?" *Vendor:* "the platform we already license does all this out of the box — why is your spec better than their brochure?"

Two answers pass that students reliably underuse. First: **"not yet known — and here is the measurement that would know it, by this date, at this cost."** Said with a date and a number, that is an engineering answer; the defense's hardest moment is saying it to a skeptical face without retreating into a claim you cannot license. Second: **pointing at the document** — "that risk is named in Section 14, with its instrumentation" — because a defense is not improvisation; it is demonstrating the document already thought of it.

What fails: claim inflation under pressure; answering the engagement attack with engagement counter-data instead of the endpoint argument; treating the vendor attack as beneath you rather than answering it on the merits. The brochure encodes interaction design intent, and the deconstruction skills you developed in Week 4 apply verbatim.

<!-- → [TABLE: defense run-sheet — four rows, one per canonical attack; columns: Attack, What it's really testing, Wrong answer, Passing answer. Row 1 Engagement: tests whether the designer will trade the endpoint argument for satisfaction data. Wrong: counter-engagement data. Pass: redirect to endpoint architecture. Row 2 Cost: tests whether unassisted assessment can be justified. Wrong: retreat to convenience. Pass: price the crutch at scale. Row 3 Durability: tests whether the designer knows the field's honest limits. Wrong: claim what no study has shown. Pass: the named measurement with date and cost. Row 4 Vendor: tests whether interaction design can be extracted from a brochure. Wrong: dismiss the brochure. Pass: deconstruct it — hint ladder, fading schedule, unassisted endpoint, subgroup reporting — then show your spec has what the brochure lacks. Caption: "The four attacks are the same every year. The run-sheet is written before the room is hostile."] -->

---

There is a way to produce all fourteen sections and still fail, and the field has documented it. Madaio et al. (2020), co-designing AI fairness checklists with practitioners, found that ethics checklists routinely decay into checkbox compliance — performed conformance that changes documents rather than systems — unless checklist items are anchored to specific decision points in the actual workflow [verify — Madaio, Stark, Wortman Vaughan & Wallach, CHI 2020]. The educational-AI version has a recognizable face: the specification whose every guardrail is policy prose — "the system shall promote academic integrity" (no mechanism), "learners will be encouraged to verify outputs" (no trigger, no frequency), "AI use will be appropriately supervised" (by whom, visible where?). Every sentence is agreeable; no sentence is buildable.

The test that catches it is mechanical: **can this sentence be implemented, and could its absence be detected?** A guardrail that names no interface element, no trigger, no log, and no failure response is not a guardrail; it is a wish wearing one's clothes. The Pattern Cards collected all term are the antidote — fourteen weeks of trigger/structure/fading-rule/failure-mode formatting exist so that nothing in the specification can be vague without looking vague.

The peer review applies this test to every guardrail: seven named defects, plus the compliance-theater sweep. Hidden answer-giving (trace the hint ladder to its floor). Missing unassisted endpoints. Vendor claims imported without deconstruction. Invisible routing. Weak human escalation. Anthropomorphic cues without a vulnerability analysis. Unbounded agent actions. The review is graded on findings quality, not politeness; the best outcome for a final grade is a peer who catches the missing withdrawal endpoint *this* week.

---

Fourteen weeks ago you met a table you could not explain. The same model — identical weights, identical capabilities — made learners dramatically better with it and measurably worse without it in one row, and better with it and no worse without it in the next. Everything since has been the explanation: the difference between the rows was a system prompt and a conversation structure. Somebody designed row one, probably without meaning to. Somebody designed row two on purpose.

That is the professional identity this course has been building: **in AI-mediated learning, the designer is the causal variable.** Not the model — capability rises every quarter and the table's lesson survives it by construction. Not the learner — Chapter 2 closed the self-regulation hatch; shortcut-seeking is rational in the moment, and structural guardrails are the answer to rational behavior. Not the vendor — the brochure encodes intent, and intent is not an endpoint. The variable left is the interaction design, the guardrails, the transparency, the fading, the audit, the evaluation keyed to what the learner can do alone — and the features declined.

This identity carries obligations adjacent professions will not enforce. The evidence base is thin — roughly twenty high-quality causal studies under the field's strictest screens — and practice is years ahead of it; institutions are making irreversible architectural decisions on pilot decks you now know how to read. The populations most at risk are the most aggressively marketed to. Nobody in the procurement chain is paid to add the missing column. The specification genre is how a single designer makes honesty structural instead of heroic: claims pre-specified, limits as clauses, the "no" with a dossier, and the withdrawal question asked in writing where no meeting can unask it.

---

The assembly of the DataWise 101 specification revealed three problems no single artifact had surfaced. The artifacts disagreed in places — the Week 6 fading schedule promised contraction signals the Week 13 dashboard wasn't instrumenting; assembly is where seams show. The document had two audiences with opposite failure modes — a build team that needed triggers, a review board that needed argument. And the strongest student request from the focus groups — a persistent, friendly "Study Buddy" persona with session memory — existed in no artifact, because the evidence had already said no, and that "no" existed only as a meeting memory.

The first assembly pass went chronological by course week. Reviewers couldn't trace any claim without reading everything; the document was reordered into the master argument structure. The second dead end: guardrails drafted as institution-friendly policy language, caught by the compliance-theater test, every one rewritten as trigger/structure/failure-mode. The third dead end, the instructive one: the negative specification originally read as one dismissive line ("no companion features — see Bhat & Long"). The steelman requirement forced honesty about why the feature kept returning. A one-line "no" would not survive the first product meeting after the course ends. The dossier got built properly:

> **Declined feature: "Study Buddy" companion mode** (persistent persona, session memory, affirming register, proactive check-ins). *Steelman:* highest focus-group demand; plausible retention gains; competitors ship it. *Evidence for declining:* relational cues construct illusory care, with documented vulnerability patterns in companion-AI users (Bhat & Long, AIES 2025 [contested — see Evidence Box]); engagement-optimization is the named crutch vector — loving a feature and learning from it dissociate (Bastani et al. 2025); independent practitioner assessment places relational companion AI in its highest risk class for younger users (Common Sense Media). *Harm pathway:* trust miscalibration → reduced verification → flattened reliance curve → unassisted deficit concentrated in exactly the anxious learners the persona comforts. *Reopen condition:* a controlled study showing relational framing improves **unassisted** outcomes without degrading verification — measured, not asserted. Until then: the tutor stays visibly a tool.

The defense run-sheet came last — one row per anticipated attack — because a defense is not improvisation and the room will not wait for the argument to be invented on the spot.

The final Reliance Disclosure names three evidence-overruled decisions: companion mode declined against focus-group demand; full-solution mode declined against convenience; satisfaction demoted from every effectiveness claim against the dean's preference for one number. And Section 14 ends on the honestly-open question: *the longest measured delay is six weeks; the field has no longitudinal evidence; what four years of AI-mediated coursework does to a learner is not known.* The next-course linkage and the three-year cohort comparison are specified, costed, and — this is the point — already requested in writing, where the request cannot be quietly forgotten.

The lesson: assembly is the last design decision. The specification is one argument with fourteen exhibits, and the sections nobody requires are what make the rest believable.

The limit: this specification governs one tutor, in one course, against one term of synthetic pilot data. The genre is first-generation — no industry standard exists for integration specifications, so the document cannot inherit credibility from its form the way a safety case can. It must earn all of it from its evidence discipline. That is harder, and for now it is the job.

---

## Evidence Box

<!-- → [TABLE: evidence summary — columns: Finding, Source, Endpoint type, Status.] -->

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Same model, opposite unassisted outcomes under different interaction designs (+48%/−17% vs. +127%/no deficit) | Bastani et al. (2025), *PNAS* | Assisted + unassisted, randomized | **Verified** — the spine; the table the book opened with and closes on |
| Self-regulated help-seeking harms long-term outcomes | Bastani chess-academy follow-up | Behavioral | Working paper [verify publication status before press] |
| Human-supervised AI: +5.5pp transfer; self-labeled exploratory | LearnLM/Eedi RCT [verify — arXiv 2512.23633] | Transfer, randomized | Verified via synthesis; exploratory by its own title |
| AI support lifts weakest tutors most (+9pp) | Tutor CoPilot (arXiv 2410.03017) | Distributional, randomized | **Verified** — the equity-positive exemplar |
| Subgroup evaluation mandate | Baker & Hawn (2022), *IJAIED* 32 | Review | **Verified** — canonical |
| Human-like cues construct illusory relational care; vulnerability patterns in companion-AI users (n=344) | Bhat & Long (AIES 2025) [contested — confirm against the AIES PDFs; earlier synthesis may have conflated venue and authorship] | Survey + design analysis | Verified to exist; framework names pending primary-source check |
| Social AI companions: unacceptable risk for minors | Common Sense Media (2024–2026) | Practitioner risk assessment | Verified in shape [verify figures]; observational |
| Cognitive debt: declining neural engagement with generative offloading | Kosmyna et al. (2025) | Neurological (EEG), n=54 | Single study, published criticism — candidate mechanism only [contested] |
| Fairness checklists decay into compliance unless anchored to workflow decision points | Madaio et al. (2020), CHI | Qualitative co-design | [verify — cited from the literature, not this book's research notes] |
| Model cards / datasheets as documentation lineage | Mitchell et al. (2019); Gebru et al. (2021) | Documentation frameworks | [verify both] — lineage only; neither contains a withdrawal construct |
| ~20 high-quality causal studies in 800+ papers; zero longitudinal | Stanford SCALE + converging meta-reviews | Evidence mapping | **Verified** via synthesis — the honesty floor under every defense answer |

---

## What Would Change My Mind

The specification genre this chapter installs — negative specification, withdrawal column, durability clause, two registers — is justified by the claim that honesty must be structural because no actor in the adoption chain is incentivized to supply it voluntarily. Evidence that well-run institutions reliably catch crutch designs *without* specification discipline — procurement studies showing standard pilot review rejects assisted-only evidence at high rates — would argue the genre is redundant ceremony and this chapter should shrink to a checklist. The current evidence runs the other way (the +40%/92% deck gets funded), but the claim is empirical, and the book holds itself to its own reopen conditions.

---

## Still Puzzling

These are not loose ends of a chapter. They are the open questions of the field you now practice in — the same three this book deferred to a future edition, each with its reopen condition.

**The durability gap.** Zero multi-year studies of AI-mediated learning exist. Whether the crutch effect compounds or washes out, whether appropriate reliance develops or dependency deepens, what four years does to a learner — unknown. Reopen condition: the first longitudinal cohorts land. Until then, every specification's strongest claim is a one-term claim, and the honest sentence practiced in the defense stays in service.

**Equity-positive personalization is undemonstrated.** Existing adaptive systems are at best equity-neutral and at times documented equity-negative; Tutor CoPilot's floor-lifting result shows what the positive case's evidence would look like — and remains nearly alone. Reopen condition: distributional gains demonstrated at scale, not theorized.

**The agentic pattern canon does not exist.** Chapter 12's non-negotiables are inference from policy frameworks, honestly labeled. The systems are shipping anyway. Reopen condition: design patterns validated as evidence; until then, every agentic boundary specified is first-generation practice, and the audit logs are part of how the canon gets built.

---

## Exercises

**Warm-up**

1. *(Recall — the withdrawal claim)* What does your specification contain that no model card, system card, or vendor template contains? State it in one sentence, explain why it is absent from those documents, and explain why its absence from a *learning* specification would be a category failure.
*Difficulty: low. Tests: the withdrawal claim as the genre's distinguishing element; the distinction between documenting an AI system and specifying an AI integration into learning.*

2. *(Recall — the reopen condition)* What converts a declined feature from taste into evidence-disciplined design? Name the four components of a full declined-feature dossier, and explain why the reopen condition is specifically the component that separates discipline from technophobia.
*Difficulty: low. Tests: the negative specification's structure; the reopen condition as a falsifiability criterion for a decline.*

3. *(Recall — compliance theater)* A guardrail in a peer specification reads: "The AI tutor will support academic integrity by discouraging dishonest behavior." Apply the compliance-theater test: state the two questions the test asks, evaluate this guardrail against both, and rewrite it in a form that passes.
*Difficulty: low. Tests: the implementable/detectable test applied to a specific example; the translation from policy prose to interaction design.*

**Application**

4. *(Apply — the steelman requirement)* The instructor declined the companion mode partly because the steelman requirement forced honesty about the feature's genuine appeal. Pick a real AI feature you have encountered in an educational product and write its steelman — what makes it genuinely attractive, who legitimately wants it, what real evidence supports it. Then write the one-sentence evidence-based objection that the steelman makes it *harder* to dismiss with a vague "no."
*Difficulty: moderate. Tests: the steelman as a discipline that makes "no" harder to land cheaply; the connection between honest attribution and defensible declining.*

5. *(Apply — the defense run-sheet)* Draft a defense run-sheet for a specification section of your choice — either your own or the DataWise example. One row per canonical attack (engagement, cost, durability, vendor). For each: state what the attack is really testing, name the wrong answer, and write the passing answer in full — citing the specific section of the specification the passing answer points at.
*Difficulty: moderate. Tests: anticipatory argument construction; the difference between improvising under pressure and demonstrating that the document already thought of it.*

6. *(Apply — the two registers)* Take any single finding from this chapter's Evidence Box and write two versions of a conclusion sentence: one for a technical register (a methodologist reviewing the specification) and one for a stakeholder register (a dean evaluating budget). Then write the test that would catch a stakeholder conclusion that has inflated the technical finding — and apply it to your own two sentences.
*Difficulty: moderate. Tests: two-register discipline applied to real evidence; the register test as a self-applied check, not just a peer-review catch.*

**Synthesis**

7. *(Synthesize — the negative specification)* Write a complete declined-feature dossier for one AI feature not in the DataWise 101 specification. Required components: feature-as-proposed with steelman, evidence for declining with endpoint types, harm pathway naming the specific course mechanism it triggers, reopen condition stated as a specific study design. The dossier must survive the question: would a product manager who has not taken this course understand from this document alone why the feature is declined and what would reopen it?
*Difficulty: moderate-high. Tests: full dossier execution; the institutional-memory function of the negative specification; whether the harm pathway links to a mechanism rather than a vague risk.*

8. *(Synthesize — the final Reliance Disclosure)* Draft a final Reliance Disclosure at the higher bar: three design decisions where evidence overruled the feature's appeal, one place reliance risk remains structurally open, and the measurement that would close it. The disclosure must pass the reviewer's test: would a competitor reading it learn something true about the product that marketing would never say? If any of your three "overrulings" is actually a case where the evidence agreed with you, replace it.
*Difficulty: high. Tests: the distinction between evidence that overruled preference and evidence that happened to agree with preference; the disclosure as a genuine accountability artifact, not a performance of accountability.*

**Challenge**

9. *(Challenge — the durability answer)* Practice the defense's hardest moment. A skeptical reviewer asks: "What does your integration do to a learner over four years?" Write the two-minute spoken answer that (a) gives the honest "not yet known" without retreating into a claim you cannot license, (b) names the specific measurement that would know more and when it could be available, (c) does not treat the honest answer as a weakness. Then write the version of that answer that fails — the one that inflates the one-term evidence into a multi-year claim — so you can hear the difference before the room does.
*Difficulty: high. Tests: the durability answer as an engineering statement, not a hedge; the ability to say "not yet known" with precision rather than embarrassment.*

---

## LLM Exercise: Red-Team Your Specification Before the Humans Do

Copy-paste the following into an LLM with your draft specification attached. The guardrail is the course in miniature: the model may not critique until you have committed your own weakest-point analysis — reasoning before help, one last time.

---

You are a skeptical review board preparing to cross-examine an AI integration specification for a learning experience. You have read Bastani et al. (2025) and Baker & Hawn (2022); you know assisted gains can coexist with unassisted deficits, and that population means hide subgroup harm. Follow this protocol strictly:

**Phase 1 — My weakest points first, before you read closely.** Require me to state, before any critique from you: (a) the section I am least confident defending and why; (b) the guardrail most likely to fail the "implementable, and absence detectable?" test; (c) my declined feature and the attack on its dossier I most fear; (d) the claim in my evaluation plan a hostile methodologist would target first. Do not proceed until I have answered all four in my own words.

**Phase 2 — Audit against my answers.** Now read the specification. Tell me where my self-assessment was wrong: the weak point I missed entirely, and any named fear that is actually well-defended. Cite sections.

**Phase 3 — The four attacks.** Run the engagement attack, the cost attack, the vendor attack, and the durability attack, one at a time, in role. After each, require my answer before the next; flag any answer that inflates a claim beyond what my own evaluation section licenses.

**Phase 4 — The disclosure test.** Read my final Reliance Disclosure and answer one question: would a competitor learn something true about my product from it that my marketing would never say? If no, tell me what the disclosure is avoiding, and make me write the avoided sentence.

**Phase 5 — Verdict, bounded.** State what you would fund, what you would require first, and the single measurement you would make a condition of approval. You may not approve unconditionally; the field's evidence state does not support unconditional approval of anything, including good work.

---

*Deliverable, attached to your final submission: your Phase 1 answers verbatim, the one weak point the model found that you missed, and what you changed because of it — or your defense of why you changed nothing.*

---

## Closing the Book: The Table, Revisited

No next chapter exists, so the bridge runs backward — to Week 1, and the table you could not explain:

| Condition | Assisted | Unassisted |
|---|---|---|
| GPT Base | +48% | **−17%** |
| GPT Tutor | +127% | no deficit |
| Control | baseline | baseline |

Read it one last time with everything you now have. The rows do not differ in model — Chapter 1 told you that much. They differ in a hint ladder and the answer it never gives, in a reasoning gate the learner cannot paste through, in what the system was permitted and forbidden to do, in whether anyone would ever have *measured* the third column at all — and in a designer who either made those decisions or defaulted them. Row one is what shipping the default looks like. Row two is a specification. The difference between the rows was always design — and as of this week, the designer it depends on is you.

---

## Further Reading

- **Bastani et al. (2025). "Generative AI Can Harm Learning." *PNAS*.** Read it a third time — a finding in Week 1, an evaluation design in Week 14, and now the founding document of your professional obligation.
- **Mitchell, M., et al. (2019). "Model Cards for Model Reporting." *Proc. FAT*.** [verify] The nearest documentation ancestor of your specification — and a precise map of what it lacks: no withdrawal construct anywhere in it.
- **Madaio, M., et al. (2020). "Co-Designing Checklists." *Proc. CHI 2020*.** [verify] Why accountability documents decay into checkbox theater, and the workflow-anchoring that prevents it.
- **Baker, R.S., & Hawn, A. (2022). "Algorithmic Bias in Education." *IJAIED* 32.** The standing subgroup mandate your §6 and §12 answer to, course or no course.
- **Reich, J. (2020). *Failure to Disrupt*.** The structural skepticism this book inherited and converted into design method — worth reading whole now that you own the method.
