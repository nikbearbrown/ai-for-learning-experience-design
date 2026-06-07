# Chapter 14 — Evaluating AI-Mediated Learning: The Withdrawal Test at Scale

**Week 14 · Act Three — Apply · EVALUATION PLAN CHECKPOINT (100 pts) + Design Lab #9 (25/30 pts)**

---

## Learning Objectives

By the end of this chapter, you will be able to:

1. **Specify** an evaluation plan whose primary endpoint is unassisted performance, with transfer and pre-specified subgroup analyses — not satisfaction, not assisted scores. *(Bloom: Apply — Tracks A and B)*
2. **Diagnose** an evaluation that mistook assisted performance for learning, and name the missing measurement. *(Bloom: Analyze — Tracks A and B)*
3. **State** the durability limitation honestly: what a single-term evaluation cannot claim, given the field's longitudinal evidence gap. *(Bloom: Evaluate — Tracks A and B)*
4. **Produce** the evaluation plan and a qualified conclusion in two registers — technical and stakeholder-facing — for a real AI integration. *(Bloom: Evaluate/Create — Track A: provided pilot data; Track B: your own project)*

---

## Opening Case: The Pilot Report Any Executive Would Fund

*Illustrative case — this report is constructed, per the book's sourcing rule. Its plausibility is anchored to verified findings cited below; no real vendor is depicted.*

The deck is beautiful. A corporate learning platform piloted an AI assistant inside its data-analytics curriculum for one quarter. Per the executive summary:

- **+40%** on in-product assessments versus the prior cohort.
- **92%** learner satisfaction; the highest NPS of any feature launch in company history.
- Glowing quotes: *"It's like having a patient expert on call."* *"Don't take it away."*
- Engagement up in every segment. Completion up nine points.

Funding approved, surely. Before you nod: recall the table this course opened with. Three conditions, same model. GPT Base: **+48% assisted, −17% unassisted**. GPT Tutor: +127% assisted, no deficit. Control. Now look at the pilot report again and find the column it does not have.

Every number in the deck was measured **with the AI present**. In-product assessments: assisted. Satisfaction: a feeling about assistance. Engagement, completion: behavior during assistance. The report measures the human-AI system performing together — and contains not one datum about what any learner can do alone. A GPT-Base-shaped disaster — large assisted gains, real unassisted damage — would produce *exactly this deck*. So would a genuine scaffold. The report cannot tell you which one was funded, and that is the point: it was never designed to be able to.

This is not fraud, and it is not stupidity. It is the default. Assisted metrics are what products log natively; unassisted measurement must be *designed*, costs friction, and — note carefully — nobody in the vendor-buyer-pilot triangle is paid to add it. The Wang et al. (2024) finding that over half of surveyed STEM students paste problems in and take the solutions (small sample, n=40 — directional [verify]) describes behavior an in-product assessment is structurally blind to. And a 2026 preprint (arXiv 2604.04721; RCTs, N=1,222 — **preprint, not yet peer-reviewed** [verify status]) reports the dissociation appearing within minutes of AI use: short-term performance up, subsequent unassisted performance *down*, give-up rates up.

You have spent thirteen weeks designing so the missing column comes out right. This week you design the column.

---

## Prerequisites

This chapter assumes you can:

- **Read evidence at endpoint level** (Chapter 4): assisted vs. unassisted vs. transfer as different measurements; vendor-claim deconstruction. Week 14 is Week 4 turned from reading to writing.
- **Run the subgroup logic of a routing audit** (Chapter 8), including the "what the audit could not see" clause.
- **Use your prior artifacts as predictions**: the fading schedule (Chapter 6) and the learner-side instrumentation (Chapter 13) are about to become measurable hypotheses.

---

## Core Content

### 14.1 The Four-Endpoint Architecture: Choosing What Your Claim Stands On

Borrow one discipline from clinical-trial methodology (an analogy, used lightly): an evaluation is defined by its **primary endpoint** — the single pre-specified measurement on which the success claim stands or falls. Everything else is secondary. The book's thesis dictates the primary endpoint here, because only one endpoint can see the scaffold/crutch distinction at all:

