# Research Notes: Chapter 08 — Algorithmic Routing and Equity: Auditing the Personalization Layer
**Source:** TIKTOC.md chapter entry
**Notes file:** 08-algorithmic-routing-and-equity_notes.md
**Corresponding chapter:** chapters/08-algorithmic-routing-and-equity.md (not yet written)
**Generated:** 2026-06-07
---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn the equity-critical failure mode of adaptive systems — remedial-loop routing, allocative and representational harms — and run a routing audit as a standard design phase.

**Learning outcomes:**
1. (Understand) Explain how bias enters well-intentioned adaptive systems through historical performance data and correlated features (Baker & Hawn).
2. (Analyze) Trace a provided system's routing logic and identify where lower-performing learners lose access to higher-order tasks — digital tracking made visible.
3. (Create) Design the counter-patterns: floor constraints, visible/revisable routing, off-ramps from remediation, human-in-the-loop for high-stakes routing.
4. (Create / Track B) Produce a routing equity audit of their own project, with named harms, named counter-patterns, and what data the audit could not see.

**Opening:** Difficulty logs from the Track A statistics tutor: two learners, same starting score, different ZIP-code-correlated interaction histories — and the diverging task diets the system quietly assigned them over six weeks. The personalization worked exactly as designed.

**Core content:** Baker & Hawn as the canonical reference; allocative vs. representational harms; the routing counter-pattern set; participatory co-design of personalization rules (PLĀ); audit-blocking as a policy problem; subgroup evaluation vs. population averages.

**Bridge:** The path logic is audited. The next two weeks cover what flows along the path: AI-generated content, AI feedback, and the assessments AI has quietly invalidated.

**[TOC Part 11 note — this is a designated hard chapter:** "The conceptual inversion chapter — individually adaptive, collectively unjust. Requires provided difficulty-log data good enough to make routing visible... The most likely peer-review target."]

---

## A. Conceptual foundations

### 1. How bias enters well-intentioned systems — the Baker & Hawn map

