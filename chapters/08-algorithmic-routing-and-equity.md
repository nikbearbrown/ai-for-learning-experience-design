# Chapter 8 — Algorithmic Routing and Equity: Auditing the Personalization Layer
*A system can be individually correct, decision by decision, and collectively unjust. There is no villain. The harm is emergent. That is exactly why it survives good intentions.*

Two learners enroll in DataWise 101 in the same week. On the diagnostic, they score identically: 62%.

Learner A does coursework evenings on a home desktop with fiber: long, uninterrupted sessions, quick responses. Learner B works on a phone, on a shared data plan, between shifts: short sessions, high latency, dropped connections — the logs show breaks mid-problem, re-starts, long gaps between answers.

The tutor's difficulty model reads the only signals it has: response latency, hint usage, session continuity, rolling performance. Learner A's smooth sessions read as fluency; by week two the system is serving multi-step inference problems. Learner B's interrupted sessions read as struggle — and the system responds the way it was designed to, supportively. Easier items. Review drills. Shorter problems "to rebuild confidence."

By week six, the divergence is stark. Learner A's task diet is 40% higher-order problems — interpretation, multi-step inference, design-a-study items. Learner B's is 8%. Same starting score, same course, same tuition.

Nothing malfunctioned. No demographic field exists anywhere in the feature list — the ZIP code never entered the model, only its shadows did. The personalization worked exactly as designed.

That sentence is this chapter's epitaph for a whole class of systems, and your job this week is to learn to write a different design.

---

The canonical reference for this chapter is Baker & Hawn (2022), "Algorithmic Bias in Education," *International Journal of Artificial Intelligence in Education* 32 — verified, heavily cited, and the field's structural map of how educational algorithms come to discriminate. Its central insight, the one to internalize before anything else: **no one has to put a protected attribute into the model for the model to discriminate by it.**

Bias enters at every stage of the pipeline. *Training data.* Historical performance encodes historical inequity. If lower-income students historically received weaker instruction and scored lower, a model predicting success from performance history learns that inequity as signal. The model is not wrong about the data; the data is a record of an unjust process. *Correlated features — proxies.* ZIP code, school attended, device type, time-of-day usage, even response latency correlate with race, income, and language background. The protected attribute is reconstructed from its shadows — this is the opening case's mechanism exactly. *Measurement bias.* The labels themselves can be biased: disciplinary records reflect biased discipline; "at-risk" flags launder prior institutional judgments into ground truth. *Representation.* Models trained on majority populations perform measurably worse for under-represented subgroups — Baker & Hawn document differential accuracy by race and ethnicity, gender, and nationality, and flag a large "unknown bias" territory (disability, dialect, rural status, intersections) where nobody has checked. *Deployment feedback loops.* Predictions trigger interventions that generate new data confirming the prediction. Cathy O'Neil named the pattern: opaque models, at scale, doing damage, manufacturing their own confirmation (*Weapons of Math Destruction*, 2016).

Two harm categories organize everything downstream. **Allocative harms**: unfair distribution of resources, opportunities, or interventions — who gets routed to advanced work, who gets flagged for remediation, who gets the human tutor's scarce time. **Representational harms**: systematic misrepresentation, stereotyping, or erasure — a system that has effectively learned that "learners like you" don't do honors work; speech scoring that fails for dialects thin in the training data. In routing, allocative harms dominate, but the two feed each other: misrepresentation upstream becomes misallocation downstream.

Now retire the reflex defense, because every team you work with will reach for it: *"We don't collect race or income data, so our system can't be biased."* Proxy reconstruction means the absence of the attribute proves nothing. Worse: the only way to *know* is subgroup evaluation, which requires collecting or linking exactly the demographic data the team was proud not to have. That tension is Baker & Hawn's audit-blocking problem in miniature, and pretending it away is how systems ship unaudited.

