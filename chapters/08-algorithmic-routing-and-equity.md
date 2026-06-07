# Chapter 8 — Algorithmic Routing and Equity: Auditing the Personalization Layer

## Learning Objectives

By the end of this chapter you will be able to:

1. **(Understand)** Explain how bias enters well-intentioned adaptive systems through historical performance data and correlated features, using the Baker & Hawn entry-point map. *(Tracks A and B)*
2. **(Analyze)** Trace a system's routing logic and identify where lower-performing learners lose access to higher-order tasks — digital tracking made visible in the logs. *(Track A: the provided DataWise 101 difficulty logs. Track B: your own routing/adaptivity data or design documents.)*
3. **(Create)** Design the routing counter-patterns: floor constraints, visible and revisable routing, off-ramps from remediation, and human-in-the-loop review for high-stakes routing. *(Tracks A and B)*
4. **(Create)** Produce a routing equity audit with named harms, named counter-patterns keyed to each harm, and an honest account of what the audit could not see. *(Track A: audit of the stats tutor's difficulty logic. Track B: audit of your own project — this week is also the course's one track-switch decision point.)*

A warning, made openly because you will feel it anyway: this is the hardest conceptual week of Act Two. You must accept a sentence that resists intuition: **a system can be individually adaptive — even individually correct, decision by decision — and collectively unjust.** There is no villain in this chapter. The harm is emergent from locally reasonable decisions, which is exactly why it survives good intentions — and why the audit must be a design phase rather than a conscience.

## Opening Case: The Personalization Worked Exactly as Designed

*(Illustrative case, built from the Track A synthetic data package; the log structure and divergence pattern are modeled on the documented dynamics in the sources cited through this chapter.)*

Two learners enroll in DataWise 101 in the same week. On the diagnostic, they score identically: 62%.

Learner A does coursework evenings on a home desktop with fiber: long, uninterrupted sessions, quick responses. Learner B works on a phone, on a shared data plan, between shifts: short sessions, high latency, dropped connections — the logs show breaks mid-problem, re-starts, long gaps between answers.

The tutor's difficulty model reads the only signals it has: response latency, hint usage, session continuity, rolling performance. Learner A's smooth sessions read as fluency; by week two the system is serving multi-step inference problems. Learner B's interrupted sessions read as struggle; the system responds the way it was designed to — supportively. Easier items. Review drills. Shorter problems "to rebuild confidence."

By week six, the divergence is stark. Learner A's task diet is 40% higher-order problems — interpretation, multi-step inference, design-a-study items. Learner B's is 8%. Same starting score, same course, same tuition. The six weeks of logs sit in your course pack, and this week you will find the exact entries where the paths forked.

Nothing malfunctioned. No demographic field exists anywhere in the feature list — the ZIP code never entered the model, only its shadows did. The personalization worked exactly as designed. That sentence is this chapter's epitaph for a whole class of systems, and your job this week is to learn to write a different design.

## Prerequisites

- **Chapter 7's model literacy** is the hard prerequisite: you cannot audit routing logic you cannot read. You need the BKT over-practice branch and the interpretability distinction — an audit asks different questions of a BKT-backed router than of an opaque one.
- **Chapter 4's evidence discipline**: subgroup claims held to subgroup evidence; population averages settle nothing this week.
- **Data access:** Track A, the provided difficulty logs; Track B, your own routing/adaptivity data or design documents. If your Track B project can supply neither, this week is where you decide whether to switch tracks (you may switch once, now).

## Core Content

### 8.1 How Bias Enters Well-Intentioned Systems: The Baker & Hawn Map

The canonical reference for this entire chapter is Baker & Hawn (2022), "Algorithmic Bias in Education," *International Journal of Artificial Intelligence in Education* 32, 1052–1092 — verified, heavily cited, and the field's structural map of how educational algorithms come to discriminate. Its central insight, the one to internalize before anything else: **no one has to put a protected attribute into the model for the model to discriminate by it.** Bias enters at every stage of the pipeline:

