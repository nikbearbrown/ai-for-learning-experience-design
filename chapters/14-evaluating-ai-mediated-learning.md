# Chapter 14 — Evaluating AI-Mediated Learning: The Withdrawal Test at Scale
*The missing column is not a measurement oversight. It is a design decision someone already made.*

The deck is beautiful. A corporate learning platform piloted an AI assistant inside its data-analytics curriculum for one quarter. The executive summary shows: +40% on in-product assessments versus the prior cohort; 92% learner satisfaction; the highest NPS of any feature launch in company history; engagement up in every segment; completion up nine points.

Before you approve funding: recall the table this course opened with. Three conditions, same model. GPT Base: +48% assisted, −17% unassisted. GPT Tutor: +127% assisted, no deficit. Control.

Now look at the pilot report and find the column it does not have.

Every number in the deck was measured *with the AI present*. In-product assessments: assisted. Satisfaction: a feeling about assistance. Engagement, completion: behavior *during* assistance. The report measures the human-AI system performing together — and contains not one datum about what any learner can do alone. A GPT-Base-shaped disaster — large assisted gains, real unassisted damage — would produce exactly this deck. So would a genuine scaffold. The report cannot tell you which one was funded, and that is the point: it was never designed to be able to.

This is not fraud, and it is not stupidity. It is the default. Assisted metrics are what products log natively; unassisted measurement must be *designed*, costs friction, and nobody in the vendor-buyer-pilot triangle is paid to add it. You have spent thirteen weeks designing so the missing column comes out right. This week you design the column.

---

Borrow one discipline from clinical-trial methodology: an evaluation is defined by its **primary endpoint** — the single pre-specified measurement on which the success claim stands or falls. Everything else is secondary. The book's thesis dictates the primary endpoint here, because only one endpoint can see the scaffold/crutch distinction at all.

**Assisted performance** — what the learner does with the AI present — is legitimate to measure and structurally incapable of distinguishing scaffold from crutch. Bastani's GPT Base condition was +48% assisted and −17% unassisted simultaneously. An assisted score is denominated in human-plus-AI units; an adoption decision is denominated in human units. Reporting one as the other is a currency conversion with no exchange rate.

**Unassisted performance** — what the learner does when the AI is withdrawn — is the primary endpoint. It is the Withdrawal Test, promoted from a grading mechanic to a measurement protocol.

**Transfer** — performance on novel problems or next-topic material. The LearnLM/Eedi endpoint: students supported by human-supervised AI were 5.5 percentage points more likely to solve a novel problem in the next topic than students tutored by humans alone (exploratory RCT [verify — arXiv 2512.23633]). Transfer is the strongest signal that learning rather than performance occurred, and the hardest to instrument.

**Retention** — unassisted performance at a delay of weeks or months. The endpoint almost nobody measures. The durability gap lives here.

Re-read the study this course opened with — this time as an *evaluation design* rather than a finding. Bastani et al. (2025) exists as a finding only because the design measured assisted *and* unassisted conditions under randomization; an assisted-only version would have reported GPT Base as a +48% triumph. The design even yielded a bonus reliance signature: GPT Base's arithmetic errors propagated into student work — learners were not checking. You have been looking at a model evaluation plan since Week 1 without being asked to see it.

A 2026 preprint corroborates the dissociation outside school mathematics — with unassisted deficits and rising give-up rates appearing after roughly ten minutes of AI interaction, N=1,222 (arXiv 2604.04721, not yet peer-reviewed [verify status]). That is corroboration, not spine; this chapter survives its removal.

The design rule: **pre-specify the primary endpoint, in writing, before data collection.** "Measure everything and decide later" guarantees the report gets written on whichever endpoint moved — and assisted performance and satisfaction almost always move. Pre-specification (a signed internal memo at minimum; registry-style at REES or OSF in academic contexts) makes honest reporting structurally possible rather than a matter of post-hoc virtue. An evaluation without a pre-specified endpoint is a future vendor claim about yourself.

<!-- → [TABLE: four-endpoint architecture — columns: endpoint name, what it measures, when collected, comparison required, what it can and cannot claim; rows: assisted performance, unassisted performance (labeled PRIMARY), transfer, retention; footer: "an evaluation with only the first row is not a learning evaluation — it is a product-usage audit"; caption: The four endpoints measure four different constructs. Assisted performance and learning are not two readings of one dial.] -->

---