- **Assisted performance** — what the learner does with the AI present. Legitimate to measure (it is the product's operating condition) and structurally incapable of distinguishing scaffold from crutch: Bastani et al.'s GPT Base condition was +48% assisted and −17% unassisted *simultaneously*. An assisted score is denominated in human-plus-AI units; an adoption decision is denominated in human units. Reporting one as the other is a currency conversion with no exchange rate.
- **Unassisted performance** — what the learner does when the AI is withdrawn. **This is the primary endpoint.** It is the Withdrawal Test, promoted from grading mechanic to measurement protocol (Section 14.2).
- **Transfer** — performance on novel problems or next-topic material. The LearnLM/Eedi endpoint: students supported by human-supervised AI were 5.5 percentage points more likely to solve a novel problem in the next topic than students tutored by humans alone [verify — arXiv 2512.23633]. Transfer is the strongest signal that learning rather than performance occurred, and the hardest to instrument.
- **Retention** — unassisted performance at a delay of weeks or months. The endpoint almost nobody measures; the durability gap lives here (Section 14.5).

Re-read the study this course opened with — this time as an *evaluation design* rather than a finding. Bastani et al. (2025) exists as a finding only because the design measured assisted **and** unassisted conditions under randomization; an assisted-only version would have reported GPT Base as a +48% triumph. The design even yielded a bonus reliance signature: GPT Base's arithmetic errors propagated into student work — learners were not checking. You have been looking at a model evaluation plan since Week 1 without being asked to see it. (Citation hygiene, modeled: PNAS issued an August 2025 correction — affiliation only; findings unchanged.) The 2026 persistence preprint corroborates the dissociation outside school mathematics — with deficits emerging after roughly ten minutes of AI interaction — but it is corroboration, not spine; this chapter survives its removal.

The design rule that falls out: **pre-specify the primary endpoint, in writing, before data collection.** "Measure everything and decide later" guarantees the report gets written on whichever endpoint moved — and assisted performance and satisfaction almost always move. Pre-specification (registry-style: REES or OSF in academic contexts, a signed internal memo at minimum — prescribed here, not claimed as industry norm) makes honest reporting structurally possible rather than a matter of post-hoc virtue. An evaluation without a pre-specified endpoint is a future vendor claim about yourself.

### 14.2 The Withdrawal Test as Measurement Protocol

Every design lab this term answered the Withdrawal Test rhetorically. At scale it becomes instrumentation, with four design surfaces. Honest framing first: **no standard exists for withdrawal-protocol design** — what follows is first-generation practice guidance with named open parameters, not settled method.

**Withdrawal windows.** Scheduled AI-free performance occasions, designed into the experience — Chapter 10's AI-free assessment windows, now doing double duty as data collection. Decisions to specify: *announced or unannounced?* Announced windows invite cram-with-AI distortion; unannounced windows carry fairness and trust costs (and are a categorically different experience for a ten-year-old than a graduate student — Chapter 13's calibration applies to measurement too). The defensible middle, per Chapter 11's transparency layer: the *existence and approximate cadence* of withdrawal windows is always disclosed; exact timing need not be. *Task sampling:* same tasks practiced with AI (contamination risk), isomorphic variants (the workhorse), or transfer items (a different claim — label it).

**The counterfactual.** "Unassisted scores dropped" means nothing alone; the force of the Bastani design came from randomization. Minimum credible designs, in descending strength: a **randomized pilot** (often feasible at section or cohort level, and cheaper than the meeting that decides against it); **staggered rollout / waitlist control** (everyone gets the product, timing is randomized); **pre/post with stated threats** — weakest, sometimes all you have, honest only if the threats (maturation, selection, instrument drift) are named in the report rather than discovered by its readers. Drill into every claim sentence: *compared to what?* Your deliverable is the design and the claims it licenses; the modeling belongs to a methodologist, and knowing what to ask for is the competence ("we need a section-level randomized comparison powered for the unassisted endpoint" is one sentence).