- **Training data.** Historical performance data encodes historical inequity. If lower-income students historically received weaker instruction and scored lower, a model predicting success from performance history learns that inequity *as signal*. The model is not wrong about the data; the data is a record of an unjust process.
- **Correlated features — proxies.** ZIP code, school attended, device type, time-of-day usage, even response latency correlate with race, income, and language background. The protected attribute is reconstructed from its shadows — the opening case's mechanism: ZIP-code-*correlated* interaction histories, never ZIP codes.
- **Measurement bias.** The labels themselves can be biased: disciplinary records reflect biased discipline; "at-risk" flags launder prior institutional judgments into ground truth.
- **Representation.** Models trained on majority populations perform measurably worse for under-represented subgroups — Baker & Hawn document differential accuracy by race/ethnicity, gender, and nationality, and flag a large "unknown bias" territory (disability, dialect, rural status, intersections) where nobody has checked.
- **Deployment feedback loops.** Predictions trigger interventions that generate new data confirming the prediction. Cathy O'Neil's *Weapons of Math Destruction* named the pattern plainly: opaque models, at scale, doing damage, manufacturing their own confirmation. Section 8.2's remedial loop is this loop running inside a learning product.

Two harm categories organize everything downstream (Baker & Hawn, drawing on the broader fairness literature). **Allocative harms**: unfair distribution of resources, opportunities, or interventions — who gets routed to advanced work, who gets flagged for remediation, who gets the human tutor's scarce time. **Representational harms**: systematic misrepresentation, stereotyping, or erasure — a system that has effectively learned that "learners like you" don't do honors work; speech scoring that fails for dialects thin in the training data. In routing, allocative harms dominate, but the two feed each other: misrepresentation upstream becomes misallocation downstream.

Now retire the reflex defense, because every team you work with will reach for it: *"We don't collect race or income data, so our system can't be biased."* Proxy reconstruction means the absence of the attribute proves nothing. Worse — and this is the discomfort to sit with — the only way to *know* is subgroup evaluation, which requires collecting or linking exactly the demographic data the team was proud not to have. That tension is Baker & Hawn's audit-blocking problem in miniature (section 8.3), and pretending it away is how systems ship unaudited.

**Trace one proxy chain end to end.** The DataWise 101 difficulty model uses prior-unit performance, hint-usage rate, and response latency. Students working on phones on shared data plans — an income-correlated condition — show higher latency and more session breaks. The model reads hesitancy. It routes to remedial drill. Drill displaces the higher-order problems that build next unit's performance. Next unit's data duly confirms weakness. No demographic field anywhere in the feature list; demographic disparity in the output anyway — self-reinforcing, and invisible at the level of any single decision.

### 8.2 Digital Tracking: The Remedial Loop Is the New Ability Grouping

Here is the conceptual inversion in its sharpest form: an adaptive system that is *correct about each individual at each moment* can still reproduce, at scale and invisibly, the tracking structures education spent decades fighting.

The mechanism is the loop you met as a modeling footnote in Chapter 7's BKT example. The system meets a lower-performing learner and responds with easier, lower-order material — "meeting students where they are," locally defensible every single time. But each remedial assignment consumes time not spent on grade-level, higher-order work; the learner falls further behind; the gap generates more evidence of "not ready"; the evidence routes more remediation. Locally rational, globally unjust.

