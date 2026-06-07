# Research Notes: Chapter 04 — Reading the Evidence: Thin Causal Bases, Vendor Claims, and the Durability Gap
**Source:** TIKTOC.md chapter entry
**Notes file:** 04-reading-the-evidence_notes.md
**Corresponding chapter:** chapters/04-reading-the-evidence.md (not yet written)
**Generated:** 2026-06-07
---
## Chapter summary (from TIKTOC.md)

**[MIDTERM: SCAFFOLD/CRUTCH DIAGNOSTIC]**

**One-line:** Students learn to weigh AI-in-education claims against the actual evidence state — ~20 high-quality causal studies in 800+ papers, no longitudinal evidence anywhere, and vendor descriptions that encode design intent but not outcomes.

**Learning outcomes:**
1. (Understand) Characterize the evidence state: the Stanford SCALE finding, the converging meta-reviews, and what "exploratory" means on the field's best positive result.
2. (Analyze) Deconstruct a vendor product description into testable interaction design claims versus outcome claims with no causal support.
3. (Evaluate) Judge which design decisions can responsibly be made on current evidence, which require pilot measurement, and which should be declined — the three-bucket discipline.
4. (Evaluate) Explain the durability gap: why the absence of longitudinal evidence is the field's most consequential unknown.

**Opening:** Two product pages, side by side: the best-evidenced adaptive tutor on the market (decades of cognitive tutor research, modest +0.04 weighted effect at scale) and the most market-visible conversational tutor (excellent product copy, immature causal evaluation). The students rank them by evidence. The market ranked them the other way.

**Core content:** Evidence-state literacy; the 20-in-800 finding and its independent corroborations; assisted vs. unassisted vs. transfer endpoints; vendor-claim deconstruction; the durability gap; making design decisions under honest uncertainty.

**Assessment:** Midterm — Scaffold/Crutch Diagnostic (100 pts)

**Bridge:** Act One complete: the student can diagnose and can read the evidence. Act Two turns to design — starting with the AI that is already inside the student's own workflow.

---
## A. Conceptual foundations

### 1. The evidence state: ~20 causal studies in 800+ papers, and why that ratio is the field's most important number

Stanford's SCALE Initiative published "The Evidence Base on AI in K-12: A 2026 Review," which analyzed more than 800 academic studies on AI in K-12 education and identified only about 20 that rigorously measure causal impact — studies that can actually tell whether an AI tool *changed outcomes* for students or educators rather than merely describing usage, perceptions, or correlations. The SCALE repository has since grown past 1,100 papers without the causal core growing proportionally. The review's other headline findings matter as much as the ratio: (a) there are **no high-quality causal studies of student AI use conducted in U.S. K-12 classrooms** — the spine RCTs come from Turkey (Bastani), the UK (LearnLM/Eedi), and tutoring-provider contexts (Tutor CoPilot); (b) most studies measure short-term outcomes, not durable learning; (c) equity, wellbeing, and social development are nearly unstudied; and (d) tools with pedagogical guardrails show more promising outcomes than general-purpose chatbots — the SCALE review independently corroborates the book's thesis.

The thin-base conclusion is not one team's verdict. A PRISMA-guided meta-review of 35 systematic reviews of GenAI in education (the Han et al. 2025 review cluster; see also Zhang, Deng & Shadiev 2026, *Journal of Educational Computing Research*/SAGE, "A Meta-Review of Generative AI in Education: Synthesizing Findings from Systematic Reviews") reached the same conclusion from the opposite direction: the *reviews themselves* are methodologically inconsistent — variable database selection, opaque search strategies, weak or absent quality appraisal — meaning the field's secondary literature inherits and amplifies the weaknesses of its primary literature. Teach students the structure of this argument: when both the primary-study census (SCALE) and the review-of-reviews (Han; Zhang et al.) converge on "thin and methodologically weak," the conclusion is robust to either source being wrong.