**Reliance-trajectory metrics.** The dynamic complement to the withdrawal snapshot — and a construct name you should know is ours: **"reliance-trajectory metrics" is this book's coinage** [book's framing]. The components are individually grounded — help-seeking analytics and the intelligent-tutoring "gaming the system" detection literature (Baker et al., 2004 [verify exact citation]), persistence and give-up rates (the 2026 preprint's contribution), acceptance/copy-paste rates (Wang et al.'s paste-and-accept signature as a loggable event), and verification behavior (instrumented by Chapter 13's error-spotting and dashboard design) — but no standard framework by this name exists in the literature. The unifying prediction makes your earlier artifacts falsifiable: **a scaffold predicts a declining reliance curve along the Chapter 6 fading schedule; a flat or rising curve is the crutch signature, visible in telemetry before any assessment is scored.**

**The write-up, twice** — two registers (Section 14.6).

Anticipate the stakeholder objection: *"the withdrawal test punishes the product."* It does not. GPT Tutor **passed** it — +127% assisted, no unassisted deficit. The test penalizes crutch designs, exclusively. A designer who built Weeks 5–13's guardrails should expect to pass and should want the only data that can prove it.

### 14.3 Subgroup Evaluation as Standard: The Baker & Hawn Mandate

Baker & Hawn (2022) — the canonical algorithmic-bias-in-education review from Chapter 8 — carries a mandate this chapter operationalizes: evaluate on **subgroup performance, not population averages**, and note which groups the field systematically fails to study (students with disabilities, international students, low-SES students, Indigenous learners — and inappropriately aggregated categories treated as single groups).

The measurement logic restates Chapter 8's hardest lesson: a system can be individually adaptive and collectively unjust — *and the injustice is invisible at the mean*. A population-average positive can conceal subgroup harm exactly where theory predicts it: Klarin et al. (2024) found adolescents with executive-function challenges perceive AI as more useful and over-rely more, so the unassisted deficit should be *expected* to concentrate — the scissors pattern, in which the learners with the largest assisted gains carry the largest unassisted losses, averaging out to a pleasant nothing.

Discipline, in four rules. **Pre-specify** subgroups on theory-predicted vulnerability (prior achievement, executive-function proxies where ethically loggable, language background) — pre-specified subgroup endpoints are the opposite of p-hacking; unplanned slices are hypothesis-generating and must be labeled. **Estimate, don't test**: most pilots are underpowered for subgroup hypothesis tests; report estimates with intervals and say so. **State what you cannot see**: every report carries a "populations this evaluation cannot see" clause — Chapter 8's clause recurring as a reporting obligation. **Know what good looks like**: Tutor CoPilot's signature finding — 4-point average gains, 9-point gains concentrated in the *lowest-rated tutors* — is an equity-positive result, knowable only because the study measured the distribution, not just the mean.

### 14.4 The Durability Gap as a Reporting Obligation

The field has **zero multi-year studies** of AI-mediated learning. Nothing on whether the crutch effect persists, compounds, or washes out; whether learners develop appropriate reliance over time or deepen dependency; whether four years of AI-supported learning produces different capabilities than four years without. The best causal studies are single-term (Bastani); the field's strongest positive result labels itself exploratory in its own title (LearnLM/Eedi); current reviews calling for studies "over several months" mark months — not years — as the frontier. The thin-base diagnosis (Stanford SCALE's ~20 high-quality causal studies in 800+ papers) is independently corroborated by converging meta-reviews.

This chapter converts the lament into an obligation with teeth. **Every evaluation plan carries a durability clause**, three sentences:

1. *The longest delay at which unassisted performance was measured* (a number, not an adjective).
2. *What the evaluation therefore cannot claim*: "this evaluation supports a one-term scaffold claim; it supports no claim about cumulative effects."
3. *The measurement that would extend the claim*, and its cost: a retention follow-up, a linked next-course comparison, a longitudinal cohort design. These extensions are often institutionally cheap — existing records, one query — just never requested.

Two pressures will work on you here, and the chapter's named failure mode is yielding to the first. **Softening**: the durability clause makes every evaluation you will ever run look weaker, and stakeholders will ask you to cut it as "too negative." Hold the line — the clause is what makes the rest of the report credible; "lifetime warranty" with no terms is the Week 4 vendor page, written by you. **Inverse softening**: concluding that without longitudinal evidence no claim is defensible. Also wrong. Single-term claims with stated limits are defensible and useful; the indefensible move is the *silent extrapolation* from one term to a learning career — precisely the extrapolation every adoption decision makes unless your report structurally blocks it.