Trace one proxy chain end to end through DataWise 101. The difficulty model uses prior-unit performance, hint-usage rate, and response latency. Students working on phones on shared data plans — an income-correlated condition — show higher latency and more session breaks. The model reads hesitancy. It routes to remedial drill. Drill displaces the higher-order problems that build next unit's performance. Next unit's data duly confirms weakness. No demographic field anywhere in the feature list; demographic disparity in the output anyway — self-reinforcing, and invisible at the level of any single decision.

<!-- → [DIAGRAM: proxy chain flow for DataWise 101 — starting node: "shared mobile data plan (income-correlated)"; chain: → high latency + session breaks → model reads as struggle → routes to remedial drill → displaces higher-order tasks → next-unit performance depressed → more remediation; label at bottom: "no demographic field at any node; disparity in output anyway"; caption: The protected attribute is reconstructed from its shadows. Removing one feature breaks one link; the chain routes through the others.] -->

---

Here is the conceptual inversion in its sharpest form: an adaptive system that is *correct about each individual at each moment* can still reproduce, at scale and invisibly, the tracking structures education spent decades fighting.

The mechanism is the loop. The system meets a lower-performing learner and responds with easier, lower-order material — "meeting students where they are," locally defensible every single time. But each remedial assignment consumes time not spent on grade-level, higher-order work; the learner falls further behind; the gap generates more evidence of "not ready"; the evidence routes more remediation. Locally rational. Globally unjust.