Crucially, this harm did not need an algorithm to exist — the strongest evidence for it predates the products. TNTP's *The Opportunity Myth* (2018) documented the human-run version at scale: students stuck in remediation cycles are disproportionately students of color, low-income students, students with disabilities, and English learners; Black and Latinx students and students in high-poverty schools were more likely to be assigned remediation *than white peers with identical success on early grade-level work*. And the counterfactual is the killer finding: students who instead received grade-appropriate, challenging assignments grew substantially more — on the order of seven additional months of growth — which TNTP's follow-up distilled into a directive (*Accelerate, Don't Remediate*, 2021). Read that against any adaptive router you have ever seen: withholding challenging work pending "readiness" is backwards *for exactly the learners the system labels behind*. The algorithm did not invent the low-expectations decision. It automated an inherited one — faster, at scale, with a progress bar.

The "digital tracking" frame earns its name structurally. Classical tracking sorted students into *visible* tracks — honors, regular, remedial — with a label a parent could see and a placement meeting a family could fight. Algorithmic routing produces individualized, continuous, *invisible* tracks: no label, no meeting, no moment of assignment to contest. The UK's 2020 Ofqual episode is the exception that proves the rule: when an algorithm adjusted teacher-assessed A-level grades using each school's historical results — systematically downgrading high achievers at historically lower-performing, disproportionately state schools (roughly 40% of assessments downgraded [verify against BBC/Ofqual primary reporting]) — the harm was *visible on results day*, legible to every family at once, and public outcry forced full reversal within days. Adaptive routing never produces a results day. Visibility and contestability are therefore not interface niceties; they are the modern equivalents of the rights that made classical tracking fightable — which is why they return as named counter-patterns in section 8.5.

One honest note on evidence status: the remedial-loop harm *inside adaptive software specifically* is established by mechanism plus adjacent literatures — TNTP for the practice, Baker & Hawn for the bias channels — not by a single named RCT showing a product locking students into loops [verify — flagged for expert review]. The OECD's macro warning completes the picture: personalization layered onto unequal systems amplifies the inequality, and comfortable, unchallenging individualized paths must not be confused with effective ones (OECD Digital Education Outlook 2023).

### 8.3 Auditing the Personalization Layer: Subgroup Evaluation and ABROCA

The audit is this chapter's deliverable skill, and its first principle fits on a sticky note: **population averages conceal subgroup harms.** A model with excellent overall accuracy can be systematically worse for one group; a system with positive average effects can harm the learners it routes downward. Baker & Hawn's mandate — evaluate on subgroup performance, not population averages — applies with full force to your own pilot data, not just to procurement clearinghouses. The toolkit has four layers:

**Disaggregated error rates.** Accuracy, false-positive rate, and false-negative rate, per subgroup. The asymmetry between error types is pedagogically loaded: in a dropout-risk system, a false positive stigmatizes a student who would have succeeded; in a mastery system, a false negative — "unmastered" when the learner has it — sentences a learner to over-practice (Chapter 7's planted branch, now an equity event). Which error costs more depends entirely on what the prediction *triggers*. Auditing the model is not auditing the system.

**ABROCA.** Absolute Between-ROC Area (Gardner, Brooks & Baker, LAK 2019 — verified) measures the area between two subgroups' ROC curves. Its teaching value: two groups can have *identical AUC* — identical headline accuracy — while the model behaves differently across decision thresholds; ABROCA catches what the aggregate hides. Demonstrated across 44 MOOCs and four million learners. Carry the recent caution with it: ABROCA is noisy in small samples — small-pilot audits can both miss real bias and cry wolf, so statistical-power treatment is now part of doing this honestly (EDM 2025 power test, arXiv 2501.04683).

**Routing-outcome audits.** Beyond model accuracy entirely: what *experiences* did the routing allocate, by subgroup? This is the task-diet analysis — share of higher-order tasks served, per learner, over time. A model can be perfectly calibrated for every subgroup while the *policy* built on it still distributes higher-order work inequitably. This layer is where the 40%-versus-8% divergence lives, and no model-metric virtue can answer for it.

**Impossibility honesty.** Different fairness criteria — calibration, equalized error rates, demographic parity — are mathematically incompatible in general (Kleinberg et al. 2016; Chouldechova 2017; the enduring lesson of the COMPAS debate, told accessibly in Brian Christian's *The Alignment Problem*). So **the audit cannot end in a certificate of fairness, because mathematics forbids one. It ends in a named, owned design judgment about which unfairness to refuse and who bears the errors you accept.** Students reliably flip here from "certify it fair" to "fairness is impossible, so why audit?" The answer: the audit's product was never a certificate — it is the relocation of a decision, from the model's silent defaults to the designer's signed accountability.

Finally, the **audit-blocking problem** (Baker & Hawn): overly restrictive privacy regimes can make subgroup audits impossible — you cannot test across groups on data you are forbidden to hold or link. Policy must mandate audits while building the secure, anonymized infrastructure that makes them possible. The designer-scale version: your audit's "what this audit could not see" section is a required, honest deliverable — not an apology, never a blank.

### 8.4 The Audit That Was Ignored: Wisconsin DEWS

One documented public case anchors everything above, and it is worth knowing cold, because it is the case your stakeholders will have heard of.

Wisconsin's Dropout Early Warning System (DEWS) predicted, twice a year, each middle schooler's likelihood of on-time graduation, from test scores, disciplinary records, attendance — and race. The Markup's investigation ("False Alarm," co-published with Chalkbeat, April 2023 — verified) found: when DEWS predicted a student would *not* graduate on time, it was wrong about **74% of the time**; false alarms fell disproportionately on Black and Hispanic students; the system had been deliberately calibrated to over-identify risk ("cast a wide net"); educators received little interpretation training; and — the detail that should reorganize your understanding of what audits achieve — **the state's own 2021 internal equity analysis had already identified the disparity, and the system kept running.**

Read DEWS through this chapter's lenses. It is an allocative-harm story: the label routes adult attention, interventions, and expectations — and the false positive is not a free extra intervention. A "high risk" label changes how teachers see a student and how the student sees themselves; Claude Steele's stereotype-threat research (*Whistling Vivaldi*) supplies the mechanism by which the watching adult's lowered expectation becomes part of the treatment. It is an audit-governance story: an audit without consequences changed nothing. And it is a feature-selection story with a twist: DEWS *included* race and failed; the opening case's system *excluded* every demographic field and would fail too. Naive inclusion and naive exclusion both lose; calibration, error asymmetry, and consequences are where the failure actually lived.

One scope note: DEWS is an early-warning predictor, not an adaptive-learning router. It anchors this chapter as the *documented, public, state-scale* case of the same harm class — prediction routing opportunity — while the within-product version plays out in logs like DataWise 101's. (What Wisconsin did after 2023 — pause, overhaul, or continuation — needs a fresh verification pass; this book's research base ends with reporting that DPI moved to overhaul its reporting [verify — see pantry flag].)

### 8.5 The Counter-Pattern Set: Routing That Cannot Quietly Track

The constructive half. Each counter-pattern is keyed to a named harm, and each carries its own failure mode, because a counter-pattern implemented as theater is worse than none — it inoculates the team against further scrutiny.

**Floor constraints.** Every learner, regardless of model state, retains guaranteed access to a minimum diet of higher-order, grade-appropriate tasks. The warrant is not generosity; it is the TNTP growth evidence — challenging work *produces* growth, so withholding it pending readiness is backwards for precisely the learners labeled behind. *Failure modes:* symbolic floors; or higher-order tasks delivered bare, without the scaffolding that makes them productive. The floor needs support attached, not just access granted.

**Visible, revisable routing.** Learner and teacher can see what the system decided — current level, the why, what would change it — and can contest it. This is Chapter 7's interpretability investment paying out: a BKT-backed router can explain itself per skill; an opaque one cannot, which is why the model choice was an equity decision before it was a technical one. *Failure mode:* visibility as data-dump — an uninterpretable dashboard satisfies the letter and defeats the purpose.

**Off-ramps from remediation.** Every remedial assignment carries an explicit, learner-visible exit condition — "two correct applications and you rejoin the main path" — and remediation is bounded: no indefinite loops without escalation to a human. *Failure mode:* exit conditions keyed to the same possibly-biased mastery estimate that created the loop. The exit gate must be auditable too.

**Human-in-the-loop for high-stakes routing.** Any decision affecting opportunities, placement, or assessment pacing — anything a parent would once have attended a meeting about — gets human review: the model recommends, a human decides. DEWS is the cautionary tale of skipping this; the EU AI Act's high-risk classification of educational AI is the regulatory floor (design context here; Chapter 12 handles policy). *Failure mode:* rubber-stamping — review volume so high that automation bias does the routing anyway. The design response is budgeting real review capacity, not writing a review requirement.

**Participatory co-design of personalization rules.** Involve learners and affected communities in deciding what the system adapts and on what evidence — before the routing logic freezes. The practice is real and growing in the learning-analytics literature under the names *participatory design* and *co-design* (LAK '22 review; co-design of adaptive learning technology, *Technology, Knowledge and Learning*, 2024). A naming caution this book owes you: an earlier synthesis called this "Participatory Learning and Advocacy (PLĀ)"; that framework name could not be verified [verify — see pantry flag], so this chapter teaches the practice under its verified names. *Failure mode:* participation theater — feedback sessions held after the logic is frozen, harvesting legitimacy instead of design input.

And answer the objection from every roadmap meeting — *"these patterns trade learning efficiency for fairness"* — head on. For floor constraints, the TNTP evidence says no: the floor *is* the better learning design for routed-down students, not a fairness tax. Where genuine costs exist — review capacity, interface complexity — name them as costs the institution either pays or silently transfers to the routed-down learner. That sentence belongs in your audit, verbatim if necessary.

## Mid-Chapter Checkpoint

Ungraded; surface confusion now, before the audit.

1. Name three features with no demographic content that can reconstruct income or race; state each proxy chain in one sentence. *(Wobbly? Reread 8.1.)*
2. Why can a system be correct about each learner at each moment and still unjust in aggregate? Use the remedial loop. *(Reread 8.2.)*
3. Two subgroups have identical AUC. Why might the model still be unfair, and which tool catches it? *(Reread 8.3.)*
4. The DEWS audit existed in 2021. Why didn't it matter, and what does that imply for your audit's last section? *(Reread 8.4.)*
5. For one counter-pattern, name its failure mode and the design move that prevents it. *(Reread 8.5.)*

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Bias enters educational algorithms via training data, proxies, labels, representation, feedback loops; documented differential accuracy by race/ethnicity, gender, nationality | Baker & Hawn 2022, *IJAIED* 32 | Field review | **Verified — canonical** |
| DEWS false-alarm rate ~74% for non-graduation predictions; disparate false positives for Black and Hispanic students; 2021 internal audit ignored | The Markup / Chalkbeat, April 2023 | Journalistic audit of state system | **Verified; post-2023 institutional aftermath needs a fresh pass [verify]** |
| Remediation-by-default falls disproportionately on students of color even with identical early success; challenging work → ~7 months additional growth | TNTP 2018, *The Opportunity Myth*; TNTP 2021 | Observational at scale, human practice | **Verified** |
| ABROCA detects subgroup disparities aggregate AUC hides; demonstrated on 44 MOOCs / 4M+ learners | Gardner, Brooks & Baker, LAK 2019 | Methodological + large-scale demo | **Verified; small-sample power caveat per EDM 2025 (arXiv 2501.04683)** |
| Fairness criteria mathematically incompatible in general | Kleinberg et al. 2016; Chouldechova 2017 | Formal results | **Verified — settled mathematics** |
| Ofqual 2020: historical school results used to adjust individual grades; mass downgrading; public reversal | BBC/Ofqual reporting 2020 | Public policy event | **Event verified; specific figures [verify] before print** |
| Personalization on unequal systems amplifies inequality | OECD Digital Education Outlook 2023 | Policy synthesis | **Verified** |
| "PLĀ" as a named participatory framework | book's earlier synthesis | — | **UNVERIFIED [see pantry flag]; practice verified under participatory design / co-design (LAK '22; TKL 2024)** |
| Equity-*positive* personalization at scale | — | — | **Not demonstrated; deferred to a future edition; this chapter promises only harm reduction** |

## Pattern Card: The Routing Equity Audit

**Name:** Routing Equity Audit — a standard design phase, recurring, not a one-time compliance artifact.
**Trigger:** Any system that allocates tasks, difficulty, pacing, remediation, or human attention based on learner data — at design time, before launch, and on a stated cadence after deployment as the data shifts.
**Inputs:** Feature list with provenance; routing policy (what predictions trigger); interaction logs with task assignments tagged by cognitive level; whatever subgroup or proxy fields exist; the downstream-action map (what each model output causes).

**Steps:**
1. **Map proxy chains.** For every feature, write the plausible chain to a protected attribute. No feature is exempt for looking technical.
2. **Disaggregate errors.** False-positive and false-negative rates per available subgroup; name which error the downstream action makes expensive, and for whom.
3. **Compute ABROCA** for the highest-stakes classifier across the largest subgroups — with a statistical-power check; report instability honestly.
4. **Run the task-diet analysis.** Distribution of higher-order experiences over time, per subgroup or matched learners; locate the fork points in the logs.
5. **Name the harms.** Each classified allocative or representational, each tied to evidence from steps 1–4.
6. **Key counter-patterns to harms.** Floors, visibility/revisability, off-ramps, human review, co-design — each with failure mode stated and cost owner named.
7. **Write "what this audit could not see."** Missing demographic linkages, underpowered subgroups, unexamined intersections, audit-blocking constraints. Required; never blank.
8. **Attach consequences.** Who receives the audit, what decision it gates, what happens if findings are ignored — the DEWS clause.

**Outputs:** The audit document (harms → evidence → counter-patterns → blind spots → consequence routing), plus change requests against the feature list, routing policy, and interface.
**Fading rule:** The audit never fades — its findings should: each cycle's named harms either shrink in the next cycle's data or escalate past the design team.
**Failure mode:** **Compliance theater.** The audit that exists to have existed: run once, filed, consequence-free — symbolic floors, dashboard-as-visibility, rubber-stamp review, participation after the freeze. Wisconsin had an audit. The test of yours is step 8.

## Worked Example: Auditing the DataWise 101 Difficulty Logic

**Situation.** The Track A tutor, post-Week 7: BKT learner model, LLM generation with review queue, and the difficulty policy that produced the opening case's logs. Design Lab #4 is the audit.

**The problem as the designer sees it.** The Week 7 memo's never-adapts list promised that access to higher-order work would not be model-controlled. The logs show the *de facto* policy diverging from the *de jure* one: nothing forbids Learner B from hard problems — the system just never serves them. "Access" through a menu nobody is routed to is access in name only.

**Process — including the dead ends.** First move: proxy-chain mapping of the feature list (prior-unit performance, hint usage, response latency, session continuity). Latency and continuity chain to device and connectivity, which chain to income. First dead end: the team's instinct — *drop latency and continuity.* Prediction degrades, and prior-unit performance, the feature kept, carries the same historical signal anyway (8.1: the inequity is in the record, not in one column). Dropping features is whack-a-mole; the audit moves to the policy layer.

Second: disaggregation by the package's proxy fields (device type, school). False-negative mastery rates — "unmastered" verdicts for learners who demonstrably have the skill — run notably higher for the phone-access subgroup: interrupted sessions read as wrongness-adjacent signals. Each false negative triggers drill: the over-practice branch as an allocative harm with a subgroup address.

Third: ABROCA on the "needs remediation" classifier across the two largest subgroups. Second dead end: the smaller subgroup's n produces an unstable estimate; an early draft reported it as a finding before the power check flagged it as noise. The final audit reports the instability itself, honestly, in the could-not-see section.

Fourth: the task-diet analysis — the 40%/8% divergence, with the three fork points identified: a week-two session break mid-problem scored as two failures; a week-three latency spike that tripped the "struggling" classifier; a week-four remediation assignment whose exit condition keyed to the same depressed mastery estimate that created it (the off-ramp failure mode, live in the wild).

**Resolution.** Named harms: (allocative) higher-order task exposure inversely related to an income-proxy, via false-negative mastery and unbounded remediation; (representational, secondary) generated practice contexts skewing toward majority-culture scenarios — logged for Chapter 9's content audit surface. Counter-patterns keyed to each: a floor of two scaffolded higher-order problems per session regardless of mastery state; a learner-visible "your path" panel showing current level, why, and a one-click "I think I'm ready" challenge request; remediation capped at three loops before TA notification, with exit conditions assessed by performance on the floor problems rather than the loop's own estimate; instructor review for any pacing change touching the assessment window; session-break handling re-engineered so an interrupted problem scores as interrupted, not failed. Consequence routing: the audit goes to the course owner; the floor and the cap gate the next release.

**What the audit could not see** — reported, not buried: no race/ethnicity or income data exists to link (school and device are stand-ins of unknown fidelity); one subgroup is too small for stable ABROCA; intersectional slices are out of reach at this n; and the logs reveal nothing about learners who disengaged and left — the audit sees only those who stayed.

**The lesson.** The audit's product is not a fairness certificate — it is a changed feature list, a changed policy, a changed interface, and a signed decision about which errors remain and who bears them.

**The limit.** This audit catches what logs can show. It cannot catch harms that operate through what learners *believe* about the system, and it inherits its subgroup categories from whatever data exists — the unknown-bias territory stays unknown. An audit is a flashlight, not daylight.

**Track B extension.** Run the Pattern Card on your own project. If your project lacks routing data entirely, audit the *design documents*: map proxy chains in the planned feature list and pre-register the audit your pilot will run. **This week is the track-switch decision point:** if your Track B project cannot support this audit or the remaining design-lab sequence, switch to Track A now — a designed off-ramp, not a failure; note the parallel.

## Exercises

1. **(Understand/Analyze)** For five features — latency, device type, prior scores, hint usage, session time-of-day — write each plausible proxy chain to a protected attribute, and classify the potential harm at the end of each chain as allocative or representational.
2. **(Analyze)** The task-diet audit: from the provided DataWise 101 logs, compute six-week higher-order-task exposure for the two matched learners. Deliverable: one chart plus the three log entries where the paths diverged, each annotated with the model behavior that caused it.
3. **(Analyze)** ABROCA lab-lite: given pre-computed ROC curves for two subgroups with equal AUC, identify the threshold regions of divergence, state which decision made there disadvantages which group, and explain in two sentences why the equal AUCs were falsely reassuring.
4. **(Create — Design Lab #4, 25 pts; Track B +5 bonus)** The routing equity audit, per the Pattern Card: named harms with evidence, counter-patterns keyed to each harm with failure modes and cost owners, the could-not-see section, consequence routing, and the Withdrawal Test answer below. Track A audits the stats tutor with the provided logs; Track B audits your own project, citing project-specific evidence for the bonus.
5. **(Evaluate)** Mini-defense: present your audit to a peer playing a product owner whose KPI is completion rate. Defend the floor constraint against "it hurts our efficiency metrics," using the TNTP evidence and the cost-transfer sentence from 8.5.

**Assessment notes:** Design Lab #4 is graded against the Pattern Card; an audit with an empty could-not-see section, or no consequence routing, is compliance theater by this chapter's own definition and is graded as incomplete. This week is also the course's one permitted track switch — record your decision either way in your submission.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (chapter template).** *If the adaptive routing were removed tomorrow — every learner simply receiving the full, well-sequenced task library with visible recommendations — which learners would be better off, which worse, and what does each answer say about the design?* A routing layer whose removal would *help* the learners it routes downward is not personalization; it is automated gatekeeping with a progress bar. Name the measurement that would tell you which one you built.

**Reliance Disclosure (chapter template).** Name (1) one place your design structurally preserves productive struggle for routed-down learners — the scaffolded floor is the canonical answer; and (2) one place reliance risk remains open *at the institutional level* — e.g., teachers deferring to routing they can see but never contest, or the audit cadence quietly stretching after launch. Track B bonus requires project-specific evidence, not generic risk language.

## What Would Change My Mind

This chapter holds that algorithmic routing, as currently built, defaults to equity-negative and earns at best harm-reduced neutrality through the counter-patterns. The evidence that would move me: multi-site randomized or strong quasi-experimental studies of adaptive routing at deployment scale, reporting *subgroup-disaggregated* unassisted-performance outcomes and task-diet distributions — showing achievement gaps narrowing (not merely average gains) and higher-order task exposure equalizing or favoring previously routed-down groups, sustained beyond a single term, audited independently of the vendor, and replicated in at least one under-resourced context. A demanding bar, deliberately: it is the bar this book applies to every other equity claim. If that evidence lands, the framing shifts from "audit to prevent harm" to "audit to verify benefit," and the second edition leads with the existence proof.

## Still Puzzling

- Intersectionality hits a sample-size wall: one-attribute slicing misses learners harmed at intersections, but the n for stable intersectional audits exceeds most deployments. What does honest auditing look like below that threshold?
- Can audit mandates and privacy law be reconciled in practice — secure, anonymized linkage at education scale — or does audit-blocking remain the default condition designers work inside?
- The LLM layer adds a new audit surface: representational harms in *generated* content (whose names, whose dialects, whose example contexts) flowing down every route. What does ABROCA-equivalent rigor look like for generation?
- Counter-patterns cost money — review capacity, interface work, co-design time. Under procurement pressure, what makes the cost-bearing version win against the theater version that demos identically?

## Chapter Summary

You can now explain how bias enters systems nobody designed to be biased — training data, proxies, labels, representation gaps, feedback loops — and name the two harm families. You can run the conceptual inversion without flinching: individually adaptive, collectively unjust, no villain required. You hold a four-layer audit toolkit — disaggregated errors, ABROCA with power honesty, task-diet analysis, impossibility honesty — and you know the audit ends in an owned judgment, not a certificate. You can design the five counter-patterns, recognize each one's theater version, and you have run the full audit once, including the section most audits omit: what it could not see, and what happens if it is ignored.

## Key Terms

- **Proxy reconstruction:** A protected attribute re-entering a model through correlated features — its shadows — despite never being collected.
- **Allocative harm:** Unfair algorithmic distribution of resources, opportunities, or interventions.
- **Representational harm:** Systematic misrepresentation, stereotyping, or erasure of a group by a system's data or outputs.
- **Remedial loop:** The self-confirming cycle where remediation displaces challenging work, depressing the evidence that would end the remediation.
- **Digital tracking:** Individualized, continuous, invisible track assignment — classical tracking minus the label, the meeting, and the right to contest.
- **Task diet:** The distribution of cognitive-level experiences a routing policy actually serves a learner over time; the audit's outcome measure.
- **ABROCA:** Absolute Between-ROC Area — a slicing metric for subgroup disparities that identical AUCs conceal.
- **Fairness impossibility:** The formal result that standard fairness criteria cannot be jointly satisfied; why audits end in judgment, not certification.
- **Floor constraint:** A guaranteed minimum of scaffolded higher-order work for every learner, regardless of model state.
- **Compliance theater:** An audit or counter-pattern implemented to have existed — consequence-free, symbolic, worse than nothing.

## Bridge

The path logic is audited. The next two weeks cover what flows along the path: AI-generated content, AI feedback, and the assessments AI has quietly invalidated.

## Further Reading

- **Baker, R. S., & Hawn, A. (2022). "Algorithmic Bias in Education." *IJAIED*, 32, 1052–1092.** The canonical map; read in full at least once in your career — this week, ideally.
- **The Markup / Chalkbeat (2023). "False Alarm."** Accountability journalism as audit methodology; pair the 74% figure with a base-rate refresher and it doubles as a numeracy exercise.
- **TNTP (2018). *The Opportunity Myth*.** The human-practice baseline for the remedial loop, and the growth evidence behind the floor constraint.
- **O'Neil, C. (2016). *Weapons of Math Destruction*.** The pattern language — opacity, scale, damage, self-confirming loops — that makes routing harms legible across domains.
- **Steele, C. (2010). *Whistling Vivaldi*.** Stereotype threat: what a label does to the labeled and the watching teacher — why a false positive is never a free intervention.

## LLM Exercise

Copy-paste into the LLM of your choice. It requires your own audit artifact and refuses to run without it — and notice that the refusal *is* a floor-constraint design: the hard thinking stays yours.

> You are a red-team reviewer for routing equity audits in AI-mediated learning products. I will paste my routing equity audit (named harms with evidence, counter-patterns keyed to harms, the "what the audit could not see" section, and consequence routing).
>
> **If no audit is pasted below, do not generate an example audit, a template, or a summary of what audits contain. Ask me for my audit and stop.**
>
> Once you have it, proceed gated, one step at a time, waiting for my answer:
> 1. First ask me: "Which error type — false positive or false negative — is most expensive in your system, who bears it, and what downstream action makes it expensive?" Do not continue until I answer in my own words.
> 2. Then attack my proxy-chain map: name two features my audit treats as neutral that plausibly carry a proxy chain; require me to trace or rebut each.
> 3. Then test for compliance theater: for each counter-pattern, ask who pays its cost and what happens if the findings are ignored. If my consequence routing is vague, say so plainly.
> 4. Then name one blind spot my could-not-see section should have declared and didn't.
> 5. Only after steps 1–4: verdict — strongest finding, weakest evidence link, and the one revision with the largest equity payoff.
> Do not rewrite any section for me. Questions and critique only; the revision is mine.
>
> My audit:
> [PASTE YOUR DESIGN LAB #4 AUDIT HERE]