Calibrate the magnitudes too, because your durability-qualified effect will be judged against contested rulers. Hattie's *Visible Learning* tradition treats *d* = 0.40 as the "hinge point" below which effects are unremarkable — the benchmark a prominent EdTech critique uses to dismiss most technology effects as beneath typical teacher impact [contested]. Kraft (2020) counters from the distribution of real-world education RCTs: 0.05 SD is small but meaningful, 0.20 SD is large — and the rebuttal literature adds the implementation-gap point: heterogeneous effects across implementations show that *implementation conditions matter*, not that the intervention class "doesn't work." Teach your stakeholders both rulers and say which you are using; an effect-size benchmark is an instrument with politics, not a fact of nature. For US institutional adopters, translate into ESSA evidence-tier grammar (Tier 1 strong/RCT through Tier 4 rationale): know which tier your own plan would produce *before* a procurement office asks.

Optional enrichment, for non-randomized pilots: **sensitivity thinking** in the spirit of the E-value (VanderWeele & Ding 2017). The formal machinery assumes risk-ratio scales that rarely fit learning outcomes — borrow the *question*, not the formula: "how large would selection effects have to be to produce this gain, and is that plausible here?" One paragraph of quantified humility, standard in your reports.

### 14.5 Retiring the Inherited Toolkit: Kirkpatrick's Limits and the LTEM Bridge

Most working L&D readers arrive holding the Kirkpatrick four-level model — reaction → learning → behavior → results — as the evaluation default. For AI-mediated learning it fails at the root, and the failure is worth stating precisely because the model's *question* survives.

**Level 1 (reaction) is anti-diagnostic here.** The field's defining finding is that satisfaction and learning dissociate: GPT Base produced high engagement and a 17% unassisted deficit. A model that places reaction at the base of an implied causal chain is structurally wrong for this technology — and the chain was questioned long before AI: Holton's classic critique (1996) argued the four levels are a taxonomy with empirically unsupported causal links, not a model [verify page range]. **Level 2 (learning) does not distinguish assisted from unassisted measurement** — the distinction this entire chapter enforces; a Level 2 assessment administered inside the AI-supported environment silently measures the human-AI system. "We did Kirkpatrick Levels 1–2" therefore describes the opening pilot deck exactly: confident, well-formatted, measuring the wrong construct at every level it touches.

**What survives:** Kirkpatrick's pressure toward behavior and results — *did it change what people can do?* — is the right question with an underspecified instrument. The closest practitioner bridge is Thalheimer's **LTEM** (Learning-Transfer Evaluation Model, 2018 — an eight-tier practitioner framework, not peer-reviewed research [verify tier details]), built to devalue attendance and reaction measures and force decision-competence and transfer measurement. If your organization speaks Kirkpatrick, LTEM is the dialect that gets you to withdrawal-test thinking without a vocabulary war. The synthesis: keep the Kirkpatrick question, replace the measurement theory under it — four endpoints, unassisted primary, subgroup mandate, reliance trajectories, durability clause.

### 14.6 The Two-Register Qualified Conclusion

The evaluation ends in writing, twice — and the two versions must be the same truth.

**Technical register:** endpoints and effect estimates with intervals; design and threats to validity; subgroup estimates with the "cannot see" clause; reliance-trajectory results against the fading schedule's predictions; the durability clause.

**Stakeholder register:** the same content, decision-shaped — what we can claim, what we cannot, what we would need to measure to know more, and what we recommend doing meanwhile.

The discipline is **consistency**: the stakeholder version may compress and translate; it may not upgrade. The drift is always one direction — "suggests" becomes "shows," intervals evaporate, the durability clause gets cut as too negative — which is why the Evaluation Plan Checkpoint grades the *pair*, with peer review reading the two registers side by side hunting for claim inflation. When the honest answer is "not yet known," the sentence to write is the one this course has been building toward: *"Not yet known — and here is the measurement that would know it, by this date, at this cost."* With a date and a number in it, that is the difference between hedging and engineering.

The exemplar exists in the wild: the LearnLM/Eedi team, holding the strongest positive result in the field, put "exploratory" *in the title* of their own RCT — and the result is more credible for it. Honesty about evidentiary class is not the tax on a claim; it is the warrant for it.

---

## Mid-Chapter Checkpoint (ungraded)