Baker & Hawn (2022), "Algorithmic Bias in Education," *International Journal of Artificial Intelligence in Education* 32, 1052–1092 (verified; 539+ citations, the field's canonical reference) reviews how algorithmic bias arises and where it has been empirically documented in education. The structural insight students must internalize: **no one has to put a protected attribute into the model for the model to discriminate by it.** Bias enters at every stage of the machine-learning pipeline:

- **Training data**: historical performance data encodes historical inequity. If lower-income students historically received weaker instruction and scored lower, a model trained to predict success from performance history learns that inequity as signal.
- **Correlated features (proxies)**: ZIP code, school attended, device type, time-of-day usage patterns, free/reduced-lunch status, even response latency correlate with race, income, and language background. The protected attribute is reconstructed from its shadows. (This is the mechanism behind the Track A opening: ZIP-code-*correlated* interaction histories, not ZIP codes.)
- **Measurement bias**: the labels themselves can be biased — disciplinary records reflect biased discipline; "at-risk" labels reflect prior institutional judgments.
- **Representation/generalizability**: models trained on majority populations perform worse for under-represented subgroups — Baker & Hawn document differential model accuracy by race/ethnicity, gender, nationality, and flag large "unknown bias" territory where no one has even checked.
- **Deployment and feedback loops**: predictions trigger interventions that generate new data confirming the prediction (the remedial loop in Concept 2 is this loop running inside a learning product).

Baker & Hawn organize harms using the allocative/representational distinction (from Barocas's and Crawford's framing in the broader fairness literature): **allocative harms** — unfair distribution of resources, opportunities, or interventions (who gets routed to advanced work, who gets flagged for remediation, who gets the human tutor's time); **representational harms** — systematic misrepresentation, stereotyping, or erasure of groups (a system that "knows" learners like you don't do honors work; under-representation of dialects in training data making speech scoring fail for some children). In adaptive learning, allocative harms dominate the routing problem, but representational harms feed them: misrepresentation upstream becomes misallocation downstream.

**Common misconception:** "We don't collect race/income data, so our system can't be biased." Proxy reconstruction means the absence of the protected attribute proves nothing; the only way to know is subgroup evaluation — which requires *collecting or linking* the demographic data the team was proud not to have. This discomfort (you must see the categories to check fairness across them) is a productive seminar moment.

**Worked example:** The Track A stats tutor's difficulty model uses prior-unit performance, hint-usage rate, and response latency. Trace the proxy chain: students working on phones on shared data plans (income-correlated) show higher latency and more session breaks → the model reads hesitancy/weakness → routes to more remedial drill → less exposure to the high-order problems that improve prior-unit performance → next unit's data confirms weakness. No demographic field anywhere in the feature list; demographic disparity in the output anyway.

**Source(s):** Baker & Hawn (2022), IJAIED 32:1052–1092 — link.springer.com/article/10.1007/s40593-021-00285-9 [verified]; Baker's OECD edition of the algorithmic-bias paper (learninganalytics.upenn.edu preprint); synthesis §3.

### 2. Digital tracking — the remedial loop as the new ability grouping

The chapter's conceptual inversion: an adaptive system that is *correct about each individual at each moment* can still reproduce — at scale and invisibly — the tracking structures that education spent decades fighting. The mechanism: adaptive systems meeting a lower-performing learner respond with easier, lower-order material ("meeting students where they are"). Each remedial assignment consumes time not spent on grade-level/higher-order work, so the learner falls further behind the path the system would require for advancement, which generates more evidence of "not ready," which routes more remediation. The loop is locally rational and globally unjust.

The strongest non-algorithmic evidence base for this dynamic is TNTP's *The Opportunity Myth* (2018) and its follow-ups (*Accelerate, Don't Remediate*, 2021): students stuck in remediation cycles are disproportionately students of color, low-income students, students with special needs, and English learners; Black and Latinx students and students in high-poverty schools were more likely to be assigned remediation *than white students with identical success on early grade-level content*; and students who instead got grade-appropriate challenging work showed substantially more growth (TNTP reports about seven months of additional growth for students given access to challenging assignments). This matters for the chapter because it shows the routing harm is not speculative AI ethics — it is the digitization of a documented human practice. The adaptive system automates the same low-expectations decision, faster, with a progress bar.

The "digital tracking" frame: classical tracking sorted students into visible tracks (honors/regular/remedial) that parents could see and contest. Algorithmic routing produces *individualized, continuous, invisible* tracks — no track label, no parent meeting, no moment of assignment to contest. Visibility and contestability are therefore not nice-to-haves; they are the modern equivalents of the rights that made classical tracking fightable. (This sets up counter-pattern "visible/revisable routing" in Concept 4.)

**Common misconception:** "The system routes on performance, not demographics, so the routing is fair." Performance is partly a record of opportunity. Routing on performance history without floor constraints converts past opportunity gaps into future opportunity allocation — fairness of mechanism, unfairness of outcome. The OECD makes the macro version of this point: personalization layered onto unequal systems amplifies the inequality (OECD Digital Education Outlook 2023; OECD also warns against confusing personalization with effectiveness — comfortable, unchallenging individualized paths that never build critical capability).

**Worked example:** Six weeks of Track A difficulty logs (the data package): Learner A and Learner B start at the same diagnostic score. A's smooth early sessions earn exposure to multi-step inference problems; B's interrupted, slower sessions trigger drill assignments. By week six, A's "task diet" is 40% higher-order problems; B's is 8%. The audit exercise has students compute the task-diet divergence and identify the exact log entries where the paths forked — making the invisible track visible is the assignment.

**Source(s):** TNTP, *The Opportunity Myth* (2018, ERIC ED590204) and *Accelerate, Don't Remediate* (2021) [verified]; EdWeek, "Some Students Are Routinely Denied Challenging Work" (2022); OECD Digital Education Outlook 2023, "Opportunities, guidelines and guardrails" chapter [verified]; synthesis §3.