This harm did not need an algorithm to exist. TNTP's *The Opportunity Myth* (2018) documented the human-run version at scale: students stuck in remediation cycles are disproportionately students of color, low-income students, students with disabilities, and English learners; Black and Latinx students and students in high-poverty schools were more likely to be assigned remediation than white peers with identical success on early grade-level work. The counterfactual is the killer finding: students who instead received grade-appropriate, challenging assignments grew substantially more — on the order of seven additional months of growth. TNTP's follow-up distilled it into a directive (*Accelerate, Don't Remediate*, 2021). Read that against any adaptive router: withholding challenging work pending "readiness" is backwards for exactly the learners the system labels behind. The algorithm did not invent the low-expectations decision. It automated an inherited one — faster, at scale, with a progress bar.

The "digital tracking" frame earns its name structurally. Classical tracking sorted students into *visible* tracks — honors, regular, remedial — with a label a parent could see and a placement meeting a family could fight. Algorithmic routing produces individualized, continuous, *invisible* tracks: no label, no meeting, no moment of assignment to contest. The UK's 2020 Ofqual episode is the exception that proves the rule: when an algorithm adjusted teacher-assessed A-level grades using each school's historical results — systematically downgrading high achievers at historically lower-performing, disproportionately state schools (roughly 40% of assessments downgraded [verify against BBC/Ofqual primary reporting]) — the harm was *visible on results day*, legible to every family at once, and public outcry forced full reversal within days. Adaptive routing never produces a results day. Visibility and contestability are therefore not interface niceties; they are the modern equivalents of the rights that made classical tracking fightable.

<!-- → [TABLE: classical tracking vs. algorithmic routing — rows: assignment mechanism, visibility of track, moment of contestation, reversibility, who sees the decision; columns: classical / algorithmic; caption: Algorithmic routing preserves every structural feature of classical tracking while removing every feature that made it contestable.] -->

---

The audit is this chapter's deliverable skill, and its first principle fits on a sticky note: **population averages conceal subgroup harms.** A model with excellent overall accuracy can be systematically worse for one group; a system with positive average effects can harm the learners it routes downward. The toolkit has four layers.

*Disaggregated error rates.* Accuracy, false-positive rate, and false-negative rate, per subgroup. The asymmetry between error types is pedagogically loaded: in a mastery system, a false negative — "unmastered" when the learner has it — sentences a learner to over-practice. A false positive promotes them prematurely. Which error costs more depends entirely on what the prediction *triggers*. Auditing the model is not auditing the system.

*ABROCA.* Absolute Between-ROC Area (Gardner, Brooks & Baker, LAK 2019 — verified) measures the area between two subgroups' ROC curves. Its teaching value: two groups can have identical AUC — identical headline accuracy — while the model behaves differently across decision thresholds; ABROCA catches what the aggregate hides. Demonstrated across 44 MOOCs and four million learners. Carry the recent caution: ABROCA is noisy in small samples — small-pilot audits can both miss real bias and cry wolf, so statistical-power treatment is now part of doing this honestly (EDM 2025 power test, arXiv 2501.04683).

*Routing-outcome audits.* Beyond model accuracy entirely: what *experiences* did the routing allocate, by subgroup? This is the task-diet analysis — share of higher-order tasks served per learner over time. A model can be perfectly calibrated for every subgroup while the *policy* built on it still distributes higher-order work inequitably. The 40%-versus-8% divergence lives here, and no model-metric virtue can answer for it.

*Impossibility honesty.* Different fairness criteria — calibration, equalized error rates, demographic parity — are mathematically incompatible in general (Kleinberg et al. 2016; Chouldechova 2017). So the audit cannot end in a certificate of fairness, because mathematics forbids one. It ends in a named, owned design judgment about which unfairness to refuse and who bears the errors you accept. Students reliably flip here from "certify it fair" to "fairness is impossible, so why audit?" The answer: the audit's product was never a certificate — it is the relocation of a decision, from the model's silent defaults to the designer's signed accountability.

Finally, the audit-blocking problem (Baker & Hawn): overly restrictive privacy regimes can make subgroup audits impossible. Policy must mandate audits while building the secure, anonymized infrastructure that makes them possible. The designer-scale version: your audit's "what this audit could not see" section is a required, honest deliverable — not an apology, never a blank.

---

One documented public case anchors everything above, and it is worth knowing cold, because it is the case your stakeholders will have heard of.

Wisconsin's Dropout Early Warning System predicted, twice a year, each middle schooler's likelihood of on-time graduation, from test scores, disciplinary records, attendance — and race. The Markup's investigation ("False Alarm," co-published with Chalkbeat, April 2023 — verified) found: when DEWS predicted a student would not graduate on time, it was wrong about **74% of the time**; false alarms fell disproportionately on Black and Hispanic students; the system had been deliberately calibrated to over-identify risk; educators received little interpretation training; and — the detail that should reorganize your understanding of what audits achieve — **the state's own 2021 internal equity analysis had already identified the disparity, and the system kept running.**

Read DEWS through this chapter's lenses. It is an allocative-harm story: the label routes adult attention, interventions, and expectations. And a false positive is not a free extra intervention — Claude Steele's stereotype-threat research (*Whistling Vivaldi*, 2010) supplies the mechanism by which a watching adult's lowered expectation becomes part of the treatment, measurably degrading the student's performance on the very outcome the system was predicting. It is an audit-governance story: an audit without consequences changed nothing. And it is a feature-selection story with a twist: DEWS *included* race and failed; the opening case's system *excluded* every demographic field and would fail too. Naive inclusion and naive exclusion both lose. Calibration, error asymmetry, and consequences are where the failure actually lived.

The DEWS scope note: this is an early-warning predictor, not an adaptive-learning router. It anchors this chapter as the documented, public, state-scale case of the same harm class — prediction routing opportunity — while the within-product version plays out in logs like DataWise 101's. What Wisconsin did after 2023 needs a fresh verification pass; reporting indicated DPI moved toward overhaul [verify — see pantry flag].

---

The constructive half. Each counter-pattern is keyed to a named harm, and each carries its own failure mode — a counter-pattern implemented as theater is worse than none, because it inoculates the team against further scrutiny.

**Floor constraints.** Every learner, regardless of model state, retains guaranteed access to a minimum diet of higher-order, grade-appropriate tasks — scaffolded, not bare. The warrant is not generosity; it is the TNTP growth evidence: challenging work *produces* growth, so withholding it pending readiness is backwards for the learners labeled behind. *Failure mode:* symbolic floors, or higher-order tasks delivered without the scaffolding that makes them productive. Access granted plus overwhelm delivered is not a floor; it is a different kind of harm.

**Visible, revisable routing.** Learner and teacher can see what the system decided — current level, the why, what would change it — and can contest it. This is Chapter 7's interpretability investment paying out: a BKT-backed router can explain itself per skill; an opaque one cannot, which is why model choice was an equity decision before it was a technical one. *Failure mode:* visibility as data dump — an uninterpretable dashboard satisfies the letter and defeats the purpose.

**Off-ramps from remediation.** Every remedial assignment carries an explicit, learner-visible exit condition — "two correct applications and you rejoin the main path" — and remediation is bounded: no indefinite loops without escalation to a human. *Failure mode:* exit conditions keyed to the same possibly-biased mastery estimate that created the loop. The exit gate must be auditable too.

**Human-in-the-loop for high-stakes routing.** Any decision affecting opportunities, placement, or assessment pacing — anything a parent would once have attended a meeting about — gets human review: the model recommends, a human decides. DEWS is the cautionary tale of skipping this; the EU AI Act's high-risk classification of educational AI is the regulatory floor. *Failure mode:* rubber-stamping — review volume so high that automation bias does the routing anyway. The design response is budgeting real review capacity, not writing a review requirement.

**Participatory co-design of personalization rules.** Involve learners and affected communities in deciding what the system adapts and on what evidence, before the routing logic freezes (participatory design and co-design in learning analytics — LAK '22 review; *Technology, Knowledge and Learning*, 2024). A naming note: an earlier synthesis used the framework label "Participatory Learning and Advocacy (PLĀ)," which could not be verified [verify — see pantry flag]; this chapter teaches the practice under its verified names. *Failure mode:* participation theater — feedback sessions held after the logic is frozen, harvesting legitimacy instead of design input.

Now address the objection directly: *"these patterns trade learning efficiency for fairness."* For floor constraints, the TNTP evidence says no — the floor *is* the better learning design for routed-down students, not a fairness tax. Where genuine costs exist — review capacity, interface complexity — name them as costs the institution either pays or silently transfers to the routed-down learner. That sentence belongs in your audit, verbatim if necessary.

<!-- → [TABLE: counter-patterns keyed to harms — rows: floor constraints, visible routing, off-ramps, human-in-loop, co-design; columns: named harm addressed, evidence warrant, failure mode, cost owner; caption: Each counter-pattern has a theater version that satisfies the requirement while defeating the purpose. The failure mode column is not decoration — it is the second half of the design constraint.] -->

---

Walk the audit through the Track A case and the Pattern Card becomes operational.

The DataWise 101 tutor, post-Week 7: BKT learner model, LLM generation with review queue, and the difficulty policy that produced the opening case's logs. The Week 7 memo's never-adapts list promised that access to higher-order work would not be model-controlled. The logs show the de facto policy diverging from the de jure one: nothing *forbids* Learner B from hard problems — the system just never serves them. Access through a menu nobody is routed to is access in name only.

First move: proxy-chain mapping. Latency and continuity chain to device and connectivity, which chain to income. First dead end — the team's instinct is to drop latency and continuity. Prediction degrades, and prior-unit performance, the feature kept, carries the same historical signal (the inequity is in the record, not in one column). Dropping features is whack-a-mole. The audit moves to the policy layer.

Second: disaggregation by proxy fields (device type, school). False-negative mastery rates — "unmastered" verdicts for learners who demonstrably have the skill — run notably higher for the phone-access subgroup: interrupted sessions read as wrongness-adjacent signals. Each false negative triggers drill: the over-practice branch as an allocative harm with a subgroup address.

Third: ABROCA on the "needs remediation" classifier. Dead end: the smaller subgroup's n produces an unstable estimate; an early draft reported it as a finding before the power check flagged it as noise. The final audit reports the instability honestly, in the could-not-see section.

Fourth: task-diet analysis — the 40%/8% divergence, with three fork points identified in the logs: a week-two session break mid-problem scored as two failures; a week-three latency spike that tripped the "struggling" classifier; a week-four remediation assignment whose exit condition keyed to the same depressed mastery estimate that created it — the off-ramp failure mode, live in the wild.

Named harms: allocative — higher-order task exposure inversely related to an income proxy, via false-negative mastery and unbounded remediation; representational (secondary) — generated practice contexts skewing toward majority-culture scenarios, logged for Chapter 9's content audit surface. Counter-patterns keyed to each: a floor of two scaffolded higher-order problems per session regardless of mastery state; a learner-visible "your path" panel showing current level, why, and a one-click challenge request; remediation capped at three loops before TA notification, with exit conditions assessed by performance on floor problems rather than the loop's own estimate; instructor review for any pacing change touching the assessment window; session-break handling re-engineered so an interrupted problem scores as interrupted, not failed. Consequence routing: the audit goes to the course owner; the floor and the cap gate the next release.

What the audit could not see — reported, not buried: no race/ethnicity or income data exists to link (school and device are stand-ins of unknown fidelity); one subgroup is too small for stable ABROCA; intersectional slices are out of reach at this n; the logs reveal nothing about learners who disengaged and left — the audit sees only those who stayed.

The lesson: the audit's product is not a fairness certificate. It is a changed feature list, a changed policy, a changed interface, and a signed decision about which errors remain and who bears them.

The limit: this audit catches what logs can show. It cannot catch harms that operate through what learners *believe* about the system, and it inherits its subgroup categories from whatever data exists. The unknown-bias territory stays unknown. An audit is a flashlight, not daylight.

---

## Exercises

**Warm-up**

1. *(Understand / trace)* For five features — latency, device type, prior scores, hint usage, session time-of-day — write each plausible proxy chain to a protected attribute in one sentence, and classify the potential harm at the end of each chain as allocative or representational. *What this tests: whether you can see protected attributes in the shadows of technical features, before any analysis runs.*

2. *(Understand / explain)* Why can a system be correct about each learner at each decision moment and still unjust in aggregate? Write the explanation using the remedial loop, without using the word "bias." *What this tests: whether you can hold the "no villain required" insight structurally rather than as a slogan.*

3. *(Understand / apply)* Two subgroups have identical AUC on a mastery classifier. State in two sentences why this is not reassuring, which tool catches what the AUC hides, and what additional caveat must travel with that tool when the subgroup n is small. *What this tests: ability to read a model metric at the scope it earns — and no further.*

**Application**

4. *(Apply / analyze — Track A)* From the provided DataWise 101 logs, compute six-week higher-order-task exposure for the two matched learners. Deliverable: one chart plus the three log entries where the paths diverged, each annotated with the model behavior that caused it. *What this tests: ability to find the routing decision in the data, not just describe it abstractly.*

5. *(Apply / analyze)* The DEWS 74% false-alarm rate is alarming. It is more alarming once you apply base-rate reasoning: if only 20% of flagged students would actually fail to graduate on time, what does that imply about the false-positive rate? Show the arithmetic, then state in one sentence what this means for the label's downstream effects on teachers and students. *What this tests: base-rate reasoning applied to an equity-relevant prediction system — the numeracy that turns a headline into a mechanism.*

6. *(Apply / produce — Design Lab #4, 25 pts; Track B +5)* Produce the routing equity audit per the Pattern Card: named harms with evidence, counter-patterns keyed to each harm with failure modes and cost owners named, the could-not-see section (never blank), consequence routing, and the Withdrawal Test answer. Track A: audit the stats tutor with the provided logs. Track B: your own project — cite project-specific evidence for the bonus. **This week is the course's one permitted track switch.** Record your decision either way in your submission. *What this tests: whether you can run the full audit including the section most audits omit — and whether your consequence routing is a real gate or a filing cabinet.*

**Synthesis**

7. *(Synthesize / evaluate)* The chapter claims the floor constraint is not a fairness-efficiency trade-off — the TNTP evidence shows it is the better learning design for routed-down students. A product manager argues: "That's true in theory, but our engagement metrics show learners assigned harder work before they're ready abandon the session." Write the strongest version of the PM's argument, then a rebuttal that uses the TNTP evidence and the cost-transfer sentence from the chapter, and end with a design test that would resolve the disagreement empirically rather than rhetorically. *What this tests: ability to use evidence as a precision instrument in a real institutional argument, not just a citation.*

8. *(Synthesize / design)* The chapter identifies four audit-blocking conditions: no demographic data, small subgroup n, intersectional complexity, and privacy restrictions. Design a data governance structure for a five-person product team that makes subgroup auditing possible without violating student privacy — specify what data is collected, how it is secured and linked, who can access it and for what purpose, and how you handle the tension between auditing and privacy minimization. Name the three hardest legal or institutional constraints you would face and how you would respond. *What this tests: ability to translate the audit-blocking problem into a concrete governance design, rather than treating it as a permanent excuse.*

**Challenge**

9. *(Challenge / open-ended)* The chapter promises only harm reduction — no evidence exists of equity-*positive* personalization at scale, where achievement gaps narrow and higher-order task exposure equalizes. Design the study that would produce that evidence: specify the comparison conditions, the subgroup-disaggregated outcome measures, the routing logic being tested, how you would distinguish "the routing caused the gain" from "the floor constraint would have worked anyway," and the minimum deployment context that would make the finding generalizable. Name the institutional actors who would need to cooperate for this study to run — and the incentive misalignments that currently prevent it. *What this tests: ability to see clearly why the most important question in the chapter is still open, and what it would actually take to close it.*

---

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test — Chapter 8 template.** If the adaptive routing were removed tomorrow — every learner simply receiving the full, well-sequenced task library with visible recommendations — which learners would be better off, which worse, and what does each answer say about the design? A routing layer whose removal would *help* the learners it routes downward is not personalization; it is automated gatekeeping with a progress bar. Name the measurement that would tell you which one you built.

**Reliance Disclosure — Chapter 8 template.** Name (1) one place your design structurally preserves productive struggle for routed-down learners — the scaffolded floor is the canonical answer; and (2) one place reliance risk remains open at the institutional level — e.g., teachers deferring to routing they can see but never contest, or the audit cadence quietly stretching after launch. Track B bonus requires project-specific evidence, not generic risk language.

---

## LLM Exercise

Copy-paste into the LLM of your choice. It requires your own audit artifact and refuses to run without it — and notice that the refusal *is* a floor-constraint design: the hard thinking stays yours.

---

You are a red-team reviewer for routing equity audits in AI-mediated learning products. I will paste my routing equity audit (named harms with evidence, counter-patterns keyed to harms, the "what the audit could not see" section, and consequence routing).

**If no audit is pasted below, do not generate an example audit, a template, or a summary of what audits contain. Ask me for my audit and stop.**

Once you have it, proceed gated, one step at a time, waiting for my answer:

1. First ask me: "Which error type — false positive or false negative — is most expensive in your system, who bears it, and what downstream action makes it expensive?" Do not continue until I answer in my own words.

2. Then attack my proxy-chain map: name two features my audit treats as neutral that plausibly carry a proxy chain; require me to trace or rebut each.

3. Then test for compliance theater: for each counter-pattern, ask who pays its cost and what happens if the findings are ignored. If my consequence routing is vague, say so plainly.

4. Then name one blind spot my could-not-see section should have declared and didn't.

5. Only after steps 1–4: verdict — strongest finding, weakest evidence link, and the one revision with the largest equity payoff.

Do not rewrite any section for me. Questions and critique only; the revision is mine.

My audit:
[PASTE YOUR DESIGN LAB #4 AUDIT HERE]