1. A pilot shows +30% on in-product scores. What single question determines whether this is evidence of learning? (*What can learners do without the product, compared to a no-AI baseline?* If you asked about the size of the gain, reread 14.1.)
2. Your Chapter 6 fading schedule predicted hint requests would decline by Week 6. Telemetry shows them flat. What have you observed? (A reliance-trajectory crutch signature — visible before any assessment is scored. Reread 14.2 if you called it an engagement metric.)
3. Population mean: no unassisted deficit. Why isn't that the end of the analysis? (The scissors: subgroup gains and deficits can cancel at the mean. Reread 14.3.)
4. What three sentences make the durability clause? (Longest measured delay; what therefore cannot be claimed; the extending measurement, with cost. Reread 14.4.)

---

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Same model: +48% assisted with −17% unassisted (GPT Base); +127% assisted, no deficit (GPT Tutor); error propagation as reliance signature | Bastani et al. (2025), *PNAS* (Aug 2025 correction: affiliation only) | Assisted + unassisted, randomized | Verified — the spine; re-read here as evaluation design |
| Human-supervised AI tutoring: +5.5pp on novel next-topic problems; self-labeled exploratory | LearnLM/Eedi RCT [verify — arXiv 2512.23633] | Transfer, randomized | Verified via synthesis; exploratory by authors' own label |
| AI-supported tutors: +4pp mastery overall, +9pp for lowest-rated tutors | Tutor CoPilot RCT (arXiv 2410.03017) | Tutor-mediated, randomized, distributional | Verified; the equity-positive exemplar |
| Short-term gains with unassisted deficits and rising give-up rates (N=1,222) | arXiv 2604.04721 (2026) | Assisted + unassisted + persistence, randomized | **Preprint — not peer-reviewed** [verify]; corroboration, not spine |
| Subgroup evaluation mandate; systematically unstudied populations | Baker & Hawn (2022), *IJAIED* 32 | Review | Verified — canonical |
| Real-world RCT benchmarks: 0.05 SD small-but-meaningful, 0.20 SD large | Kraft (2020), *Educational Researcher* | Methodological | Verified; pairs with the contested Hattie 0.40 hinge [contested] |
| Cognitive Tutor Algebra I at scale: weighted effect ≈ +0.04 | WWC / MATHia evidence base | Mixed endpoints at scale | [contested — see pantry flag: WWC says "mixed effects"; year-2 estimates higher; check the record before citing one figure] |
| ~20 high-quality causal studies in 800+ papers; no longitudinal evidence | Stanford SCALE + converging meta-reviews | Evidence mapping | Verified via synthesis; independently corroborated |
| Kirkpatrick's causal chain empirically unsupported | Holton (1996), *HRDQ* | Theoretical critique | Verified classic [verify pages]; LTEM (Thalheimer 2018) is practitioner framework, presented as such |
| Paste-and-accept majority behavior among GenAI-using STEM students | Wang et al. (2024) | Self-report survey | Verified; **n=40** — directional [verify] |
| "Reliance-trajectory metrics" as a named framework | This book | — | **The book's coinage**; components individually grounded |

**What remains unsettled:** withdrawal-protocol standards (announced vs. unannounced; isomorph construction) — first-generation guidance only; whether reported GenAI meta-analytic effects (~0.7–0.8 in some 2025–2026 summaries) survive screening for endpoint type and study quality [contested — do not cite as consensus]; everything longitudinal.

---

## The Pattern Card

**PATTERN: The Evaluation Plan Protocol** *(spec-ready; this card is the required structure of the Evaluation Plan Checkpoint and of the evaluation section of your final specification)*