Every design lab this term answered the Withdrawal Test rhetorically. At scale it becomes instrumentation — and no standard exists for withdrawal-protocol design. What follows is first-generation practice guidance with named open parameters, not settled method.

**Withdrawal windows** are scheduled AI-free performance occasions, designed into the experience. Chapter 10's AI-free assessment windows now do double duty as data collection. Two decisions to specify. *Announced or unannounced:* announced windows invite cram-with-AI distortion; unannounced windows carry fairness and trust costs (categorically different experiences for a ten-year-old and a graduate student). The defensible middle: the *existence and approximate cadence* of withdrawal windows is always disclosed per Chapter 11's transparency layer; exact timing need not be. *Task sampling:* same tasks practiced with AI (contamination risk), isomorphic variants (the workhorse), or transfer items (a different claim — label it separately).

**The counterfactual** is the force behind any withdrawal finding. "Unassisted scores dropped" means nothing alone; the Bastani design's power came from randomization. Minimum credible designs in descending strength: a *randomized pilot* (often feasible at section or cohort level, and cheaper than the meeting that decides against it); *staggered rollout / waitlist control* (everyone gets the product, timing is randomized); *pre/post with stated threats* — weakest, sometimes all you have, honest only when the threats are named in the report rather than discovered by its readers. Drill into every claim sentence: *compared to what?*

**Reliance-trajectory metrics** are the dynamic complement to the withdrawal snapshot — and a construct name to use with attribution. *"Reliance-trajectory metrics" is this book's coinage*; the components are individually grounded: help-seeking analytics and the ITS "gaming the system" detection literature (Baker et al., 2004 [verify citation]), persistence and give-up rates, acceptance and copy-paste rates (Wang et al.'s paste-and-accept signature as a loggable event), and the verification behavior instrumented by Chapter 13's error-spotting design. The unifying prediction makes your earlier artifacts falsifiable: **a scaffold predicts a declining reliance curve along the Chapter 6 fading schedule; a flat or rising curve is the crutch signature, visible in telemetry before any assessment is scored.**

Anticipate the stakeholder objection: *"the withdrawal test punishes the product."* It does not. GPT Tutor passed it — +127% assisted, no unassisted deficit. The test penalizes crutch designs, exclusively. A designer who built Weeks 5–13's guardrails should expect to pass and should want the only data that can prove it.

---

Baker & Hawn (2022) — the canonical algorithmic-bias-in-education review from Chapter 8 — carries a mandate this chapter operationalizes: evaluate on **subgroup performance, not population averages**, and note which groups the field systematically fails to study.

A population-average positive can conceal subgroup harm exactly where theory predicts it. Klarin et al. (2024) found adolescents with executive-function challenges perceive AI as more useful and over-rely more, so the unassisted deficit should be *expected* to concentrate — the scissors pattern, in which the learners with the largest assisted gains carry the largest unassisted losses, averaging out to a pleasant nothing at the population level.

Four rules. *Pre-specify* subgroups on theory-predicted vulnerability before data collection — this is the opposite of p-hacking; unplanned slices are hypothesis-generating and must be labeled as such. *Estimate, don't test:* most pilots are underpowered for subgroup hypothesis tests; report estimates with intervals and say so. *State what you cannot see:* every report carries a "populations this evaluation cannot see" clause — Chapter 8's audit clause recurring as a reporting obligation. *Know what equity-positive looks like:* Tutor CoPilot's signature finding — 4-point average gains, 9-point gains concentrated in the lowest-rated tutors — is an equity-positive result, knowable only because the study measured the distribution, not just the mean.

<!-- → [CHART: scissors pattern visualization — x-axis: prior achievement quartile (Q1 low to Q4 high); two lines: "assisted performance gain" (roughly flat or slightly positive across quartiles) and "unassisted deficit" (large negative for Q1, smaller or null for Q4); population mean marked where both lines cross zero; annotation: "population average: no deficit; Q1 subgroup: −22pp"; caption: The scissors pattern is invisible at the mean. Pre-specified subgroup analysis is the only instrument that sees it.] -->

---

The field has zero multi-year studies of AI-mediated learning. Nothing on whether the crutch effect persists, compounds, or washes out; whether learners develop appropriate reliance over time or deepen dependency; whether four years of AI-supported learning produces different capabilities than four years without. Current reviews calling for studies "over several months" mark months — not years — as the frontier.

This chapter converts the lament into an obligation with teeth. **Every evaluation plan carries a durability clause**, three sentences:

One: *the longest delay at which unassisted performance was measured* — a number, not an adjective. Two: *what the evaluation therefore cannot claim* — "this evaluation supports a one-term scaffold claim; it supports no claim about cumulative effects." Three: *the measurement that would extend the claim, and its cost* — a retention follow-up, a linked next-course comparison, a longitudinal cohort design. These extensions are often institutionally cheap: existing records, one query, just never requested.

Two pressures will work on you here. The first is softening — the durability clause makes every evaluation you will ever run look weaker, and stakeholders will ask you to cut it as "too negative." Hold the line. The clause is what makes the rest of the report credible; a "lifetime warranty" with no terms is the Week 4 vendor page, written by you. The second is inverse softening — concluding that without longitudinal evidence no claim is defensible. Also wrong. Single-term claims with stated limits are defensible and useful; the indefensible move is the *silent extrapolation* from one term to a learning career, which is precisely the extrapolation every adoption decision makes unless your report structurally blocks it.

Calibrate the effect-size benchmarks you will be judged against, because they are contested. Hattie's *Visible Learning* tradition uses *d* = 0.40 as the "hinge point" below which effects are unremarkable. Kraft (2020) counters from the distribution of real-world education RCTs: 0.05 SD is small but meaningful, 0.20 SD is large — and the rebuttal literature adds the implementation-gap point: heterogeneous effects across implementations show that implementation conditions matter, not that the intervention class "doesn't work." Teach your stakeholders both rulers and say which you are using. For US institutional adopters, know the ESSA evidence-tier grammar before a procurement office asks. An effect-size benchmark is an instrument with politics, not a fact of nature.

---

Most working L&D readers arrive holding the Kirkpatrick four-level model — reaction, learning, behavior, results — as the evaluation default. For AI-mediated learning it fails at the root, and the failure is worth stating precisely.

Level 1 (reaction) is anti-diagnostic here. The field's defining finding is that satisfaction and learning dissociate: GPT Base produced high engagement and a 17% unassisted deficit. A model that places reaction at the base of an implied causal chain is structurally wrong for this technology. Holton's classic critique (1996) argued the four levels are a taxonomy with empirically unsupported causal links, not a model [verify page range]. Level 2 (learning) does not distinguish assisted from unassisted measurement — the distinction this entire chapter enforces; a Level 2 assessment administered inside the AI-supported environment silently measures the human-AI system. "We did Kirkpatrick Levels 1–2" describes the opening pilot deck exactly: confident, well-formatted, measuring the wrong construct at every level it touches.

What survives: Kirkpatrick's pressure toward behavior and results — *did it change what people can do?* — is the right question with an underspecified instrument. Thalheimer's LTEM (Learning-Transfer Evaluation Model, 2018 — an eight-tier practitioner framework, not peer-reviewed research [verify tier details]) is built to devalue attendance and reaction measures and force decision-competence and transfer measurement. If your organization speaks Kirkpatrick, LTEM is the dialect that gets you to withdrawal-test thinking without a vocabulary war. The synthesis: keep the Kirkpatrick question, replace the measurement theory underneath — four endpoints, unassisted primary, subgroup mandate, reliance trajectories, durability clause.

---

The evaluation ends in writing, twice — and the two versions must be the same truth.

The **technical register** carries endpoints and effect estimates with intervals; design and threats to validity; subgroup estimates with the "cannot see" clause; reliance-trajectory results against the fading schedule's predictions; the durability clause. The **stakeholder register** carries the same content, decision-shaped — what we can claim, what we cannot, what we would need to measure to know more, and what we recommend doing meanwhile.

The discipline is *consistency*: the stakeholder version may compress and translate; it may not upgrade. The drift is always one direction — "suggests" becomes "shows," intervals evaporate, the durability clause gets cut as too negative. Which is why the Evaluation Plan Checkpoint grades the *pair*, with peer review reading the two registers side by side hunting for claim inflation.

When the honest answer is "not yet known," the sentence to write has a date and a number in it: *"Not yet known — and here is the measurement that would know it, by this date, at this cost."* With those two pieces, the gap between hedging and engineering closes.

The exemplar exists in the wild: the LearnLM/Eedi team, holding the strongest positive result in the field, put "exploratory" *in the title* of their own RCT. Honesty about evidentiary class is not the tax on a claim; it is the warrant for it.

---

Walk the evaluation plan through the Track A case and the four-endpoint architecture becomes operational.

