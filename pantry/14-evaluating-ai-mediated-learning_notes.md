# Research Notes: Chapter 14 — Evaluating AI-Mediated Learning: The Withdrawal Test at Scale
**Source:** TIKTOC.md chapter entry
**Notes file:** 14-evaluating-ai-mediated-learning_notes.md
**Corresponding chapter:** chapters/14-evaluating-ai-mediated-learning.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**[EVALUATION PLAN CHECKPOINT]**

**One-line:** Students design evaluation for AI-mediated learning with unassisted performance as the primary endpoint — plus transfer, equity subgroups, and reliance trajectories — and produce a qualified conclusion in two registers.

**Learning outcomes:**
1. (Apply) Specify an evaluation plan whose primary endpoint is unassisted performance, with transfer and subgroup analyses — not satisfaction, not assisted scores.
2. (Analyze) Diagnose an evaluation that mistook assisted performance for learning, and name the missing measurement.
3. (Evaluate) State the durability limitation honestly: what a single-term evaluation cannot claim, given the field's longitudinal evidence gap.
4. (Evaluate / Track B) Produce the evaluation plan and a qualified conclusion in two registers — technical and stakeholder-facing — for their own project.

**Opening:** A pilot report any executive would fund: +40% on in-product assessments, 92% satisfaction, glowing quotes. One column is missing. The students name it before the reveal: nobody measured what learners could do without the product.

**Core content:** Endpoint design (assisted / unassisted / transfer / retention); subgroup evaluation as standard (the Baker & Hawn mandate); reliance-trajectory metrics; the durability gap as a reporting obligation; the two-register qualified conclusion; when the honest answer is "not yet known — and here is the measurement that would know it."

**Assessment:** Evaluation Plan Checkpoint (100 pts) + Design Lab #9 (25/30 pts)

**Bridge:** Every artifact exists: guardrail spec, agentic boundaries, learner-side design, evaluation plan. Week 15 assembles the one document that carries them all.

---

## A. Conceptual foundations

### 1. Endpoint architecture: assisted, unassisted, transfer, retention — and why the primary endpoint is a design decision

The chapter's central technical move is borrowed from clinical-trial thinking: an evaluation is defined by its **primary endpoint** — the one pre-specified measurement on which the success claim stands — with everything else secondary. The book's thesis dictates the primary endpoint for AI-mediated learning: **unassisted performance**, because that is the only endpoint the scaffold/crutch distinction is visible on. The four-endpoint architecture:

- **Assisted performance:** what the learner does with the AI present. Legitimate to measure (it is the product's operating condition) but structurally incapable of distinguishing scaffold from crutch — Bastani's GPT Base condition was +48% assisted and −17% unassisted *simultaneously*. Assisted performance conflates the learner's capability with the tool's capability.
- **Unassisted performance:** what the learner does when the AI is withdrawn — the Withdrawal Test as a measurement protocol rather than a grading mechanic. Requires designed withdrawal windows: when, how announced, on what tasks, against what baseline.
- **Transfer:** performance on novel problems / next-topic material — the LearnLM endpoint (5.5 percentage points more likely to solve a novel problem in the next topic). Transfer is the strongest signal that learning rather than performance occurred, and the hardest to design instrumentation for.
- **Retention:** unassisted performance at delay (weeks/months). The endpoint almost nobody measures, and the one the durability gap lives in.

The Bastani RCT functions as the chapter's exemplar of endpoint design done right: the entire finding — the table that opens the book — exists only because the study measured assisted AND unassisted conditions. An evaluation that had measured only assisted performance would have reported GPT Base as a +48% triumph. "Performance with AI is not performance" (synthesis Design Principle 3: "Engagement is not learning; performance with AI is not performance") is therefore not a slogan but a measurement-validity claim: the construct an assisted assessment measures is human-AI system output, not learner capability — exactly the validity logic of Chapter 10, now applied to the evaluation itself.

New corroborating evidence (2026): "AI Assistance Reduces Persistence and Hurts Independent Performance" (arXiv 2604.04721, April 2026; RCTs, N=1,222, math reasoning and reading comprehension): AI assistance improved short-term performance, but participants subsequently performed significantly worse unassisted and were more likely to give up — effects emerging after ~10 minutes of AI interaction. Status: preprint, not yet peer-reviewed at capture — flag in Evidence Box. Its value to the chapter: independent replication of the assisted/unassisted dissociation outside the Bastani context, plus a new measurable construct (persistence/giving-up rate) for the reliance-trajectory toolkit.

**Common misconception:** "Measure everything and decide later." Without a pre-specified primary endpoint, the evaluation will be reported on whichever endpoint moved — and assisted performance and satisfaction almost always move. Endpoint pre-specification (and ideally pre-registration) is the design decision that makes honest reporting structurally possible rather than a matter of post-hoc virtue.

**Worked example:** Track A pilot design: primary endpoint — unassisted performance on a proctored, no-AI problem set covering tutored topics, administered week 8 and (retention) week 14; secondary — assisted in-product scores, transfer items from the *next* untutored unit, satisfaction; reliance trajectory — hint-requests per problem over time against the fading schedule. Success claim pre-written: "The tutor scaffolds if unassisted ≥ control and reliance trajectory declines; any result where assisted gains coexist with unassisted deficits is classified crutch regardless of satisfaction."

**Source(s):** ai_lxd_definitive_synthesis.md §2 (Bastani table; LearnLM transfer endpoint), Summary Principle 3 · Bastani et al. 2025 PNAS (via synthesis) · arXiv 2604.04721 (2026), https://arxiv.org/abs/2604.04721 · clinical-endpoint framing: standard trial methodology (no single citation needed; analogy labeled as such).

### 2. The Withdrawal Test at scale: from grading mechanic to evaluation protocol

The course has made every student answer the Withdrawal Test question weekly ("what can the learner do when the AI is taken away, and how does the design make that more rather than less?"). This chapter scales the question from rhetorical discipline to measurement protocol. Components of a withdrawal protocol:

- **Withdrawal windows:** scheduled AI-free performance occasions, designed into the experience (Chapter 10's AI-free windows now double as data collection). Key design choices: announced vs. unannounced (announced windows let learners cram-with-AI; unannounced raise fairness/trust issues — connect to Ch. 11 transparency: the *existence* of withdrawal windows should be disclosed even if timing isn't), task sampling (same tasks practiced with AI vs. isomorphic variants vs. transfer items), and a control comparison (withdrawal performance is uninterpretable without a no-AI-throughout or business-as-usual baseline — this is where most pilots fail).
- **The counterfactual problem:** "unassisted score dropped" means nothing alone; the Bastani design's force came from randomization. The chapter must teach the minimum credible designs available to a practitioner: randomized pilot (gold standard, often feasible at section/cohort level), staggered rollout / waitlist control, and — weakest but honest — pre/post with stated threats. This is evaluation design at design-literacy depth, not a methods course (the TOC's named failure mode for this chapter: "must teach evaluation design without becoming a methods course").
- **Reliance-trajectory metrics:** the dynamic complement to the static withdrawal snapshot. Constructs: help-requests per task over time (should decline along the fading schedule — Ch. 6's fading spec becomes an evaluable prediction); reasoning-gate pass quality over time; copy-paste/acceptance rates (Wang et al.'s over-half-paste behavior as a loggable signature); persistence/giving-up rates on hard problems (per the 2026 persistence preprint); verification behavior (does the learner check AI output — instrumented by Ch. 13's error-spotting design). The unifying idea: a scaffold predicts a *declining* reliance curve; a flat or rising curve is the crutch signature visible in telemetry before any assessment is scored. NOTE: "reliance-trajectory metrics" as a named construct is the book's synthesis — the components are individually grounded (help-seeking literature, ITS hint-abuse/"gaming the system" research — Baker et al.'s gaming-detection work is the established ancestor) but no standard framework by this name exists in the literature. Label as the book's coinage.
- **The two-register qualified conclusion:** the protocol ends in writing, twice. Technical register: effect sizes with intervals, endpoints, threats to validity, subgroup results, durability limits. Stakeholder register: same truth, decision-shaped — what we can claim, what we cannot, what we'd need to measure to know more. The discipline is that the two registers must be *consistent* — the stakeholder version may simplify but not upgrade the claim. This is the chapter's answer to the vendor-claim deconstruction of Chapter 4: the student now writes the claims they spent Week 4 learning to distrust, and writes them honestly.

**Common misconception:** "The withdrawal test punishes the product" / "no vendor will agree to it." Reframe: GPT Tutor *passed* the withdrawal test (+127% assisted, no unassisted deficit). The test doesn't penalize AI; it penalizes crutch designs — and a designer who has built Weeks 5–13's guardrails should *expect* to pass and should want the data that proves it.

**Worked example:** Diagnosing the chapter-opening pilot (the +40%/92% report — LABEL ILLUSTRATIVE): students name the missing column (unassisted), then redesign it: randomize at section level; add a proctored no-AI assessment at weeks 6 and 12; add two transfer items from the next unit; log hint-requests per problem; pre-register the primary endpoint; rewrite the executive summary in two registers, including the sentence the original report could never write: "We do not yet know whether learners can do this without the product; here is the measurement that would know it by December."

**Source(s):** TikTOC.md Part 7 (Withdrawal Test mechanic) · synthesis §2 (fading as designed withdrawal — flagged understudied), §7 (open question 3: graceful withdrawal design) · Baker et al. gaming-the-system literature (established ITS research line — verify specific citation at drafting, e.g., Baker, Corbett, Koedinger 2004 "Off-task behavior in the cognitive tutor classroom") · arXiv 2604.04721 for persistence construct.

### 3. Subgroup evaluation as standard: the Baker & Hawn mandate

Baker & Hawn (2022, *International Journal of Artificial Intelligence in Education* 32, 1052–1092 — the canonical algorithmic-bias-in-education reference, already taught in Ch. 8) carries a mandate this chapter operationalizes: systems must be evaluated on **subgroup performance, not population averages**, and effectiveness clearinghouses should require it. Their review also documents *which* subgroups the field systematically fails to study: students with disabilities, international students, low-SES students, Indigenous learners — and inappropriate aggregation (e.g., all Latinx students as one group). The evaluation-design implications:

- A population-average positive result can conceal subgroup harm (the Ch. 8 routing lesson restated as measurement: individually adaptive, collectively unjust — and *invisible at the mean*).
- Subgroup analysis must be planned, not post-hoc: pre-specify which subgroups, on which endpoints (the crutch effect itself is plausibly subgroup-differential — Klarin et al. 2024: adolescents with executive-function challenges are more over-reliance-prone, so the unassisted-performance deficit should be *expected* to concentrate).
- Power honesty: most pilots are underpowered for subgroup inference. The chapter's discipline: report subgroup results as estimation with intervals, not hypothesis tests; state which subgroups the evaluation *cannot see* (sample too small, data not collected, audit-blocked) — the Ch. 8 audit's "what the audit could not see" clause recurring as an evaluation-report obligation.
- The equity-endpoint pairing: Tutor CoPilot's signature finding (9-point gains concentrated in lowest-rated tutors) is what an equity-positive result looks like *because the study measured the distribution, not just the mean*. Use as the positive exemplar.

**Common misconception:** "Subgroup analysis is fishing/p-hacking." The distinction is pre-specification and reporting discipline: exploratory subgroup findings are hypothesis-generating and must be labeled; pre-specified subgroup endpoints on theory-predicted vulnerable groups (executive function, prior achievement, language background) are the opposite of fishing — they are the evaluation taking Chapter 8 seriously.

**Worked example:** Track A stats-tutor evaluation: pre-specified subgroups — prior math achievement (bottom quartile), first-generation status, non-native English speakers (proxy availability and privacy constraints stated per Ch. 8). Predicted pattern from theory: bottom-quartile students show the largest assisted gains AND the largest unassisted-deficit risk — the scissors that population means hide. Report template includes a mandatory "populations this evaluation cannot see" section.

**Source(s):** Baker, R.S., & Hawn, A. (2022). Algorithmic Bias in Education. *IJAIED* 32, 1052–1092. https://link.springer.com/article/10.1007/s40593-021-00285-9 (verified) · Baker's OECD Digital Education Outlook 2023 chapter (policy recommendations version — verified) · synthesis §3 (subgroup evaluation vs. population averages; policy mandate) · synthesis §5 (Klarin et al. 2024; equity evidence gap) · synthesis §2 (Tutor CoPilot distributional finding).

### 4. The durability gap as a reporting obligation

The field has **zero multi-year studies** of AI-mediated learning (synthesis §7: nothing on whether the crutch effect persists/grows/diminishes; whether learners develop appropriate reliance or deepen dependency; what accumulates over years; whether four years of AI-supported learning produces different capabilities). Best studies are single-term (Bastani); the field's strongest positive result self-labels exploratory (LearnLM/Eedi). The 2026 landscape has not changed this: recent reviews still call for studies "following progress over several months" as an unmet aspiration — months, not years, is still the frontier.

The chapter's move: convert this from background lament into a **reporting obligation** with teeth. Every evaluation plan must contain a durability clause: (a) the longest delay at which unassisted performance was measured; (b) an explicit statement of what the evaluation therefore cannot claim ("this evaluation supports a one-term scaffold claim; it supports no claim about cumulative effects"); (c) the measurement that would extend the claim (a retention follow-up, a next-course performance linkage, a longitudinal cohort comparison) and what it would cost. The TOC names this chapter's failure mode precisely: "must hold the durability-gap line even though it makes every evaluation the reader will run look weaker. The temptation to soften is the failure mode." The pedagogical answer to that temptation: the durability clause is what makes the rest of the report *credible* — a report that states its limits earns its claims (the Ch. 4 vendor-deconstruction lesson, inverted).

Optional enrichment (TOC-sanctioned as optional): **E-value-style sensitivity thinking**. VanderWeele & Ding's E-value (2017, *Annals of Internal Medicine*) asks: how strong would unmeasured confounding have to be to explain away this result? The transplant to education evaluation: for non-randomized pilots (most real evaluations), require a sensitivity sentence — "how big would selection effects have to be to produce this gain?" — rather than pretending the quasi-experiment is an RCT. Teach as a *style of thinking* (quantified humility), not as a formula; the formal E-value assumes risk-ratio scales that rarely fit learning outcomes. Related calibration tool: Kraft (2020, *Educational Researcher*, "Interpreting Effect Sizes of Education Interventions") — in real-world education RCTs, 0.05 SD is small-but-meaningful, 0.20 SD is large; this guards students against both Hattie-style 0.40-hinge dismissal of real effects and vendor-style celebration of trivial ones. (Connects to the Digital Delusion / Counter pair in the library — see Section F.)

**Common misconception:** "No longitudinal evidence = no defensible claims at all" (the inverse softening). The chapter's line: single-term claims with stated limits are defensible and useful; the indefensible move is the silent extrapolation from one term to a learning career — which is exactly the extrapolation every adoption decision implicitly makes unless the report blocks it.

**Worked example:** The instructor's Track A evaluation plan (continuing Act Three case) ends with the durability clause verbatim: "Longest measured delay: 6 weeks post-course, unassisted. This evaluation cannot speak to effects beyond one semester. The measurement that would: linked performance in the follow-on course (no AI tutor present) for pilot vs. control cohorts, available at zero marginal cost from existing records, one year out. We have requested it." — modeling that durability extensions are often institutionally cheap, just never asked for.

**Source(s):** synthesis §7 (durability gap — the field's most consequential unknown) · TikTOC.md Part 11 (Week 14 hard-chapter note) and Part 14 (longitudinal effects deferred to 2nd edition; reopen condition) · VanderWeele, T.J., & Ding, P. (2017). Sensitivity Analysis in Observational Research: Introducing the E-Value. *Ann Intern Med* 167(4):268–274 (verified) · Kraft, M.A. (2020). Interpreting Effect Sizes of Education Interventions. *Educational Researcher* 49(4):241–253 (verified, well-established — re-confirm details at drafting).

### 5. Why the inherited evaluation toolkits fail here: Kirkpatrick's limits and what replaces them

Most working L&D readers will arrive with the Kirkpatrick four-level model (reaction → learning → behavior → results) as their evaluation default. The chapter must name why it fails for AI-mediated learning specifically:

- **Level 1 (reaction) is anti-diagnostic here:** the field's defining finding is that satisfaction and learning *dissociate* — GPT Base produced high engagement and a 17% unassisted deficit. A model that puts reaction at the base of an implied causal chain (reaction → learning) is structurally wrong for this technology; the chain is empirically broken in the AI case. (Standing scholarly critiques of Kirkpatrick: levels are a taxonomy, not a causal model; the level-to-level causal links lack empirical support; ambiguity about operationalization — Holton's 1996 critique "The Flawed Four-Level Evaluation Model," *HRD Quarterly*, is the classic; Reio et al. 2017 and the IES/employment-studies review literature corroborate.)
- **Level 2 (learning) doesn't distinguish assisted from unassisted measurement** — the distinction this entire chapter exists to enforce. A Kirkpatrick Level 2 assessment administered inside the AI-supported environment silently measures the human-AI system.
- **What survives:** Kirkpatrick's pressure toward behavior/results (Levels 3–4) maps loosely onto transfer and durable outcomes — the instinct is right, the instrument is underspecified. Alternatives worth naming: Thalheimer's **LTEM** (Learning-Transfer Evaluation Method, 2018) — an eight-tier model explicitly designed to devalue attendance/reaction measures and force decision-competence and transfer measurement; it is the closest existing practitioner framework to the chapter's endpoint architecture and can be presented as "the L&D-native bridge" to withdrawal-test thinking. Learning-analytics evaluation frameworks (e.g., the learning-analytics community's emphasis on aligning telemetry with learning constructs) supply the reliance-trajectory instrumentation layer Kirkpatrick never had.
- The chapter's synthesis: keep Kirkpatrick's question ("did it change what people can do?"), replace its measurement theory with the four-endpoint architecture + subgroup mandate + durability clause. For corporate readers, this section is the chapter's transfer payload — it speaks their installed base.

**Common misconception:** "We did Kirkpatrick Levels 1–2, so we evaluated it." For AI products this is worse than no evaluation: it produces precisely the +40%/92% pilot report of the chapter opening — confident, well-formatted, and measuring the wrong construct at every level it touches.

**Worked example:** Translation table for a corporate Track B student: Kirkpatrick L1 → keep as secondary UX telemetry, explicitly de-linked from effectiveness claims; L2 → split into assisted (product analytics) and unassisted (proctored or workflow-isolated tasks) with unassisted primary; L3 → transfer: performance on novel job tasks without the assistant; L4 → durable outcomes with the durability clause attached. One page; the student's existing stakeholder language survives, the measurement theory underneath is replaced.

**Source(s):** Holton, E.F. (1996). The flawed four-level evaluation model. *Human Resource Development Quarterly* 7(1):5–21 (verified classic — re-confirm pages) · Institute for Employment Studies review, "Kirkpatrick and Beyond" (verified to exist) · Thalheimer, W. (2018). LTEM (Learning-Transfer Evaluation Model), https://www.worklearning.com (practitioner framework — well-documented; cite his published model paper/site) · synthesis §2 (engagement/learning dissociation).

---

## B. Domain examples and cases

### Case 1 — Bastani et al. as an evaluation-design exemplar (re-read, not re-taught)
Week 1 taught the *finding*; Week 14 re-reads the *study design*: randomization, the assisted/unassisted dual measurement, the withdrawal structure (AI available during practice, removed at assessment), error-propagation analysis as a reliance signature (GPT Base's arithmetic errors appearing in student work — students weren't checking). The point: every component of the chapter's evaluation architecture already exists in the study the course opened with; students have been looking at a model evaluation plan all semester without seeing it. Include the PNAS Aug 2025 correction note (affiliation only; findings unchanged) as modeled citation hygiene. **Source:** Bastani et al. 2025 PNAS via synthesis §2.

### Case 2 — LearnLM/Eedi: how to label your own study "exploratory"
The field's strongest positive result (5.5pp transfer advantage, human-supervised AI) whose authors *themselves* position the RCT as exploratory (synthesis §7; the arXiv paper "AI tutoring can safely and effectively support students: An exploratory RCT in UK classrooms" carries it in the title). Teaching value: the two-register qualified conclusion exists in the wild — a team with the best news in the field still stated its evidentiary class honestly, and the result is *more* credible for it. Also the transfer-endpoint exemplar: next-topic novel problems as instrumentation. **Source:** synthesis §2/§7; arXiv 2512.23633 (verify ID at drafting).

### Case 3 — MATHia / What Works Clearinghouse: +0.04 and the at-scale honesty problem
Cognitive Tutor Algebra I: decades of research, WWC "potentially positive effects," weighted effect +0.04 at scale — against marketing-context claims of 30–50% time reduction / 15–25% gains for adaptive learning generally (Cao et al. 2025, boundary conditions attached). The case teaches effect-size honesty (Kraft benchmarks: +0.04 at national scale is not nothing, and is also not the brochure), the efficacy-vs-effectiveness distinction (controlled pilots vs. at-scale deployment), and ESSA evidence tiers as the institutional grammar US adopters will use (Tier 1 strong/RCT ≈ WWC without reservations; Tier 2 quasi-experimental; Tier 3 correlational/promising; Tier 4 logic model — students should know which tier their own evaluation plan would produce). **Sources:** synthesis §2/§3; WWC ESSA tiers, https://ies.ed.gov/ncee/wwc/essa; Kraft 2020.

### Failure case — The pilot that funded the wrong product (the chapter opening; illustrative)
LABEL AS ILLUSTRATIVE (the TOC opening case): +40% on in-product assessments, 92% satisfaction, glowing quotes — funded, scaled, and structurally incapable of detecting a GPT-Base-shaped disaster, because every number was measured with the AI present and every construct was assisted performance or reaction. The diagnostic drill (Outcome 2): name the missing column, name the missing comparison group, name the missing subgroups, name the missing delay. Real-world anchor for plausibility (cite, don't overclaim): Wang et al. 2024's documented paste-and-accept majority behavior is exactly what an in-product assessment cannot see; and the 2026 persistence preprint shows the unassisted deficit appearing after minutes of use. The failure case should also note the *incentive* layer: nobody in the vendor-buyer-pilot triangle is paid to add the missing column — which is why the book makes it a specification requirement (Ch. 15) rather than a hope.

---

## C. Connections and dependencies

**Prerequisites:** Chapter 4 (evidence-state literacy, endpoint vocabulary, vendor-claim deconstruction — Week 14 is Week 4 turned from reading to writing); Chapter 8 (routing audit, subgroup logic, "what the audit could not see"); Chapter 10 (AI-free windows, validity-first framing — withdrawal windows are assessment design reused as instrumentation); Chapter 13 (learner-side instrumentation: reliance dashboards, verification logging — the telemetry the trajectory metrics read); Chapters 6–7 (fading schedules and adaptivity decisions as evaluable predictions).

**Unlocks:** Chapter 15 — the evaluation plan is the final section of the integration specification and the spine of the defense (a spec defended to a skeptical board stands or falls on "how would you know?"). Also unlocks the Final Reliance Disclosure's higher bar ("the measurement that would close it" — that measurement is designed here).

**Adjacent chapter connections:**
- **To Chapter 13 (AI literacy/developmental):** Ch. 13 designed the learner state (appropriate reliance) and the instrumentation that makes it visible; Ch. 14 measures it. The reliance-trajectory metrics are the evaluative shadow of Ch. 13's reliance-calibration features; the bridge question ("how will anyone know whether it worked when the AI is taken away?") is answered by this chapter's protocol. Developmental note carried forward: withdrawal-window design is age-calibrated too (unannounced no-AI assessment is a different experience for a 10-year-old than for a graduate student).
- **To Chapter 15 (full integration):** Ch. 14 produces the last load-bearing artifact; Ch. 15 assembles. The two-register qualified conclusion drafted here becomes the specification's evaluation section and the defense's hardest moment — the student must say "not yet known" to a skeptical reviewer and survive. The Evaluation Plan Checkpoint (100 pts) is the dress rehearsal for the final defense's evidentiary cross-examination.

---

## D. Current state of the field

**Settled:**
- Assisted and unassisted performance dissociate, and can move in opposite directions under the same design (Bastani 2025; corroborated directionally by the 2026 persistence RCTs and the cognitive-offloading literature). Measuring only assisted performance is a construct-validity error, not a shortcut.
- Satisfaction/engagement do not index learning (long-established in education research; acutely true for AI products).
- Subgroup evaluation is mandated by the field's own canonical bias literature (Baker & Hawn 2022) and by US evidence infrastructure direction (ESSA/WWC grammar exists, even if AI products rarely clear it).
- The causal evidence base is thin (~20 high-quality causal studies in 800+ papers — Stanford SCALE, independently corroborated by Han et al. 2025 and the 2026 meta-review of reviews, per synthesis).

**Contested or emerging:**
- No multi-year evidence exists; even multi-month designs are aspirational in current reviews (the durability gap is fully open as of June 2026 — reopen condition for the book's second edition).
- Reliance-trajectory measurement: components exist (gaming-the-system detection, help-seeking analytics, persistence measures) but no standard framework; the book's named construct is a synthesis — emerging space to watch.
- Effect-size interpretation norms: Hattie's 0.40 hinge vs. Kraft's 0.05/0.20 real-world benchmarks — live methodological dispute with direct consequences for how AI pilot results get judged (see Section F: Digital Delusion + Counter).
- Pre-registration in EdTech evaluation: normal in academic education RCTs (registries: Registry of Efficacy and Effectiveness Studies — REES; OSF), still rare in vendor/internal pilots; the chapter can require registry-style pre-specification without claiming industry practice has adopted it.
- Whether GenAI meta-analytic effects (e.g., reported ~0.7–0.8 effect sizes in 2025–2026 meta-analyses of mostly assisted, short-term outcomes) survive correction for endpoint type, study quality, and publication bias — early meta-analyses and the SCALE-style quality screens point in opposite directions; the chapter should teach this as exactly the kind of claim its endpoint architecture adjudicates.

**Key references:**
1. Bastani et al. (2025). Generative AI can harm learning. *PNAS* (with Aug 2025 correction, affiliation only). (verified via synthesis; spine citation — exact reference in book's master list)
2. Baker, R.S., & Hawn, A. (2022). Algorithmic Bias in Education. *IJAIED* 32:1052–1092. (verified)
3. Kraft, M.A. (2020). Interpreting Effect Sizes of Education Interventions. *Educational Researcher* 49(4). (verified)
4. VanderWeele, T.J., & Ding, P. (2017). Sensitivity Analysis in Observational Research: Introducing the E-Value. *Annals of Internal Medicine* 167(4). (verified)
5. "AI Assistance Reduces Persistence and Hurts Independent Performance" (2026). arXiv:2604.04721. (verified preprint — peer-review status unknown; author names not captured, pull at drafting)
6. Holton, E.F. (1996). The flawed four-level evaluation model. *HRDQ* 7(1). (verified classic)

**Recent developments (last 3 years):**
- 2025: Bastani PNAS publication + correction; LearnLM/Eedi exploratory RCT; Tutor CoPilot; Stanford SCALE 20-in-800 finding — the spine evidence is all 2024–2025.
- 2025–2026: convergent meta-reviews (Han et al. 2025; 2026 meta-review of reviews) independently confirm thin-causal-base conclusion.
- April 2026: persistence/independent-performance RCT preprint (N=1,222) — first large multi-task replication of the unassisted-deficit pattern outside school mathematics; also first to quantify give-up rates.
- 2025–2026: WGU Labs student-trust survey (Feb 2026 publication) — trust/integrity perception data usable as secondary endpoints.
- Ongoing: no longitudinal study has landed; the book's deferred-topic reopen condition remains unmet as of June 2026.

---

## E. Teaching considerations

**Where students get stuck:**
- **Methods anxiety:** "I'm a designer, not a statistician." The chapter's scope discipline (TOC: don't become a methods course) is also the student's relief: the deliverable is an evaluation *design* — endpoints, comparisons, instrumentation, claims — not an analysis. Power calculations and modeling get one honest paragraph ("consult a methodologist; here is what to ask for").
- **The counterfactual blind spot:** students design withdrawal windows but forget the comparison group, producing pre/post designs they then over-claim. Drill: "compared to what?" on every claim sentence.
- **Softening under stakeholder pressure (the chapter's named failure mode):** in the two-register exercise, students systematically upgrade claims in the stakeholder version ("suggests" → "shows"; durability clause deleted as 'too negative'). Countermeasure: grade the *consistency* between registers, and teach the LearnLM self-labeling case as the credibility argument for honesty.
- **Pre-specification feels like self-handicapping:** students want to keep endpoint options open. The Ch. 4 vendor-deconstruction memory is the lever: an unspecified evaluation is a future vendor claim about themselves.
- **Subgroup paralysis:** either skipping subgroups (small n) or slicing into meaninglessness. Teach the estimation-not-testing framing and the "populations this evaluation cannot see" clause as the honest middle.

**Analogies and framings that work:**
- **Training wheels:** nobody evaluates cycling instruction by lap times with the training wheels on. The whole chapter in one image; pairs with the book's scaffold language.
- **Clinical-trial endpoints:** primary endpoint pre-specification, surrogate-endpoint failure (assisted performance as the surrogate that doesn't track the disease outcome). Use lightly; label as analogy.
- **The crash-test dummy vs. the brochure:** assisted metrics are the brochure; the withdrawal test is the crash test — the product is only known under the condition it claims to prepare you for.
- **"Performance with AI is not performance" as a units error:** an assisted score is denominated in human+AI units; an adoption decision is denominated in human units; the pilot report committed a currency conversion without an exchange rate.
- **The durability clause as a warranty document:** stating what's covered and for how long is what makes a warranty trustworthy; "lifetime warranty" with no terms is the vendor claim from Week 4.

**Exercises that build the target skill:**
1. (Analyze) The missing-column diagnostic: given three real-style pilot reports (illustrative), name for each the construct actually measured, the construct claimed, and the single missing measurement that would distinguish them. — Bloom's: Analyze.
2. (Apply) Endpoint architecture drill: for a provided product, write the four-endpoint table (assisted/unassisted/transfer/retention): instrument, timing, comparison, and which is primary — with a one-sentence justification keyed to the learning objective. — Bloom's: Apply.
3. (Evaluate) The two-register rewrite: given a technical results section (provided, with mixed results: assisted gain, null unassisted, one concerning subgroup signal), write the stakeholder summary; peer-grade for claim consistency between registers. — Bloom's: Evaluate.
4. (Create / Track B) The Evaluation Plan Checkpoint itself: full plan for their project — endpoints, withdrawal protocol, comparison design, pre-specified subgroups, reliance-trajectory instrumentation, durability clause, two-register conclusion template, plus the Withdrawal Test answer and Reliance Disclosure. — Bloom's: Create.
5. (Evaluate, optional enrichment) Sensitivity thinking: for a non-randomized pilot result, write the E-value-style paragraph — what selection story could produce this gain, how large would it have to be, and is that plausible here? — Bloom's: Evaluate.

---

## F. Library files relevant to this chapter

- **_lib_The_Digital_Delusion_-_Jared_Cooney_Horvath.md** — EdTech efficacy measurement and the Hattie 0.40 hinge-point framing (typical-growth baseline; interventions judged against it); the chapter's foil for effect-size interpretation and the strongest available articulation of the skeptic's measurement standard.
- **_lib_The Digital Delusion Counter.md** — Bear Brown's rebuttal: the implementation-gap argument and the critique of the 0.40 threshold as a meaningful-impact cutoff (pairs with Kraft 2020); use the pair to teach that effect-size benchmarks are themselves contested instruments, not neutral rulers.
- **_lib_Randomistas.md** — RCT culture, what randomization buys and costs; background for the counterfactual-design section.
- **_lib_Calling_Bullshit.md** / **_lib_Science_Fictions.md** — claim-hygiene and research-pathology background for the pre-specification and vendor-claim threads (light-touch; Ch. 4 carried the main load).
- **ai_lxd_definitive_synthesis.md** — §2 (the three RCTs as evaluation designs), §7 (durability gap, open questions), Summary Principle 3; the chapter's grounding throughout.
- **experience_design_edtech_merged_synthesis.md** — companion-volume evaluation-process continuity (the reader's prior evaluation toolkit that this chapter upgrades).

---

## G. Gaps and flags

- **FLAG (G-1) — The opening pilot report (+40%/92%) is illustrative**, per the book's sourcing rule (Part 10: every case sourced OR labeled illustrative). Keep the label visible; anchor its plausibility to Wang et al. 2024 and arXiv 2604.04721.
- **FLAG (G-2) — "Reliance-trajectory metrics" is the book's coinage:** components are literature-grounded (gaming-the-system/help-seeking analytics; persistence measures) but the named framework is synthesis, not citation. Label accordingly in the Pattern Card.
- **FLAG (G-3) — arXiv 2604.04721 is a preprint** (April 2026): author list not captured in research; peer-review status unverified. Strong thematic fit — but Evidence Box must carry "preprint, not yet peer-reviewed" and the chapter should survive its removal (it is corroboration, not spine).
- **FLAG (G-4) — Holton 1996 and Thalheimer LTEM details** (exact pages; LTEM tier count/date) from memory + secondary sources; verify against primary sources at drafting. LTEM is a practitioner framework, not peer-reviewed research — present it as such.
- **FLAG (G-5) — E-value section is optional and analogical:** the formal E-value machinery (risk ratios) does not transfer cleanly to continuous learning outcomes; teach the *thinking style*, not the formula, or cut if the chapter runs long (TOC marks it optional).
- **FLAG (G-6) — 2025–2026 GenAI meta-analysis effect sizes (~0.7–0.8)** surfaced in search are from secondary summaries of mixed-quality study pools (mostly assisted, short-term endpoints); do NOT cite as field consensus — if used, use as a teaching object for endpoint-quality screening. Needs domain-expert verification if included.
- **FLAG (G-7) — Track A dependency:** this chapter's worked example requires the provided pilot data package (Risk 6 in the TOC: HIGH effort, load-bearing for Weeks 8 and 14). The notes assume it exists; if synthetic, it must be labeled synthetic per the book's own rules.
- **GAP — No standard exists for withdrawal-protocol design** (announced vs. unannounced windows, task isomorph construction): the chapter is writing first-generation practice guidance; say so, and frame the protocol as a Pattern Card with named open parameters.
- **GAP — Pre-registration infrastructure for practitioner pilots** (REES, OSF) exists but adoption evidence in industry EdTech is thin; the chapter should prescribe registry-style discipline without asserting it is industry norm.