| Field | Specification |
|---|---|
| **Intent** | Produce an evaluation whose success claim stands on what learners can do when the AI is withdrawn — and whose report cannot silently inflate |
| **Endpoints** | Four-endpoint table (assisted / unassisted / transfer / retention): instrument, timing, comparison each. **Unassisted primary**, pre-specified in writing before data collection |
| **Comparison** | Named counterfactual, descending preference: randomized pilot → staggered rollout → pre/post with stated threats. Every claim survives "compared to what?" |
| **Withdrawal protocol** | Window cadence (existence disclosed per Ch. 11; timing optional); task sampling (isomorphs default; transfer labeled); population-calibrated administration (Ch. 13) |
| **Subgroups** | Pre-specified on theory-predicted vulnerability; estimation with intervals, not tests; mandatory "populations this evaluation cannot see" clause |
| **Reliance trajectory** | Help-requests/task vs. the Ch. 6 fading schedule; gate-pass quality; acceptance and verification rates (Ch. 13 instrumentation); persistence. Declining curve = scaffold; flat/rising = crutch signature. *(Book's coinage — components literature-grounded)* |
| **Durability clause** | Longest measured delay; what cannot be claimed; the extending measurement with date and cost. Non-deletable |
| **Conclusion** | Two registers, consistency-graded; "not yet known + the measurement that would know it" passes, claim inflation does not |
| **Failure modes** | Assisted endpoint promoted under pressure; missing counterfactual; post-hoc unlabeled subgroup slices; durability clause cut as "too negative"; registers diverge |

---

## Worked Example: The DataWise Evaluation Plan

*Act Three continuing case — segment four of the instructor's integration specification for the Track A statistics tutor. Pilot data referenced here is the course's provided data package and is synthetic, labeled per the book's own sourcing rule. The full specification appears whole in Chapter 15.*

**Situation.** The DataWise tutor now has a guardrail spec (Ch. 11), agentic boundaries (Ch. 12), and a learner-side layer with verification logging and a reliance dashboard (Ch. 13). The institution wants a pilot evaluation next term; the provided package contains two prior terms of course records and one term of tutor telemetry.

**The problem as the designer sees it.** Three open assumptions from earlier segments are due for measurement: the Chapter 6 fading schedule *assumed* hint demand would decline with competence; the Chapter 8 routing audit *could not see* part-time students (data not collected); the Chapter 13 layer *claimed* early error-spotting would calibrate trust. None of these is yet evidence. The plan must convert all three into endpoints — and survive a dean who will read only the summary page.

**Process — including the dead ends.** First draft used the course's existing online quizzes as the unassisted endpoint — dead end: the tutor is available in the same browser; "unassisted" was an honor-system fiction. Second draft proposed a satisfaction-weighted composite to give the dean "one number" — killed by this chapter: the composite lets reaction dilute the primary endpoint, a Kirkpatrick Level 1 regression in a trench coat. Third draft survived: **primary endpoint** — unassisted performance on proctored, no-AI isomorph problem sets covering tutored topics, Week 8 and (retention) Week 14; **comparison** — section-level randomization across DataWise 101's four sections, tutor vs. business-as-usual; **secondary** — assisted in-product scores, two transfer items from the *next, untutored* unit, satisfaction (reported, de-linked from effectiveness claims); **subgroups, pre-specified** — bottom-quartile prior math achievement, first-generation status, non-native English speakers (proxy limits stated), the predicted scissors named in advance; **reliance trajectory** — hint-requests per problem against the published fading schedule, verification rates from the check-the-tutor task; **success claim, pre-written** — "the tutor scaffolds if unassisted ≥ control and the reliance curve declines; any result pairing assisted gains with unassisted deficits is classified crutch regardless of satisfaction."

**Resolution.** The plan closes with the durability clause verbatim: *"Longest measured delay: six weeks post-course, unassisted. This evaluation cannot speak to effects beyond one semester. The measurement that would: linked performance in the follow-on course (no AI tutor present) for pilot vs. control cohorts — near-zero marginal cost from existing records, one year out. We have requested it."* The two-register conclusion is drafted as a template with the numbers blank — written *before* the pilot, so the report's shape cannot bend to its results.

**The lesson.** An evaluation plan is your earlier design decisions converted into falsifiable predictions — the fading schedule, the audit's blind spots, and the literacy layer become endpoints, or they were just prose.

**The limit.** Section-level randomization carries instructor confounds (four sections, three instructors); the plan says so and assigns the sensitivity paragraph. And nothing here measures what the dean's question actually implies — careers, majors, year four. The plan refuses to pretend otherwise; that refusal is Section 14.4 doing its job.

### Track B Extension

Produce the same artifact for your own project, with one addition for corporate contexts: the **Kirkpatrick translation table**, one page — L1 → secondary UX telemetry, de-linked from effectiveness; L2 → split into assisted (product analytics) and unassisted (workflow-isolated tasks), unassisted primary; L3 → transfer to novel job tasks without the assistant; L4 → durable outcomes, durability clause attached. Stakeholders keep their vocabulary; the measurement theory underneath is replaced. Track B bonus requires the reliance-trajectory section to cite your actual telemetry fields (or name the instrumentation gap as a finding).

---

## Exercises

**14.1 — The missing-column diagnostic** *(Analyze).* Three pilot summaries are provided (illustrative). For each: the construct actually measured, the construct claimed, and the single missing measurement that would distinguish them. Two sentences each. One of the three is a genuine scaffold result — identify which, and say what licenses the conclusion.

**14.2 — Endpoint architecture drill** *(Apply).* For a provided product description, write the four-endpoint table — instrument, timing, comparison per endpoint — designate the primary, and justify it in one sentence keyed to the learning objective. Then: which endpoint would the vendor prefer as primary, and what would that choice hide?

**14.3 — The two-register rewrite** *(Evaluate).* You receive a technical results section (provided) with mixed findings: assisted gain, null unassisted result, one concerning subgroup signal, six-week maximum delay. Write the one-page stakeholder summary. Peer-graded on one criterion: claim consistency between registers — every upgrade ("suggests"→"shows", deleted interval, missing durability clause) logged as a defect.

**14.4 — EVALUATION PLAN CHECKPOINT** *(Create — production exercise; 100 pts; no Track B bonus — the Track B investment pays out in the final specification).* The full Pattern Card protocol for your project: four-endpoint table with unassisted primary and pre-specified success claim; counterfactual design with named threats; withdrawal protocol; pre-specified subgroups with the "cannot see" clause; reliance-trajectory instrumentation; durability clause; two-register conclusion template. **Track A:** built against the provided (synthetic, labeled) pilot package, mapping the three open assumptions from the worked example to endpoints. **Track B:** own project, plus the Kirkpatrick translation table if your context is corporate.

**14.5 — Design Lab #9: The sensitivity paragraph** *(Evaluate; 25 pts, Track B bonus +5).* For the non-randomized version of your evaluation (assume the randomization request is denied): write the E-value-style paragraph — what selection story could produce your hoped-for gain, how large it would have to be, and whether that is plausible in your context. Style of thinking, not formula.

*Assessment note.* The Checkpoint is graded as the dress rehearsal for the Chapter 15 defense: 30 pts endpoint architecture and pre-specification, 20 counterfactual honesty, 15 subgroup discipline, 15 reliance trajectory, 10 durability clause, 10 register consistency. The named failure mode — softening — is graded directly: any claim upgrade between registers caps the final component at half marks.

---

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 14 version — the recursive one).** *Apply the test to your evaluation plan itself: if your AI integration were removed tomorrow, would your evaluation detect what it had been contributing — or would the loss be invisible to your own instruments?* Answer by pointing to the endpoint and comparison that would catch it.