DataWise 101's tutor now has a guardrail spec (Chapter 11), agentic boundaries (Chapter 12), and a learner-side layer with verification logging (Chapter 13). The institution wants a pilot evaluation next term. Three open assumptions from earlier segments are due for measurement: the Chapter 6 fading schedule *assumed* hint demand would decline with competence; the Chapter 8 routing audit *could not see* part-time students; the Chapter 13 layer *claimed* early error-spotting would calibrate trust. None of these is yet evidence. The plan must convert all three into endpoints — and survive a dean who will read only the summary page.

First draft used the course's existing online quizzes as the unassisted endpoint — dead end: the tutor is available in the same browser; "unassisted" was an honor-system fiction. Second draft proposed a satisfaction-weighted composite to give the dean "one number" — killed by this chapter: the composite lets reaction dilute the primary endpoint.

The third draft survived. *Primary endpoint:* unassisted performance on proctored, no-AI isomorph problem sets covering tutored topics, Week 8 and (retention) Week 14. *Comparison:* section-level randomization across four sections, tutor versus business-as-usual. *Secondary:* assisted in-product scores, two transfer items from the next untutored unit, satisfaction (reported, de-linked from effectiveness claims). *Pre-specified subgroups:* bottom-quartile prior math achievement, first-generation status, non-native English speakers with proxy limits stated — and the scissors named in advance. *Reliance trajectory:* hint-requests per problem against the published fading schedule, verification rates from the check-the-tutor task. *Success claim, pre-written before data collection:* "the tutor scaffolds if unassisted performance ≥ control and the reliance curve declines; any result pairing assisted gains with unassisted deficits is classified crutch regardless of satisfaction."

The plan closes with the durability clause verbatim: "Longest measured delay: six weeks post-course, unassisted. This evaluation cannot speak to effects beyond one semester. The measurement that would: linked performance in the follow-on course (no AI tutor present) for pilot versus control cohorts — near-zero marginal cost from existing records, one year out. We have requested it."

The two-register conclusion is drafted as a template with the numbers blank — written before the pilot, so the report's shape cannot bend to its results.

The lesson: an evaluation plan is your earlier design decisions converted into falsifiable predictions. The fading schedule, the audit's blind spots, and the literacy layer become endpoints, or they were just prose.

The limit: section-level randomization carries instructor confounds; the plan says so and assigns the sensitivity paragraph. And nothing here measures what the dean's question actually implies — careers, majors, year four. The plan refuses to pretend otherwise; that refusal is the durability clause doing its job.

---

## Exercises

**Warm-up**

1. *(Understand / diagnose)* A pilot shows +30% on in-product scores. State the single question that determines whether this is evidence of learning. Then name the study design element that would let the report answer it. *What this tests: whether you have internalized the assisted/unassisted distinction as a measurement design question, not a philosophical one.*

2. *(Understand / apply)* Your Chapter 6 fading schedule predicted hint requests would decline by Week 6. Telemetry shows them flat. State precisely what you have observed — using the construct terminology from this chapter — and what it predicts about the upcoming withdrawal window. *What this tests: ability to read reliance-trajectory telemetry as a falsifiable prediction rather than an engagement metric.*

3. *(Understand / explain)* A population-mean analysis shows no unassisted deficit. State why this is not the end of the analysis, using the scissors pattern, and name the pre-specification move that would have made the concerning subgroup visible. *What this tests: the Chapter 8 subgroup logic applied to evaluation design.*

**Application**

4. *(Apply / design)* For a provided product description, write the four-endpoint table — instrument, timing, comparison, and what the endpoint can and cannot claim — and designate the primary. Then state which endpoint the vendor would prefer as primary and what that choice would hide. *What this tests: ability to design an endpoint architecture rather than accept the default.*

5. *(Apply / write)* You receive a technical results section with mixed findings: assisted gain, null unassisted result, one concerning subgroup signal, and a six-week maximum delay. Write the one-page stakeholder summary. Peer-graded on one criterion: every claim upgrade between registers — "suggests" to "shows," deleted interval, missing durability clause — logged as a defect. *What this tests: the two-register discipline under the specific pressure of a mixed result, where the temptation to upgrade the positive is strongest.*