### 3. Auditing the personalization layer — subgroup evaluation and ABROCA

The audit is the chapter's deliverable skill, and the core principle is: **population averages conceal subgroup harms.** A model with excellent overall accuracy can be systematically worse for a subgroup; an adaptive system with positive average effects can have negative effects for the learners it routes downward. Baker & Hawn's policy mandate (carried in the synthesis): effectiveness clearinghouses and procurement should evaluate on subgroup performance, not population averages — and the same discipline applies to a design team's own pilot (this becomes the Ch 14 evaluation-plan requirement).

The teachable audit toolkit at design-literacy depth:
- **Disaggregated performance metrics**: accuracy / false-positive / false-negative rates per subgroup. The false-positive vs. false-negative asymmetry matters pedagogically: in a dropout-risk system, a false positive stigmatizes a student who would have succeeded; in a mastery system, a false negative (model says unmastered when mastered) sentences a learner to over-practice. Which error costs more depends on what the prediction *triggers* — auditing is impossible without knowing the downstream action.
- **ABROCA** (Absolute Between-ROC Area; Gardner, Brooks & Baker, LAK 2019, "Evaluating the Fairness of Predictive Student Models Through Slicing Analysis" — verified): the area between two subgroups' ROC curves. Its value for teaching: two groups can have *identical AUC* while the model behaves differently across thresholds — ABROCA catches disparities aggregate metrics hide. Demonstrated at scale on 44 MOOCs / 4M+ learners. Recent methodological work adds caution: ABROCA estimates are noisy in small samples and need statistical-power treatment (EDM 2025 short paper, "Toward Sufficient Statistical Power in Algorithmic Bias Assessment: A Test for ABROCA," arXiv 2501.04683) — small-pilot audits can both miss real bias and cry wolf.
- **Routing-outcome audits** (beyond model-accuracy audits): the task-diet analysis from Concept 2 — what *experiences* did the routing allocate, by subgroup? A model can be perfectly calibrated per subgroup and the *policy* built on it still allocate higher-order work inequitably. Auditing the model is not auditing the system.
- **Impossibility honesty**: different fairness criteria (calibration, equalized error rates, demographic parity) are mathematically incompatible in general (Kleinberg et al. 2016; Chouldechova 2017 — the COMPAS debate's enduring lesson). The audit therefore ends in a *design judgment about which unfairness to refuse*, not a certificate of fairness. This keeps the chapter from promising a clean bill of health that mathematics forbids.

**The audit-blocking problem** (Baker & Hawn's policy point, carried in synthesis): overly restrictive privacy regimes can make bias audits impossible — developers cannot test subgroup performance on data they are forbidden to hold or link. Policy must mandate audits while building secure, anonymized data-sharing infrastructure. For the designer, the practical version: the audit's "what data could not be seen" section (Learning Outcome 4) is a required, honest deliverable, not an apology.

**Common misconception:** "An audit is a compliance document you produce once, after building." The chapter's whole argument is that the audit is a *design phase*: it changes the feature list (drop or de-weight proxy-heavy features), the routing policy (add floors), and the interface (add visibility/override) — which it can only do if it happens before and during build, and recurs after deployment as the data shifts.

**Worked example:** Audit the Track A tutor with the provided logs: (1) disaggregate mastery-model false-negative rates by available proxies (school, device type — the package's stand-ins for unavailable demographics); (2) compute ABROCA for the "needs remediation" classifier across the two largest subgroups; (3) run the task-diet analysis; (4) write the "what the audit could not see" section (no race/ethnicity data; n too small for stable ABROCA in one subgroup — cite the power problem); (5) recommend counter-patterns keyed to each named harm.

**Source(s):** Gardner, Brooks & Baker (2019), LAK '19 — dl.acm.org/doi/10.1145/3303772.3303791 [verified]; arXiv 2501.04683 / EDM 2025 (ABROCA power test) [verified]; Baker & Hawn (2022) [verified]; Kleinberg et al. (2016, arXiv 1609.05807) and Chouldechova (2017) for impossibility results [well-established literature]; synthesis §3.

### 4. The counter-pattern set — designing routing that cannot quietly track

The chapter's constructive half, converting audit findings into design patterns (each should get a Pattern Card: trigger, structure, fading rule, failure mode):

- **Floor constraints**: every learner, regardless of model state, retains guaranteed access to a minimum diet of higher-order, grade-appropriate tasks. The TNTP acceleration evidence is the warrant: challenging work *produces* growth, so withholding it pending "readiness" is backwards for exactly the learners the system labels behind. Failure mode: floors set so low they are symbolic, or higher-order tasks delivered without the support that makes them productive (the floor needs scaffolding attached, not just access).
- **Visible, revisable routing**: the learner and teacher can see what the system decided (current level, why, what would change it) and contest it. This is Ch 7's interpretability payoff (a BKT/IRT-backed router can explain itself; an opaque one cannot) and Ch 11's transparency layer applied to routing. Failure mode: visibility as data-dump — an uninterpretable dashboard satisfies the letter and defeats the purpose.
- **Off-ramps from remediation**: every remedial assignment carries an explicit, learner-visible exit condition ("two correct applications and you rejoin the main path"), and remediation is bounded — the system may not assign remedial loops indefinitely without escalation to a human. Failure mode: off-ramp conditions keyed to the same biased mastery estimate that created the loop (the exit gate must be auditable too).
- **Human-in-the-loop for high-stakes routing**: decisions that affect opportunities, placement, pacing of high-stakes assessment, or anything a parent would once have attended a meeting about, require human review — the model recommends, a human decides. Wisconsin DEWS (Case 1) is the cautionary tale of skipping this; the EU AI Act's high-risk classification of educational AI provides the regulatory floor (cited, not taught — Ch 12 territory). Failure mode: rubber-stamping — human review at a volume that makes review nominal (automation bias does the routing anyway). The design response is to budget review capacity, not just require it.
- **Participatory co-design of personalization rules**: involving learners and affected communities in deciding what the system adapts and on what evidence. The participatory/co-design literature in learning analytics is real and growing (LAK 22 review: "Participatory and Co-Design of Learning Analytics"; co-design of adaptive learning technology, *Technology, Knowledge and Learning* 2024). **FLAG: the synthesis names this "Participatory Learning and Advocacy (PLĀ)" — this specific named framework could not be verified in this research pass (see G1). The practice is well-evidenced under the names participatory design / co-design; the chapter should use the verified literature and either source PLĀ properly or drop the acronym.** Failure mode: participation theater — feedback sessions after the routing logic is frozen.

**Common misconception:** "These patterns trade learning efficiency for fairness." The TNTP evidence suggests the floor constraint *is* the better learning design for routed-down students, not a fairness tax on an otherwise optimal system. Where genuine trade-offs exist (review capacity costs money; visibility adds interface complexity), the chapter should name them as costs the institution either pays or silently transfers to the routed-down learner.

**Worked example:** Apply the counter-pattern set to the Track A audit findings: a floor of two higher-order problems per session regardless of mastery state (with worked-example scaffolding when the model rates them unready); a learner-visible "your path" panel with a one-click "I think I'm ready" challenge request; remediation capped at three loops before tutor notification; instructor review queue for any pacing change that affects the assessment window.

**Source(s):** TNTP (2018, 2021); LAK 22 co-design review (dl.acm.org/doi/abs/10.1145/3506860.3506910); *Technology, Knowledge and Learning* (2024) co-design of adaptive learning; synthesis §3 design-intervention list; EU AI Act high-risk classification (synthesis §5).

---

## B. Domain examples and cases

### Case 1 / Failure case — Wisconsin DEWS: the state-scale routing audit that journalism ran first
The Markup's April 2023 investigation ("False Alarm: How Wisconsin Uses Race and Income to Label Students 'High Risk'," co-published with Chalkbeat — verified) examined Wisconsin DPI's Dropout Early Warning System (DEWS), which twice a year predicted each middle-schooler's likelihood of on-time graduation using test scores, disciplinary records, attendance — and race. Findings: when DEWS predicted a student would *not* graduate on time, it was wrong about 74% of the time; false alarms fell disproportionately on Black and Hispanic students relative to white students; DPI's own 2021 internal equity analysis had identified the disparity, and the system kept running; the system was deliberately calibrated to over-identify risk ("cast a wide net"); and educators received little training in interpreting the predictions (38% of surveyed districts used DEWS). Why it is the chapter's anchor case: (1) it is an allocative-harm story — the label routes adult attention and interventions, and a false "high risk" label can itself stigmatize (teachers' expectations are part of the treatment; bridge to *Whistling Vivaldi*/stereotype threat); (2) it shows the audit existing and being ignored — auditing without governance teeth changes nothing; (3) it demonstrates that including race as a feature *and* excluding it both fail naively — the failure was in calibration, error asymmetry, and the absence of consequences from the audit; (4) the system's designers intended to help. "The personalization worked exactly as designed" — the Track A opening line — is this case's epitaph. Note: DEWS is an early-warning predictor, not an adaptive-learning router; the chapter should use it as the documented public case of the same harm class, then pivot to the Track A logs for the within-product version.
**Source(s):** themarkup.org/machine-learning/2023/04/27/false-alarm-...; Chalkbeat 2023-04-27; PBS Wisconsin/Wisconsin Watch coverage [all verified].

### Case 2 — TNTP's *The Opportunity Myth*: the human-practice baseline for the remedial loop
(Per Concept 2.) The non-algorithmic control condition: remediation-by-default and low-expectations assignment were documented at scale in human-run classrooms before any algorithm — students of color receiving remediation despite identical early success on grade-level work. Use in the chapter to (a) inoculate against "the algorithm invented this harm" (it automates an inherited practice) and (b) ground the floor-constraint counter-pattern in growth evidence.
**Source(s):** TNTP 2018 (ERIC ED590204); TNTP *Accelerate, Don't Remediate* (2021) [verified].

### Case 3 — The UK Ofqual A-level algorithm (2020): routing's most public failure
When COVID cancelled A-level exams, Ofqual's standardization algorithm adjusted teacher-assessed grades using each school's historical results — systematically downgrading high-achieving students at historically lower-performing (disproportionately state/disadvantaged) schools while private-school grades inflated. Nearly 40% of teacher assessments were downgraded; public outcry ("F*** the algorithm" protests) forced a full reversal within days. Chapter use: the cleanest illustration that *using group history to bound individual prediction is an equity decision disguised as a statistical one* — and that visibility plus contestability (the grades were visible, the harm legible, the public contested) is what made reversal possible. Contrast with the invisible, continuous routing of adaptive systems, which never produces a results-day moment. [Well-documented public event; verify specific percentage figures against BBC/Ofqual reporting before print — flagged G4.]
**Source(s):** widely documented (BBC, Ofqual 2020 reports); include as sourced case with verification pass at drafting.

---

## C. Connections and dependencies

**Prerequisites:** Ch 7 is the hard prerequisite — students cannot audit routing logic they cannot read; the IRT/BKT literacy and the interpretability distinction are load-bearing here (an audit asks different questions of a DKT-based router than a BKT-based one). Ch 4's evidence discipline (subgroup claims held to subgroup evidence). The TOC's prerequisite chain also requires the provided difficulty logs (Track A) or the student's own routing/adaptivity data (Track B); Week 8 is the designated track-switch decision point.

**Unlocks:** Ch 11 — the routing-visibility and override patterns become sections of the guardrail specification; Ch 12 — agentic path-changing inherits every counter-pattern with higher stakes (the Week 12 opening case is an unaudited autonomous routing decision); Ch 14 — subgroup evaluation as a standard endpoint ("the Baker & Hawn mandate" named in the Week 14 core content). The audit produced here is one of the Weeks 6–10 artifacts assembled at the Week 11 checkpoint.

**Adjacent chapter connections:**
- **To Ch 7 (adaptive systems):** Ch 7 taught the machinery neutrally; Ch 8 runs the inversion — same machinery, fed historical performance data, becomes digital tracking. The Ch 7 BKT worked example's over-practice branch (false-negative mastery → drill loop) is deliberately re-encountered here as an equity event, not a modeling footnote.
- **To Ch 9 (AI content and feedback):** the bridge — the path logic is audited; Ch 9 covers what flows along the path. Routing equity and content/feedback boundaries interact: a floor constraint is empty if the higher-order tasks it guarantees come with AI feedback too weak to support them (Ch 9's tacit-judgment boundary), and AI-generated content pipelines can import representational harms (whose examples, whose names, whose dialects) into every path.

---

## D. Current state of the field

**Settled:**
- Algorithmic bias has been empirically documented in educational models across race/ethnicity, gender, nationality, and other categories (Baker & Hawn 2022 review; widely replicated since).
- Bias enters without protected attributes via proxies and historical labels (general fairness-ML literature; uncontested mechanically).
- Population-average evaluation conceals subgroup harms; disaggregated evaluation is methodologically standard in the research community (even though procurement practice lags).
- Different fairness criteria are mathematically incompatible in general (Kleinberg et al.; Chouldechova) — "fully fair" certification is not on the table.
- Remediation-heavy assignment harms the students it targets, relative to supported grade-level work (TNTP corpus).

**Contested or emerging:**
- Which fairness metrics should govern *educational* deployments specifically (ABROCA adoption is growing in EDM/LAK but metric choice remains judgment; statistical-power concerns are newly prominent — EDM 2025).
- Whether equity-*positive* personalization (systems that actively narrow gaps) is achievable — the TOC and synthesis both hold this as theorized but not demonstrated at scale (the book defers it to a second edition; the chapter must not promise it).
- How audit mandates should interact with privacy law (Baker & Hawn's audit-blocking problem; jurisdiction-dependent and moving — EU AI Act enforcement practice still developing as of 2026).
- The "unknown bias" frontier: Baker & Hawn emphasize categories (disability, dialect, rural status, intersectional groups) where bias is unmeasured, not absent.

**Key references:**
1. Baker, R.S. & Hawn, A. (2022). Algorithmic Bias in Education. *IJAIED* 32, 1052–1092. [verified — canonical]
2. Gardner, J., Brooks, C. & Baker, R.S. (2019). Evaluating the Fairness of Predictive Student Models Through Slicing Analysis. *LAK '19*. [verified — ABROCA source]
3. The Markup / Chalkbeat (2023). "False Alarm: How Wisconsin Uses Race and Income to Label Students 'High Risk'." [verified]
4. TNTP (2018). *The Opportunity Myth*. [verified]
5. OECD (2023). *Digital Education Outlook 2023* — opportunities, guidelines and guardrails for equitable AI in education. [verified]

**Recent developments (last 3 years):**
- The Markup's DEWS investigation (2023) made state-scale educational prediction bias a public-accountability story, and Wisconsin DPI subsequently moved to overhaul/pause DEWS-style reporting [the overhaul detail should be re-verified at drafting].
- ABROCA methodology maturing: distributional interpretation cautions (2024) and statistical power tests (EDM 2025) — the audit toolkit is getting honest about small samples.
- EU AI Act (in force; education listed among high-risk uses) begins converting subgroup evaluation from research norm to compliance expectation for European deployments — design implication only (Ch 12 handles the policy layer).
- Growing co-design literature in learning analytics and adaptive learning (LAK 22 review; TKL 2024), but still mostly higher-ed pilots with instructors rather than K-12 learners/families.
- LLM-layer bias enters the routing stack: as products bolt LLM explanation onto classical routers (Ch 7 architecture pattern), representational harms in generated content become a new audit surface largely absent from pre-2023 audit frameworks.

---

## E. Teaching considerations

**Where students get stuck:**
- **The inversion itself** (the TOC names this the hardest conceptual moment of Act Two): accepting that a system can be individually adaptive — even individually *correct* — and collectively unjust. Students want a villain (biased data, bad engineer) and the case has none; the harm is emergent from locally-reasonable decisions. The task-diet exercise works because the injustice only becomes visible in the aggregate view the students compute themselves.
- **"Just remove the sensitive variables"** as a reflex fix — proxy reconstruction must be demonstrated, not asserted; the Track A latency/device-type chain does this concretely.
- **Fairness-metric vertigo**: on meeting the impossibility results, students flip from "certify it fair" to "fairness is impossible, so why audit?" The reframe that lands: the audit's product is not a certificate but a *named, owned decision* about which errors the design will accept and who bears them — moving the decision from the model's defaults to the designer's accountability.
- **Treating the audit as adversarial to the product team** — recast as the same move as accessibility review or security review: a standard design phase that mature teams run on their own work (the book's thesis applied: the audit is a design responsibility, not a compliance afterthought).
- **Data discomfort**: subgroup evaluation requires demographic data many students were taught is toxic to collect. Surface the tension explicitly (it is Baker & Hawn's audit-blocking point in miniature).

**Analogies and framings that work:**
- **Redlining without the map**: no one draws the red line; the proxies redraw it. (Use with care — O'Neil's *Weapons of Math Destruction* supplies the pattern language: opacity + scale + damage, and feedback loops that manufacture their own confirmation.)
- **The water-flow analogy for floors**: routing optimizes flow; floors are the guarantee that no path dries up entirely. Less moralized, useful for resistant audiences.
- **"Tracking with a progress bar"**: classical tracking had a meeting you could attend and a label you could fight; algorithmic routing has neither — which is why visibility and contestability are design requirements, not courtesies.
- **The thermostat that learned the house's history** (continuity from Ch 7's thermostat): trained on a house where one room was always kept cold, it now keeps that room cold — and reads the room's coldness as confirmation.
- **Stereotype threat as the receiving end** (*Whistling Vivaldi*): what a "high risk" label does to the labeled student and the watching teacher — the false positive is not a harmless extra intervention.

**Exercises that build the target skill:**
1. (Understand) Map five features from a provided feature list (latency, device type, prior scores, hint usage, session time-of-day) to their plausible proxy chains; classify each potential harm as allocative or representational. — Bloom's: Understand/Analyze.
2. (Analyze) The task-diet audit: from the Track A difficulty logs, compute six-week higher-order-task exposure for two matched learners and locate the fork points in the log. Deliverable: one chart + the three log entries where the paths diverged. — Bloom's: Analyze.
3. (Analyze) ABROCA lab-lite: given pre-computed ROC curves for two subgroups with equal AUC, identify the threshold regions of divergence and state what decision made at those thresholds would disadvantage which group; state why the equal AUCs were falsely reassuring. — Bloom's: Analyze.
4. (Create — Design Lab #4 / Track B) The routing equity audit: named harms (allocative/representational, with the evidence), named counter-patterns keyed to each harm (Pattern Card format), the "what the audit could not see" section, and the Withdrawal Test answer (if the adaptive routing were removed tomorrow, which learners would be better off, and what does that say about the design?). — Bloom's: Create/Evaluate.
5. (Evaluate) Mini-defense: present the audit to a skeptical "product owner" (peer) whose KPI is completion rate; defend the floor constraint against the objection that it hurts efficiency metrics. — Bloom's: Evaluate.

---

## F. Library files relevant to this chapter

- **_lib_Weapons_of_Math_Destruction.md** (O'Neil) — the chapter's pattern language: opacity, scale, damage, proxies, and self-confirming feedback loops; the WMD checklist maps cleanly onto the routing audit.
- **_lib_The_Alignment_Problem.md** (Christian) — ML-and-values grounding: how bias enters training pipelines, the COMPAS/fairness-impossibility story told accessibly; supports Concept 3's impossibility honesty.
- **_lib_Whistling_Vivaldi.md** (Steele) — stereotype threat: the psychological mechanism on the receiving end of a "high risk" label; warrants treating false positives as harms, not free interventions.
- **ai_lxd_definitive_synthesis.md** — §3 (routing/digital tracking, Baker & Hawn, counter-patterns, audit-blocking) is this chapter's spine; §5 for differential-population evidence.
- **experience_design_edtech_merged_synthesis.md** — companion-volume grounding for equity as a design-process phase (research/audit placement in the design cycle).
- **_lib_Calling_Bullshit.md** (Bergstrom & West) — optional: base-rate reasoning for the DEWS 74%-false-alarm arithmetic (precision vs. recall for a rare-ish outcome), if the chapter wants the numeracy sidebar.

---

## G. Gaps and flags

- **FLAG G1 — "PLĀ" UNVERIFIED:** The synthesis and the TOC core-content line both name "Participatory Learning and Advocacy (PLĀ)" as a framework for co-designing personalization rules. This research pass could not verify a framework by that name in the participatory-design or learning-analytics literature. The underlying practice is well-evidenced under participatory design / co-design (LAK 22 review; TKL 2024). RECOMMENDATION: either locate the PLĀ source before drafting or rewrite the chapter (and TOC line) to "participatory co-design of personalization rules" without the acronym. Do not let an unverifiable framework name ship in the equity chapter of all chapters.
- **FLAG G2 — DEWS aftermath:** The 2023 reporting is verified; what Wisconsin DPI did *after* (pause, overhaul, or continuation of DEWS) needs a fresh verification pass at drafting time — the chapter should not end the case in 2023 if the 2024–2026 institutional response is documented.
- **FLAG G3 — Track A data-package dependency (Risk 6):** The TOC itself flags that this chapter degrades to "abstract advocacy" without difficulty-log data good enough to make routing visible. The worked examples and exercises above assume the synthetic-but-labeled log package exists with: per-session task assignments tagged by cognitive level, two matched-learner trajectories, device/school proxy fields, and enough n for one (and only one) stable subgroup comparison — so the power limitation can be taught honestly. This package is a production prerequisite, not a writing detail.
- **FLAG G4 — Ofqual figures:** the ~40% downgrade figure and timeline are from general knowledge of a heavily documented event; verify against BBC/Ofqual primary reporting before print.
- **GAP — equity-positive personalization:** the field has documented harms and proposed counter-patterns, but no at-scale demonstration that personalization can actively narrow gaps (the book defers this to edition 2). The chapter must hold the line: counter-patterns are harm-reduction with supporting evidence (TNTP for floors), not proven equity engines.
- **GAP — algorithmic remedial-loop evidence specificity:** the remedial-loop harm in *adaptive software specifically* is better evidenced by mechanism + adjacent literatures (TNTP for the practice, Baker & Hawn for the bias channels) than by a single named RCT showing an adaptive product locking students into loops. If a domain expert knows of a directly on-point study (e.g., audit studies of specific adaptive platforms' task allocation), it would strengthen Concept 2's first paragraph; flag for expert review.
- **GAP — intersectionality:** Baker & Hawn note intersectional bias as understudied; the chapter's audit template currently slices one attribute at a time. A sidebar acknowledging this (and the sample-size wall it hits) would pre-empt the obvious peer-review note on the book's "most likely peer-review target" chapter.