The design consequence: practice is years ahead of evidence, and institutions are making architectural decisions (platform contracts, curriculum redesigns, staffing changes) that will be hard to reverse if the evidence later cuts against them. The chapter's job is not to make students cynical — it is to make them *calibrated*: able to say which claims rest on what.

**Common misconception:** "800 papers means a large evidence base." Volume of publication is not volume of evidence; 780 of those papers are descriptive, perceptual, or correlational. Students reliably conflate "much-studied" with "well-evidenced."
**Worked example:** Give students the SCALE repository categories and ten abstracts (mix of survey studies, design cases, quasi-experiments, and one RCT). Task: sort into "could support a causal claim" vs. "cannot," and state what each *can* legitimately support. Most students initially admit 5–6; the defensible answer is 1–2.
**Source(s):** Stanford SCALE Initiative, "The Evidence Base on AI in K-12: A 2026 Review" (scale.stanford.edu; covered by EdTech Innovation Hub and others); Han et al. 2025 systematic review; Zhang, Deng & Shadiev (2026) meta-review of 35 reviews; ai_lxd_definitive_synthesis.md.

### 2. Endpoint literacy: assisted, unassisted, transfer, retention — four different questions wearing one word

The single most load-bearing distinction in the chapter. An *assisted* endpoint measures what the learner can do **with the AI present** (Bastani: +48% GPT Base, +127% GPT Tutor). An *unassisted* endpoint measures what the learner can do **after the AI is withdrawn** (Bastani: −17% GPT Base, ~0% GPT Tutor). A *transfer* endpoint measures performance on **novel material or contexts** (LearnLM/Eedi: +5.5 percentage points on a novel problem in the *next* topic — the field's strongest positive finding, and explicitly labeled exploratory by its own authors). A *retention/durability* endpoint measures performance **after time has passed** — and this fourth column is essentially empty across the entire field.

The Bastani RCT is the canonical demonstration that assisted and unassisted endpoints can move in *opposite directions in the same condition*: GPT Base students scored 48% higher with the tool and 17% lower without it. Any evaluation that reports only assisted performance is structurally incapable of detecting a crutch. This is also why "engagement," "satisfaction," and "usage minutes" are not learning endpoints at all — they are product metrics that correlate with assisted performance and can anti-correlate with unassisted performance.

Important nuance for the chapter: "exploratory" on the LearnLM result is not a slur. It is the authors' own honest label for a first-of-its-kind trial that hasn't been replicated, was conducted within one platform (Eedi), and used human supervision of AI messages (76.4% approved with zero or minimal edits). The best positive finding in the field comes with a human in the loop *and* a modesty label — students should learn to read both facts.

**Common misconception:** "A 48% improvement is a learning gain." It is a *performance-while-assisted* gain. Students (and executives) systematically read assisted endpoints as evidence of learning; the same error drives the Week 14 opening case (the pilot report with the missing column).
**Worked example:** Take the Kestin et al. Harvard study (*Scientific Reports*, 2025: AI tutor with research-based design outperformed in-class active learning in physics — students learned more in less time). Have students classify its endpoints: immediate post-tests after short interventions (~1 week scale) — strong on immediate unassisted learning, silent on retention and long-run transfer. Even the field's *good news* lives in the leftmost columns of the endpoint table.
**Source(s):** Bastani et al. 2025, *PNAS* 122(26), e2422633122 ("Generative AI without guardrails can harm learning"); Eedi/Google DeepMind LearnLM RCT (exploratory label per authors; via synthesis); Kestin et al. 2025, *Scientific Reports* ("AI tutoring outperforms in-class active learning") + ETCJournal review noting the duration limitation; ai_lxd_definitive_synthesis.md.

### 3. Effect size literacy for designers: Hedges' g, education-specific benchmarks, and heterogeneity

Designers need just enough effect-size literacy to read an evidence table and resist two opposite errors: dismissing small effects that are actually meaningful, and trusting large effects from small, unrepresentative studies. Core toolkit: (a) standardized mean difference (Cohen's d / Hedges' g — g is d with a small-sample correction; for a designer's purposes they read the same way: difference between groups in standard-deviation units); (b) the WWC "improvement index" (expected percentile-rank change for a median comparison student, range −50 to +50 — an effect size of ~0.25 ≈ +10 percentile points); (c) **Kraft's (2020, *Educational Researcher*) education-specific benchmarks**: Cohen's old 0.2/0.5/0.8 "small/medium/large" labels are wrong for field-based education research — 36% of effect sizes from education RCTs with standardized achievement outcomes are below 0.05, and Kraft proposes <0.05 small, 0.05–0.20 medium, >0.20 large *for this literature*, always read jointly with cost and scalability; (d) heterogeneity: a meta-analytic average hides the spread — AI-in-education effects are heavily moderated by domain structure, implementation quality, and population, so the moderator table is more informative than the headline mean.

This recalibration flips the chapter's opening case. The Cognitive Tutor's small at-scale effect looks pathetic by Cohen's labels and respectable by Kraft's — a modest positive effect, demonstrated at scale, across dozens of schools, with two decades of accumulated study, is *more* evidentially impressive than a +0.8 from one 60-person lab study. Meanwhile, the headline adaptive-learning claims students will meet in Week 7 (30–50% time reduction, 15–25% outcome gains) come from reviews whose effects concentrate in structured domains and well-resourced contexts — heterogeneity is the caveat that travels with every average.

**Common misconception:** "Bigger effect size = better product." Effect sizes are functions of the study (sample, comparison condition, outcome measure proximity, duration), not properties of the product. Researcher-designed proximal outcomes routinely produce effects 2–4× larger than standardized distal outcomes for the same intervention.
**Worked example:** Three claims about one fictional product: g = 0.61 (n=44, researcher-built quiz, 2 weeks), g = 0.09 (n=8,400, state test, full year), "students improved 32%" (no comparison group). Students rank by evidential weight and write one sentence per claim stating what it licenses. Correct ranking: the 0.09 carries the most decision-relevant weight; the 32% carries none.
**Source(s):** Kraft, M. A. (2020). "Interpreting Effect Sizes of Education Interventions." *Educational Researcher* 49(4), 241–253; WWC procedures handbooks (improvement index definition, ies.ed.gov); ai_lxd_definitive_synthesis.md (Cao et al. 2025 boundary conditions).

### 4. Vendor claims and evidence tiers: design intent ≠ outcome evidence

A vendor product page is a *design document wearing an evidence costume*. The chapter's deconstruction method: separate every sentence into (a) **interaction design claims** — testable descriptions of what the product does ("Khanmigo doesn't give direct answers; it asks guiding questions") — which are informative about intended experience design and can be verified by using the product; (b) **outcome claims** — assertions about learning effects ("proven to accelerate mastery") — which require causal evidence that usually does not exist; and (c) **borrowed evidence** — citing the literature of an adjacent product class (LLM tutors borrowing the cognitive-tutor literature, or any tutor borrowing Bloom's 1984 two-sigma claim — itself based on small studies and never replicated at that magnitude; VanLehn 2011 found human tutoring d ≈ 0.79, not 2.0).

The regulatory scaffold for this is the **ESSA evidence-tier framework**: Tier 1 (Strong — well-designed RCTs), Tier 2 (Moderate — quasi-experimental), Tier 3 (Promising — correlational with controls), Tier 4 (Demonstrates a Rationale — a logic model plus an evaluation effort underway). Two field facts make tiers a literacy rather than a checkbox: most edtech products cluster at Tier 3–4 because correlational designs are cheap; and "ESSA-aligned" in marketing copy frequently means Tier 4 — i.e., *the company has a theory and intends to test it*. The U.S. Department of Education's EdTech Evidence Toolkit (2023) and certifiers like Digital Promise (which runs an explicit Tier-3 product certification) give students real artifacts to dissect. A 2026 LSE Impact blog piece ("Three red flags for 'evidence-based' EdTech") is a usable current reading on how the label gets gamed.

**Common misconception:** "If a vendor cites a study, the product is evidence-based." The cited study is often (a) of a different product version, (b) of a different product class, (c) internal and unpublished, or (d) Tier 3–4 dressed as Tier 1–2. The citation's existence is not the claim's support.
**Worked example:** The Week 4 midterm prep exercise: take Khanmigo's public product description. Interaction design claims (Socratic, no direct answers, teacher visibility) — verifiable, and genuinely scaffold-leaning in intent. Outcome claims — as of the synthesis, no published causal evaluation at MATHia's evidence maturity. The product can be simultaneously *well-designed by the Week 3 pattern catalog* and *unevidenced by the Week 4 standards*. Holding both judgments at once is the skill.
**Source(s):** ESSA tier definitions (U.S. ED; state worksheets, e.g., Michigan DOE); U.S. ED EdTech Evidence Toolkit (EdWeek Market Brief coverage, May 2023); Digital Promise ESSA Tier 3 certification; LSE Impact blog, March 2026; VanLehn 2011 (vs. the two-sigma myth); ai_lxd_definitive_synthesis.md ("vendor descriptions encode interaction design assumptions… not outcome evidence").

### 5. The durability gap and the three-bucket discipline

The durability gap: **no rigorous longitudinal studies exist anywhere in the field** on whether the crutch effect persists or fades with extended use, whether learners develop appropriate reliance over time or deepen dependency, or what multi-year AI-mediated learning does to expertise development. Bastani measures one academic term. LearnLM is exploratory. Kestin et al. spans about a week of instruction. The strongest statement the field can honestly make about year-four effects is "not yet known." This is not a routine "more research is needed" footnote — it is the most consequential unknown, because the decisions being made now (curriculum architecture, assessment policy, what early-career practice looks like) are exactly the decisions longitudinal evidence would inform, and they are being made irreversibly in its absence.

The chapter converts this into a decision discipline rather than paralysis — the **three-bucket sort** for any proposed design decision: (1) **Decide on current evidence** — decisions where the causal direction is established and the cost of error is low or symmetric (e.g., requiring reasoning before help: supported by Bastani + the self-explanation literature, near-zero downside); (2) **Pilot with measurement** — decisions where evidence is suggestive but unestablished, and a local pilot with an *unassisted* endpoint can carry the weight (e.g., an AI feedback layer on essay drafts); (3) **Decline** — decisions where the evidence affirmatively warns (unrestricted answer-providing access during practice) or where the risk is asymmetric and unmeasurable on pilot timescales (features whose main risk is long-run dependency — precisely what the durability gap means you cannot test locally). Risk asymmetry is the bridge concept: when you cannot measure the harm on your timescale, the burden of proof flips to the feature.

**Common misconception:** "Absence of evidence of harm = evidence of absence of harm." The durability gap means long-run harm and long-run benefit are *equally* unevidenced; the asymmetry argument (harm to skill development compounds and is hard to reverse; foregone convenience is cheap) is what justifies conservative defaults — students should be able to articulate this rather than hand-wave "be careful."
**Worked example:** A client wants three features: (a) hint-ladder tutor with reasoning gates, (b) AI essay feedback with rubric, (c) always-available "explain this answer" button in homework. Bucket them: (a) decide-yes on current evidence; (b) pilot with pre/post unassisted writing measure; (c) decline or redesign — it is the GPT Base pattern wearing a helpful label, and its principal risk (reliance trajectory) is unmeasurable within a semester pilot.
**Source(s):** ai_lxd_definitive_synthesis.md §7 (durability gap); SCALE 2026 review (short-term outcome dominance); ETCJournal review of Kestin et al. (duration critique); Brookings, "What the research shows about generative AI in tutoring."

---
## B. Domain examples and cases

### Case 1: Cognitive Tutor Algebra I — what two decades of honest evidence looks like
The best-evidenced adaptive tutor in history, and the chapter's calibration object. Pane et al. (2014, *Educational Evaluation and Policy Analysis*) ran the landmark at-scale RCT (73 high schools + middle schools across 7 states): **no significant effect in year 1; ≈ +0.20 SD in year 2** for high school — about 8 percentile points, achieved only after schools learned to implement. The What Works Clearinghouse (June 2016 intervention report) rated Cognitive Tutor Algebra I as having **mixed effects on algebra achievement** (one significant positive, one substantively important positive, three indeterminate across qualifying studies) and no discernible effects on general mathematics. The synthesis's "+0.04 weighted effect at scale" figure is consistent with the WWC's small pooled improvement index but **PARTIALLY VERIFIED** — see flag in §G; the safe, fully verified formulation for the chapter is: "WWC 2016: mixed effects, modest in magnitude; Pane et al. 2014: null year 1, ~+0.20 year 2." Teaching point: this is the *ceiling* of evidence maturity in the field — and it is modest, implementation-dependent, and took 20 years. Now read a conversational-tutor product page claiming transformation in one semester.
**Sources:** Pane, Griffin, McCaffrey & Karam (2014), *EEPA* 36(2); WWC Cognitive Tutor® Intervention Report, June 2016 (ies.ed.gov/ncee/wwc/Docs/InterventionReports/wwc_cognitivetutor_062116.pdf).

### Case 2: The Bastani endpoint table as an evidence-reading exercise
Reused from Weeks 1–2 but re-read at Week 4 depth: n≈1,000 students, three Turkish high schools, 9th–11th grade math, within-school randomization; assisted endpoints (+48%/+127%) vs. unassisted exam (−17%/≈0). New Week 4 details: error propagation as evidence of copying (GPT Base's arithmetic/logic errors appeared in student work — students weren't checking outputs); a PNAS correction (August 2025) clarified an author affiliation, core findings unchanged — itself a teachable artifact about what corrections do and don't mean. The study is the field's clearest demonstration of why endpoint choice *is* the finding.
**Sources:** Bastani et al. 2025, *PNAS* 122(26) (pnas.org/doi/10.1073/pnas.2422633122); SSRN preprint 4895486; Knowledge at Wharton coverage.

### Case 3: ESSA tiers in the wild — the certification economy
Digital Promise operates a formal "Evidence-Based EdTech: ESSA Tier 3" product certification; the U.S. ED's 2023 EdTech Evidence Toolkit was created because districts could not parse vendor evidence claims; industry analyses note vendors cluster at Tier 3 because correlational designs are achievable on product timelines. A graduate student can be asked to find any major AI tutoring product's evidence page and tier it — most land at Tier 4 with aspirations.
**Sources:** digitalpromise.org product certifications; EdWeek Market Brief (May 2023) on the ED toolkit; LSE Impact blog (2026-03-27) "Three red flags for 'evidence-based' EdTech."

### Failure case: LAUSD's "Ed" chatbot and the AllHere collapse (2024)
Los Angeles Unified — the second-largest U.S. district — launched "Ed," an AI student advisor/chatbot built by startup AllHere, in spring 2024 (~$6M contract, part of a heavily publicized AI strategy). Within roughly three months of the splashy launch, AllHere's founder/CEO departed, most staff were furloughed, the company collapsed into insolvency, and a former employee publicly warned that the system's handling of student data did not match what was promised. The district had procured on demo quality and vision, not on outcome evidence or sustainability diligence; no causal evaluation of Ed's learning impact ever existed. This is the chapter's institutional-scale failure: the procurement decision was structurally identical to the student error in the opening case — ranking by market visibility instead of evidence. (Widely reported June–July 2024: The 74, EdWeek, LA Times. Details verifiable; treat specific contract figures as "reported.")

---
## C. Connections and dependencies

**Prerequisites:** Chapter 1 (the three-condition table; assisted vs. unassisted as different measurements — Ch4 formalizes this into endpoint literacy); Chapter 2 (the crutch mechanism that makes unassisted endpoints non-negotiable); Chapter 3 (the pattern catalog and the three RCT architectures — Ch4 teaches how much weight those three studies can actually bear, including the "exploratory" label on LearnLM and the market-visibility ≠ evidence-maturity caution introduced with Khanmigo/MATHia/Duolingo Max).

**Unlocks:** Every Evidence Box in Acts Two and Three is read with Week 4 eyes. Specifically: Ch5 (deskilling as "warning signal, not causal claim" is a Week 4 epistemic category), Ch7 (the 30–50%/15–25% adaptive-learning claims vs. the +0.04-at-scale caution — direct reuse of the Cognitive Tutor calibration), Ch9 (AI-vs-teacher feedback parity claims rejected on Week 4 standards), Ch12 (agentic principles labeled "inference from policy, not experimental canon"), and above all Ch14 (the evaluation chapter is Week 4 run in reverse: instead of reading endpoints, the student designs them; the durability gap returns as a reporting obligation and the "two-register qualified conclusion").

**Adjacent chapter connections:** From Ch3: the student arrives believing the field has "three defining RCTs"; Ch4 reframes — three good studies *is* the field, and that is the point. To Ch5: the bridge is deliberate — having learned to read everyone else's claims, the student turns the same skepticism on the AI in their own design workflow, where the evidence (Moore et al.) is one semester-length course experiment and the deskilling concern is exactly the kind of un-evidenced-but-asymmetric risk the three-bucket discipline was built for.

---
## D. Current state of the field

**Settled:**
- The causal evidence base is thin relative to deployment: ~20 high-quality causal studies among 800+ (now 1,100+) papers (SCALE 2026), corroborated independently by meta-reviews of reviews (Han et al. 2025; Zhang, Deng & Shadiev 2026).
- Assisted and unassisted endpoints can diverge, including in sign (Bastani 2025, PNAS) — so assisted-only evaluations cannot detect crutch effects.
- Education effect sizes require field-specific benchmarks (Kraft 2020); Cohen's labels mislead in this literature.
- The best-evidenced adaptive tutor at scale shows modest, implementation-dependent effects (Pane et al. 2014; WWC 2016 "mixed effects").
- No rigorous longitudinal evidence exists on multi-year AI-mediated learning effects, in either direction.

**Contested or emerging:**
- Whether guardrailed LLM tutors can match or beat well-implemented active learning (Kestin et al. 2025 says yes, short-term, in physics; replication and durability open).
- How to tier/credential edtech evidence without the tiers themselves being gamed (ESSA-label inflation; certification economy).
- Whether the SCALE-style causal-only census undercounts useful design knowledge from qualitative/design-based research (a live methodological argument worth presenting fairly — the book's position: design knowledge ≠ outcome claims, both have uses, only one supports vendor outcome language).
- The exact pooled magnitude of cognitive-tutor effects (mixed-effects rating vs. single-number summaries — see flag).

**Key references:**
1. Stanford SCALE Initiative (2026). *The Evidence Base on AI in K-12: A 2026 Review.* scale.stanford.edu.
2. Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). "Generative AI without guardrails can harm learning: Evidence from high school mathematics." *PNAS* 122(26), e2422633122.
3. Kraft, M. A. (2020). "Interpreting Effect Sizes of Education Interventions." *Educational Researcher* 49(4), 241–253.
4. Pane, J. F., Griffin, B. A., McCaffrey, D. F., & Karam, R. (2014). "Effectiveness of Cognitive Tutor Algebra I at Scale." *EEPA* 36(2); plus WWC Cognitive Tutor Intervention Report (June 2016).
5. Zhang, L., Deng, X., & Shadiev, R. (2026). "A Meta-Review of Generative AI in Education: Synthesizing Findings from Systematic Reviews." (SAGE; 35 reviews, PRISMA).

**Recent developments (last 3 years):** SCALE's evidence repository and 2026 review institutionalized the "causal census" genre; the PNAS publication (June 2025) of Bastani et al. moved the guardrails finding from working paper to the field's most-cited causal anchor (with an August 2025 affiliation correction, findings unchanged); Kestin et al. (*Scientific Reports*, 2025) supplied the strongest "well-designed AI tutoring works" counterweight, immediately critiqued for its ~2-week horizon; the U.S. ED EdTech Evidence Toolkit (2023) and Digital Promise certifications professionalized — and commercialized — evidence labeling; the LAUSD/AllHere collapse (mid-2024) became the canonical procurement-without-evidence cautionary tale.

---
## E. Teaching considerations

**Where students get stuck:**
- *Cynicism overshoot:* after the 20-in-800 reveal, students flip from credulity to "nothing is known, so my judgment is as good as anything." The three-bucket discipline exists precisely to prevent this; grade for calibrated claims, not maximal doubt.
- *Effect-size inversion:* students who just learned Kraft's benchmarks start treating +0.04–0.20 as "basically nothing" anyway, because percentile translations feel small. Anchor to cost/scale: a cheap +0.08 at full scale can beat an expensive +0.4 boutique intervention.
- *Endpoint vocabulary slippage:* "transfer" gets used for any unassisted measure. Enforce the four-column table (assisted / unassisted / transfer / retention) in every Evidence Brief.
- *The "exploratory" label:* students read it either as disqualifying or as ignorable. Teach it as a precision instrument: it states what the study licenses (hypothesis worth a confirmatory trial) and what it doesn't (a deployment warrant).

**Analogies and framings that work:**
- *Pharma framing:* vendor pages are direct-to-consumer drug ads; ESSA tiers are the approval pipeline; the durability gap is "no one has run the five-year safety trial, and everyone is already prescribing." (Use with care — students enjoy it enough to over-extend it.)
- *"The market ranked them the other way"* — the opening case generalizes into a slogan: evidence maturity and market visibility are not just uncorrelated, they can be inversely correlated, because evidence accumulates slowly and marketing doesn't wait.
- *The missing column:* every evaluation table the course shows from now on gets mentally checked for the unassisted and retention columns. By Week 14 this is reflexive.
- *Design intent vs. outcome:* a product page is a blueprint review, not an inspection report.

**Exercises that build the target skill:**
1. (Analyze) **Vendor-page autopsy:** take one real AI tutor product page; produce a three-column deconstruction (interaction design claims / outcome claims / borrowed evidence), each row tagged with the ESSA tier the available support would earn. Deliverable feeds the midterm.
2. (Evaluate) **Endpoint audit:** given the methods sections of Bastani 2025, Kestin 2025, and one vendor white paper, complete the four-endpoint table for each and write a 150-word "what this licenses" verdict per study. (Bloom: Evaluate.)
3. (Evaluate/Create) **Three-bucket memo:** for the Track A statistics tutor (or Track B project), bucket five proposed features into decide/pilot/decline with one evidence citation or one named gap per decision — the Week 4 rehearsal of the Week 11 guardrail spec. (Bloom: Evaluate, edging Create.)
4. (Apply) **Effect-size translation drill:** convert g = 0.04, 0.20, 0.79 into improvement-index percentiles and into Kraft-benchmark language; then defend which you'd fund given stated costs. (Bloom: Apply/Evaluate.)

---
## F. Library files relevant to this chapter

- **_lib_Science_Fictions.md** (Ritchie) — fraud, bias, negligence, and hype in published science; the chapter's deep background on why a 780/800 ratio of weak papers is normal science-system behavior, not an AI-education anomaly; the hype chapter maps directly onto vendor-claim deconstruction.
- **_lib_Calling_Bullshit.md** (Bergstrom & West) — the working toolkit for claim autopsy: selection effects, goodharted metrics, misleading denominators; their "if a claim seems too good, find the comparison group" heuristic is the midterm's spine.
- **_lib_Randomistas.md** (Leigh) — why RCTs earn Tier 1 status, with history; supplies the chapter's positive case for causal designs without statistics prerequisites.
- **_lib_The_Digital_Delusion_-_Jared_Cooney_Horvath.md** — EdTech efficacy skepticism including the 0.40-hinge argument; useful as a counterpoint to Kraft (two incompatible benchmark cultures — productive classroom argument).
- **_lib_The Digital Delusion Counter.md** — the rebuttal essay; pair with the above so students see benchmark disputes are themselves arguable, which IS effect-size literacy.
- **ai_lxd_definitive_synthesis.md** — primary grounding: §"Central Pattern" (20-in-800), §2 (RCT table), §7 (durability gap), production-systems caution.
- **experience_design_edtech_merged_synthesis.md** — companion-volume evidence-discipline framing; continuity for two-course-sequence students.

---
## G. Gaps and flags

- **FLAG (load-bearing number): the "+0.04 weighted effect" for Cognitive Tutor Algebra I.** The TikTOC opening and synthesis both use it. Direct verification against the WWC June 2016 report retrieved "mixed effects on algebra" (1 significant positive, 1 substantively important positive, 3 indeterminate) and could not confirm the +0.04 figure verbatim in search results. The figure is *plausible* as the WWC pooled effect/improvement-index conversion but must be checked against the PDF (ies.ed.gov/ncee/wwc/Docs/InterventionReports/wwc_cognitivetutor_062116.pdf) before print. Fallback wording that is fully verified: "WWC (2016): mixed, modest effects; Pane et al. (2014): null in year 1, ≈ +0.20 SD in year 2."
- **FLAG (attribution): "Han et al. 2025."** The synthesis cites Han et al. 2025 as the meta-review-of-reviews; web verification surfaced a closely matching 35-review PRISMA meta-review attributed to Zhang, Deng & Shadiev (2026, SAGE) and a separate "A Systematic Review of Generative AI in Education" (2024/2025). Multiple convergent reviews exist — the *claim* is safe — but the chapter's Evidence Box should pin the exact citation(s) before print. Do not cite "Han et al." without resolving.
- **FLAG (single-source class): SCALE's "no high-quality causal studies of student AI use in U.S. K-12 classrooms."** Striking and quotable; it is one organization's census with explicit inclusion criteria. Present with the criteria, not as a bare fact.
- **GAP: no settled framework for "evidence-tiering" interaction-design claims** (as opposed to outcome claims). The chapter's design-claim/outcome-claim split is the book's own synthesis move — defensible, but a reviewer may ask for precedent; the closest neighbors are the ED toolkit's claim-type one-pagers.
- **FLAG (reported, not academic): LAUSD/AllHere figures.** Contract value (~$6M), timeline, and whistleblower details are journalism (The 74, EdWeek, LA Times, mid-2024), solid but evolving; label "as reported" and recheck before print.
- **GAP: durability evidence may be arriving.** Today is June 2026; first multi-semester follow-ups of 2024-cohort deployments could land during production. The chapter's "zero longitudinal studies" line is the book's most falsifiable sentence — wire it to the edition-trigger protocol (TikTOC Risk 3/Part 11).
- **FLAG: two-sigma (Bloom 1984) appears in nearly every vendor deck.** The chapter should pre-bunk it (VanLehn 2011: human tutoring ≈ d 0.79; ITS ≈ 0.76) — included in §A.4 but easy to lose; it is the single most common borrowed-evidence move students will encounter professionally.