6. *(Apply / produce — Evaluation Plan Checkpoint, 100 pts)* The full evaluation plan for your project: four-endpoint table with unassisted primary and pre-written success claim; counterfactual design with named threats; withdrawal protocol; pre-specified subgroups with the "cannot see" clause; reliance-trajectory instrumentation keyed to your fading schedule; durability clause (three sentences, non-deletable); two-register conclusion template with the numbers blank, written before you see the results. Track A: map the three open assumptions from the worked example to endpoints. Track B: own project, plus a Kirkpatrick translation table if your context is corporate. *What this tests: integration across the entire course — the fading schedule, the routing audit's blind spots, the learner-side instrumentation, and the transparency layer all become endpoints or they were just prose.*

**Synthesis**

7. *(Synthesize / evaluate)* A procurement officer invokes the Hattie hinge — *d* = 0.40 as the threshold for a meaningful effect — to dismiss a 0.18 SD unassisted improvement in your pilot. Write a response that uses Kraft (2020) and the implementation-gap argument, names the effect-size benchmark as an instrument with contested assumptions, and ends with the one additional measurement that would make your effect interpretable on the officer's own terms. *What this tests: ability to hold two contested evaluation frameworks simultaneously and reason about the design implication rather than picking a side.*

8. *(Synthesize / design)* The chapter identifies four failure modes in the evaluation plan: assisted endpoint promoted under pressure, missing counterfactual, post-hoc unlabeled subgroup slices, and durability clause cut as "too negative." For each, write the institutional pressure that produces it and the structural design move — in the plan itself, not in the report-writing stage — that prevents it. *What this tests: ability to see evaluation integrity as an upstream design constraint rather than a downstream writing discipline.*

**Challenge**

9. *(Challenge / open-ended)* The chapter acknowledges that reliance-trajectory metrics — the correlation between telemetry curves and withdrawal outcomes — is a testable prediction that remains unmeasured. Design the study that would measure it: specify the telemetry variables, the withdrawal-performance outcome, the sample and timeline, how you would establish whether the trajectory genuinely predicts the outcome (as opposed to both being driven by a third variable like prior achievement), and what a null result would imply for the evaluation framework this course teaches. Name the three strongest arguments against treating reliance trajectories as a leading indicator even if the correlation holds. *What this tests: ability to see this chapter's central evaluation instrument as a hypothesis — and to specify what falsification would look like.*

---

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test — Chapter 14 version (the recursive one).** Apply the test to your evaluation plan itself: if your AI integration were removed tomorrow, would your evaluation detect what it had been contributing — or would the loss be invisible to your own instruments? Answer by pointing to the specific endpoint and comparison that would catch it.

**Reliance Disclosure — Chapter 14 version.** Name (1) one place your evaluation design structurally protects honest measurement — a pre-specified endpoint, a proctored isomorph set, a register-consistency check someone else performs; and (2) one place measurement risk remains open — the subgroup you cannot see, the confound your design cannot exclude, the delay you cannot reach — and the measurement that would close it, with a date and a cost.

---

## LLM Exercise: The Skeptical Buyer

Copy-paste the following into a frontier LLM. The structure gates the model's critique behind your own claims — you must commit before it cross-examines, which is the pre-specification discipline in miniature.

---

You are the chief learning officer of an organization considering my AI-mediated learning product, and you have read Bastani et al. (2025) — you know the same model can produce +48% assisted and −17% unassisted simultaneously. I am presenting my evaluation plan. Follow this protocol strictly:

**Phase 1 — My commitments first.** Do not proceed without: (a) my primary endpoint and why; (b) my comparison group; (c) my pre-specified subgroups; (d) my longest measured delay; (e) my pre-written success claim, including what result I would classify as a crutch.

**Phase 2 — Cross-examination.** Attack the weakest element. Ask "compared to what?" of any claim missing a counterfactual. If my unassisted endpoint can be contaminated (AI reachable during measurement), find the hole. If my subgroups are post-hoc, say so. One issue at a time; make me respond before moving on.

**Phase 3 — The summary-page test.** Have me read my stakeholder-register conclusion. Compare it against my Phase 1 commitments and flag every claim upgrade. Then ask: "What does this plan tell me about year two?" — and accept only a measurement or an honest "nothing, and here is what would."

**Phase 4 — Verdict, gated.** Before deciding, require me to state the one measurement I most wish my plan had and why I excluded it. Then decide — justified entirely in terms of what my plan can and cannot detect.

---

*Deliverable for Design Lab #9's reflection: the transcript, plus three sentences on the Phase 2 attack you could not answer and what you changed in your Checkpoint because of it.*