**Reliance Disclosure (Chapter 14 version).** Name (1) one place your evaluation design structurally protects honest measurement — a pre-specified endpoint, a proctored isomorph set, a register-consistency check someone else performs; and (2) one place measurement risk remains open — the subgroup you cannot see, the confound your design cannot exclude, the delay you cannot reach — and the measurement that would close it, with a date and a cost.

---

## What Would Change My Mind

The primacy of the unassisted endpoint rests on the demonstrated dissociation between assisted and unassisted performance and on the absence of evidence that assisted measures track durable capability. Two findings would force revision: a body of longitudinal studies showing that early unassisted deficits reliably wash out with continued well-designed AI use (making the withdrawal snapshot a misleading early indicator), or robust evidence that some assisted-performance measure predicts long-run unassisted capability well enough to serve as a valid surrogate endpoint. Either would demote the Withdrawal Test from primary endpoint to one instrument among several — and the second would, honestly, be the more useful result for practice, since assisted telemetry is so much cheaper to collect.

---

## Still Puzzling

1. **Announced or unannounced withdrawal windows?** Each distorts differently — cramming versus trust damage — and no study compares the measurement properties. First-generation guidance is guessing in public here.
2. **What is the right retention delay?** Six weeks is convention by convenience. The forgetting-curve literature suggests the answer is objective-dependent; nobody has mapped it for AI-mediated learning.
3. **Do reliance trajectories actually predict withdrawal outcomes?** The book's coinage assumes telemetry curves foreshadow unassisted performance. That correlation is measurable today with existing logs — and unmeasured.
4. **Can pre-registration discipline survive commercial incentives?** It is prescribed here against the grain of every incentive in the vendor-buyer-pilot triangle. Whether procurement requirements (ESSA tiers, EU AI Act documentation) will supply the missing enforcement is an open institutional question.

---

## Chapter Summary

You can now: architect an evaluation on four endpoints with unassisted performance primary and pre-specified; design a withdrawal protocol — windows, task sampling, counterfactual — knowing what to ask a methodologist for; instrument reliance trajectories that turn your fading schedule into a falsifiable prediction (and say whose coinage the construct is); pre-specify subgroup analyses with the "cannot see" clause attached; write the durability clause and hold it under pressure; and produce a qualified conclusion in two consistent registers, including the engineering form of "not yet known." The integration's last load-bearing artifact exists.

---

## Key Terms

- **Primary endpoint** — the single pre-specified measurement on which the success claim stands; here, unassisted performance.
- **Four-endpoint architecture** — assisted / unassisted / transfer / retention as distinct measurements of distinct constructs.
- **Withdrawal protocol** — the designed measurement of unassisted performance: windows, task sampling, comparison.
- **Reliance-trajectory metrics** — telemetry curves (help requests, acceptance, verification, persistence) read against the fading schedule; *this book's coinage*.
- **Scissors pattern** — subgroup gains and deficits that cancel at the population mean.
- **Durability clause** — three mandatory sentences: longest measured delay; what cannot be claimed; the extending measurement with cost.
- **Two-register conclusion** — technical and stakeholder write-ups of the same truth, graded for consistency.
- **Surrogate endpoint** — a cheaper stand-in measure; assisted performance is an *invalid* surrogate for learning.
- **Claim inflation** — the one-directional drift between registers: "suggests" to "shows."

---

## Bridge

Every artifact now exists: guardrail spec, agentic boundaries, learner-side design, evaluation plan. Week 15 assembles the one document that carries them all — and asks you to defend it.

---

## Further Reading

- **Bastani et al. (2025). "Generative AI Can Harm Learning." *PNAS*.** Re-read it this week as an evaluation design: randomization, dual measurement, error-propagation analysis. The model plan was on page one all along.
- **Baker, R.S., & Hawn, A. (2022). "Algorithmic Bias in Education." *IJAIED* 32, 1052–1092.** The subgroup mandate and the map of who the field fails to study.
- **Kraft, M.A. (2020). "Interpreting Effect Sizes of Education Interventions." *Educational Researcher* 49(4).** The benchmark paper that protects you from both dismissing real effects and celebrating trivial ones — read alongside the Hattie-hinge critique it answers.
- **Holton, E.F. (1996). "The Flawed Four-Level Evaluation Model." *Human Resource Development Quarterly* 7(1).** The classic demolition of the Kirkpatrick causal chain — thirty years old and newly urgent.
- **VanderWeele, T.J., & Ding, P. (2017). "Sensitivity Analysis in Observational Research: Introducing the E-Value." *Annals of Internal Medicine* 167(4).** The source of the sensitivity-thinking habit; borrow the question, not the formula.

---

## LLM Exercise: The Skeptical Buyer

Copy-paste the following into an LLM. The structure gates the model's critique behind your own claims — you must commit before it cross-examines, which is the pre-specification discipline in miniature.

> You are the chief learning officer of an organization considering my AI-mediated learning product, and you have read Bastani et al. (2025) — you know the same model can produce +48% assisted and −17% unassisted simultaneously. I am presenting my evaluation plan. Follow this protocol strictly:
>
> **Phase 1 — My commitments first.** Do not proceed without: (a) my primary endpoint and why; (b) my comparison group; (c) my pre-specified subgroups; (d) my longest measured delay; (e) my pre-written success claim, including what result I would classify as a crutch.
>
> **Phase 2 — Cross-examination.** Attack the weakest element. Ask "compared to what?" of any claim missing a counterfactual. If my unassisted endpoint can be contaminated (AI reachable during measurement), find the hole. If my subgroups are post-hoc, say so. One issue at a time; make me respond before moving on.
>
> **Phase 3 — The summary-page test.** Have me read my stakeholder-register conclusion. Compare it against my Phase 1 commitments and flag every claim upgrade. Then ask: "What does this plan tell me about year two?" — and accept only a measurement or an honest 'nothing, and here is what would.'
>
> **Phase 4 — Verdict, gated.** Before deciding, require me to state the one measurement I most wish my plan had and why I excluded it. Then decide — justified entirely in terms of what my plan can and cannot detect.

Deliverable for Design Lab #9's reflection: the transcript, plus three sentences on the Phase 2 attack you could not answer and what you changed in your Checkpoint because of it.
