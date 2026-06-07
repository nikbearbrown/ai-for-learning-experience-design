# Research Notes: Chapter 07 — Adaptive Systems: From Pacing to Personalization
**Source:** TIKTOC.md chapter entry
**Notes file:** 07-adaptive-systems_notes.md
**Corresponding chapter:** chapters/07-adaptive-systems.md (not yet written)
**Generated:** 2026-06-07
---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn the adaptive modeling layer at design-literacy depth — IRT, knowledge tracing, LLM-generated variation — and the critical distinction between individualizing pacing and personalizing support.

**Learning outcomes:**
1. (Understand) Explain what IRT, Bayesian Knowledge Tracing, and LLM-based adaptation each model, and what each cannot know about the learner.
2. (Analyze) Distinguish pacing individualization from genuine personalization of support — and classify a provided system.
3. (Evaluate) Weigh the headline adaptive-learning claims (30–50% time reduction, 15–25% outcome gains) against their boundary conditions: structured domains, well-resourced contexts, and the +0.04 at-scale caution.
4. (Evaluate / Track B) Decide whether their project warrants an adaptive layer at all, and specify it if so.

**Opening:** Two systems both marketed as "personalized." One adjusts the speed at which identical content arrives. One changes what support arrives based on the misconception in the learner's last answer. Same word, different machines.

**Core content:** The modeling stack at design depth; pre-authored branching vs. model-based adaptation; the Cao et al. review and its concentration caveats; ADDIE-RAD hybrid method; the interpretive support layer framing vs. automated traffic control.

**Bridge:** Every adaptive system routes. Next week: what routing does to the learners the system was sold as helping.

---

## A. Conceptual foundations

### 1. Item Response Theory at design-literacy depth

IRT is the psychometric foundation under most adaptive assessment and many adaptive learning systems. The core idea: a learner's probability of answering an item correctly is a function of two things measured on the same scale — the learner's latent ability (conventionally θ, theta) and the item's difficulty (conventionally b). Plot probability-correct against ability and you get the item characteristic curve: an S-shaped (logistic) curve that rises from near-zero (learners far below the item's difficulty) to near-one (learners far above it). Where the curve sits left-right is difficulty; the item's b parameter is the ability level at which a learner has a 50% chance of success.

The model family adds parameters as needed. The one-parameter model (1PL, equivalent to the Rasch model, Rasch 1960) uses difficulty only. The 2PL adds discrimination (a) — how steeply the curve rises, i.e., how sharply the item separates learners just below from just above its difficulty. The 3PL adds a guessing floor (c) — the nonzero probability that a low-ability learner gets a multiple-choice item right by chance. Foundational treatments: Lord (1980), *Applications of Item Response Theory to Practical Testing Problems*; Rasch (1960).

What IRT buys an adaptive system: items and learners on a common scale, so the system can pick the next item whose difficulty maximizes information about the learner's ability — this is computerized adaptive testing (CAT), and it is why an adaptive placement test (e.g., ALEKS placement, Duolingo English Test) can locate a learner in 25–30 questions instead of 100. Estimates update after every response.

What IRT cannot know — and this is the design-literacy payload, per Learning Outcome 1: θ is a *scalar position on a single latent dimension*. IRT does not know *why* the learner missed the item, *which* misconception produced the wrong answer, whether the learner is anxious, bored, fatigued, guessing strategically, or working in a second language. Two learners with identical θ can have entirely different knowledge gaps. A system built on IRT alone can individualize *difficulty* with great precision while knowing nothing usable for personalizing *support*. This single limitation explains most of the pacing/personalization gap in Concept 4.

**Common misconception:** "The adaptive system knows what the student knows." It estimates where the student sits on one difficulty-ordered dimension. The feeling of being 'read' by an adaptive test is real but the underlying representation is closer to a thermometer reading than a diagnosis.

**Worked example:** The Track A statistics tutor presents an item on interpreting a confidence interval (b = 0.8, moderately hard; a = 1.6, sharply discriminating). A learner with current θ-estimate 0.2 misses it. The IRT layer revises θ downward and selects an easier next item. What it cannot do: notice that the learner's wrong answer was the classic "95% of the data falls in the interval" misconception — which a misconception-aware support layer (or a human) would treat not with an easier item but with a targeted contrast. Designers should be able to point at this moment in any system they audit: the place where difficulty adjustment is happening and support adjustment is not.

**Source(s):** Lord (1980); Rasch (1960); ALEKS knowledge-space placement documentation (aleks.com/about_aleks/knowledge_space_theory — 25–30 question adaptive assessment); synthesis §3; arXiv 1803.05926 (IRT–BKT relations).

### 2. Bayesian Knowledge Tracing — the four-parameter learner model

BKT (Corbett & Anderson 1995, *User Modeling and User-Adapted Interaction* 4, 253–278 — verified) is the canonical learner model of the intelligent-tutoring tradition, used in Carnegie Learning's Cognitive Tutor/MATHia lineage for three decades. Where IRT estimates a continuous ability, BKT models each *skill* (knowledge component) as a binary latent state — mastered or not — and updates the probability of mastery after every practice opportunity. It is statistically a two-node hidden Markov model with four parameters per skill:

- **P(L0)** — prior probability the skill was already known before practice
- **P(T)** — probability of transitioning from unmastered to mastered at each opportunity
- **P(G)** — probability of a correct answer despite non-mastery (guess)
- **P(S)** — probability of an incorrect answer despite mastery (slip)

After each response, Bayes' rule updates P(mastery); when it crosses a threshold (0.95 in the Cognitive Tutor tradition), the system treats the skill as mastered and moves on. This is the machinery behind "mastery learning at scale" — and behind every "skills remaining" progress bar in that product family.

Design-literacy limitations: (a) standard BKT has *no forgetting* — once mastered, always mastered, which is psychologically false and matters for spacing design; (b) skills are binary, so partial understanding is invisible; (c) the whole edifice depends on a human-authored *knowledge component model* — the mapping of items to skills — and a bad KC model produces confidently wrong mastery estimates; (d) parameters suffer identifiability problems (different parameter sets can fit the same data — van de Sande, *JEDM*), so the "interpretable" parameters are less solid than they look; (e) like IRT, BKT sees only correctness, not the content of errors.

Deep Knowledge Tracing (Piech et al. 2015, NeurIPS — verified) replaced the HMM with an LSTM ingesting the whole response sequence, reporting much higher predictive accuracy (~0.86 AUC vs. ~0.67 for BKT on the ASSISTments benchmark). Two corrections matter for honest teaching: subsequent work found data-quality problems in the original evaluation (duplicate records in ASSISTments — Xiong et al. 2016, EDM) and showed that classical models with principled extensions (forgetting, item difficulty, individual ability) close most of the gap (Khajah, Lindsey & Mozer 2016, "How Deep Is Knowledge Tracing?", EDM). And DKT's hidden state is opaque: it predicts next-answer correctness but yields no human-interpretable mastery estimate per skill (Scruggs, Baker & McLaren, ICCE 2020; arXiv 2101.11335). For a designer deciding what a routing decision can be *justified by*, the interpretability difference between BKT and DKT is not academic — it determines whether a teacher can be shown *why* the system thinks a learner hasn't mastered a skill. This connects directly to Chapter 8's visible/revisable-routing counter-pattern.

**Common misconception:** "Deeper models trace knowledge better, so use the neural one." The DKT accuracy advantage shrank substantially under re-evaluation, and the cost — losing the interpretable per-skill mastery estimate — lands exactly where the equity audit (Ch 8) and the teacher-facing explanation (Ch 11) need interpretability most.

**Worked example:** Track A stats tutor, skill = "choose the correct hypothesis test." P(L0)=0.2, P(T)=0.15, P(G)=0.25, P(S)=0.1. A learner answers correct, correct, incorrect, correct. Walk the Bayesian update at each step (the chapter can show the arithmetic in a sidebar) — P(mastery) climbs, dips on the error, recovers; the system holds the learner in practice until 0.95. The design questions to ask of the worked numbers: who set the 0.95 threshold and why; what happens to the learner for whom P(T) is mis-estimated low (answer: over-practice — the remedial-loop seed Ch 8 harvests); and what the model would say about a learner who is mastering the *wrong generalization* but answering correctly (nothing).

**Source(s):** Corbett & Anderson (1995) — verified via ACT-R publications archive and Springer; van de Sande, *JEDM* (BKT properties/identifiability); Piech et al. (2015) — verified; Khajah, Lindsey & Mozer (2016); Xiong et al. (2016); Scruggs, Baker & McLaren (2020); arXiv 2101.11335 on DKT interpretability.

### 3. LLM-based adaptation — generation is solved, learner modeling is not

The newest layer of the stack uses LLMs to generate varied explanations, hints, worked examples, and practice items on demand instead of drawing from pre-authored banks. This changes the economics of adaptivity: classical adaptive systems could only *select* among authored content, so adaptivity was bounded by authoring budget; LLM generation makes the content space effectively unbounded. The serious design question is what *drives* the generation — and here the 2025–2026 evidence is cautionary in a specific way.

Two architectures must be distinguished. (1) **LLM as generator on top of a classical learner model**: IRT/BKT (or a knowledge graph) maintains the learner state; the LLM renders the next intervention (an explanation at the right level, a fresh isomorphic problem). This keeps the auditable learner model and adds generative flexibility; hallucination risk attaches to content (mitigable with retrieval-augmented generation and human review pipelines). (2) **LLM as the learner model itself**: the model is asked to infer mastery from the dialogue. Recent empirical work finds LLMs are unreliable knowledge tracers — they fail to match DKT-level predictive performance and produce unstable mastery estimates and even directionally wrong updates, because they construct no explicit, persistent model of evolving learner knowledge (2025 reviews of LLM agents for education, arXiv 2503.11733; neural-symbolic KT work, arXiv 2604.08263; LLM-KT systematic review, arXiv 2412.09248). The emerging research response is hybrid/neural-symbolic systems and multi-agent architectures with a centralized learner model (e.g., IntelliCode, arXiv 2512.18669).

For the designer the takeaway is a clean decision rule: *use LLMs to vary what the learner sees; be deeply skeptical of LLMs deciding what the learner knows.* The chapter should also flag content-quality risk: generated practice items need a validation pipeline (Ch 9 takes this up as the judgment bottleneck).

**Common misconception:** "ChatGPT adapts to the student, so it's an adaptive learning system." A chat model adapts to the *conversation* — it has no persistent, calibrated estimate of the learner's skill state, no mastery thresholds, no curriculum model. Conversational responsiveness is not learner modeling.

**Worked example:** The Track A tutor's adaptivity decision (Design Lab #3): keep BKT as the learner model over the stats KC model; use an LLM to (a) generate isomorphic practice problems when a learner needs more opportunities on an unmastered skill, with an instructor-review queue for new items, and (b) rephrase the canonical explanation at three reading levels. Explicitly declined: letting the LLM revise mastery estimates from chat transcripts — unstable per the 2025 evidence, and unauditable for the Ch 8 routing audit.

**Source(s):** arXiv 2503.11733 (LLM Agents for Education: Advances and Applications, 2025); arXiv 2412.09248 (KT + LLMs systematic review); arXiv 2604.08263 (neural-symbolic KT); arXiv 2512.18669 (IntelliCode); synthesis §3.

### 4. Pacing individualization vs. personalization of support — the chapter's load-bearing distinction

The opening's "same word, different machines" contrast is real and sourced. Brookings ("What the research shows about generative AI in tutoring") and the National Student Support Accelerator distinguish platforms that *individualize* — students progress through pre-structured content at different rates, with difficulty fine-tuned — from platforms that *personalize* — the type of support changes in response to the learner's reasoning, misconceptions, interests, and context. Most products marketed as "personalized learning" are individualized pacing engines: same content, same sequence logic, different speed. Genuine personalization of support requires knowing something IRT/BKT cannot represent (see Concepts 1–2): the *content* of the learner's thinking.

The synthesis frames the design target as an **interpretive support layer, not an automated traffic controller**. A traffic controller routes flow efficiently given positions; an interpretive layer asks what the learner's last answer *means* and changes the support accordingly. The honest current state: classical models do traffic control well; misconception-responsive support is exactly where LLMs could in principle help (they can read the wrong answer) and where their learner-modeling unreliability (Concept 3) currently bites. This tension — the layer that could personalize is the layer least trustworthy to route — is a productive discussion engine for the seminar.

Design implication for Outcome 2: give students a classification probe set. Ask of any system: (a) Can two learners at the same performance level ever receive *different kinds* of support? (b) Does any system response depend on *which wrong answer* was given, or only on wrongness? (c) Does anything other than speed and difficulty change? Three no's = pacing individualization, whatever the marketing says.

**Common misconception:** "Adaptive = personalized." Adaptivity is a mechanism (system state changes in response to learner data); personalization is a claim about *what* adapts. Pacing-only adaptivity is still adaptivity — and can still be valuable — but selling it as personalization conceals what the system cannot do.

**Worked example:** Two real-ish systems side by side (the chapter opening): System A (ALEKS-style) — knowledge-space model selects the next topic the learner is "ready to learn"; content itself is fixed; what varies is sequence and timing. System B (a misconception-aware tutor) — a wrong answer matching a known misconception triggers a targeted contrasting case rather than an easier item. Have students locate each on the individualization↔personalization axis and identify the learner-model feature that makes the difference (topic-readiness state vs. error-content interpretation).

**Source(s):** Brookings, "What the research shows about generative AI in tutoring" (brookings.edu); National Student Support Accelerator materials on personalizing tutoring sessions (nssa.stanford.edu); synthesis §3 (NSSA/Brookings flag; interpretive-support-layer framing).

### 5. Headline gains and their boundary conditions — reading the adaptive-learning evidence

Outcome 3 requires holding three numbers in tension. (a) The **headline claims**: the Cao, Nhu Tam Mai & Guo review (2025, *International Journal of Education and Humanities* 20(2), 173–182 — existence verified; the specific 30–50% time-reduction / 15–25% outcome-gain figures are taken from the book's synthesis and could not be independently confirmed in the abstract — see Flag G1) synthesizing 2019–2025 literature, reporting large time reductions and outcome gains. (b) The **concentration caveat** carried by the same review per the synthesis: effects concentrate in structured domains (math, language, coding) and well-resourced implementation contexts. (c) The **at-scale caution**: What Works Clearinghouse evidence for Cognitive Tutor Algebra I — the best-researched adaptive system in existence — nets out at a weighted effect size of **+0.04** across qualifying studies ("potentially positive effects"). Older ITS meta-analyses report much larger effects in controlled settings (VanLehn 2011 puts ITS at d ≈ 0.76, near human tutoring; Kulik & Fletcher 2016 ≈ 0.66), which is precisely the gap to teach: *efficacy in controlled studies vs. effectiveness at implementation scale.* The Cao figures and the +0.04 are not contradictory data points about the same quantity — they are measurements taken at different distances from real classrooms, and the +0.04 is the one taken closest.

This is also where the chapter teaches the *decision* (Outcome 4): an adaptive layer is warranted when the domain is well-structured with a defensible KC model, practice volume is high enough for models to calibrate, the cost of mis-routing is low or audited (Ch 8), and the alternative is one-pace-fits-all instruction at scale. It is not warranted for small cohorts, ill-structured domains (design critique, essay writing), or where the "adaptivity" on offer is pacing-only and the pedagogy needs support-personalization.

**Common misconception:** "The 30–50% claims were debunked by the +0.04 finding." Neither debunks the other; they measure different implementations at different scales in different conditions. The design skill is locating any vendor claim on that efficacy-to-effectiveness distance scale — Week 4's three-bucket discipline applied to adaptivity.

**Worked example:** A vendor pitch for the Track A course claims "students master statistics in half the time." Deconstruction: which studies, what domain, what comparison condition (traditional lecture is a low bar), what implementation support, and what would the claim predict for *this* deployment given the WWC at-scale caution? Output: a pilot-measurement requirement (Week 14 connection) rather than acceptance or rejection.

**Source(s):** Cao et al. (2025) — drpress.org/ojs/index.php/ijeh/article/view/31572 (verified to exist; figures flagged); WWC Cognitive Tutor evidence via synthesis §2 (+0.04); VanLehn (2011, *Educational Psychologist*); Kulik & Fletcher (2016, *Review of Educational Research*); synthesis §3.

---

## B. Domain examples and cases

### Case 1 — ALEKS: knowledge space theory as a third modeling tradition
ALEKS (McGraw Hill) is built not on IRT or BKT but on Knowledge Space Theory (Doignon & Falmagne): the domain is modeled as a network of feasible "knowledge states" (sets of topics a learner can plausibly know together, respecting prerequisite structure), and an adaptive Markovian assessment locates the learner's state in roughly 25–30 questions, then offers only topics the learner is "ready to learn." Useful in the chapter as (a) a concrete, well-documented placement/adaptive system students may have used, (b) a clean example of *pacing/sequence individualization* — content is fixed, the path varies — and (c) a reminder that the modeling stack has more than two traditions. A 2021 *Journal of Mathematical Psychology* paper ("A practical perspective on knowledge space theory: ALEKS and its data") documents the system's data-grounded practice. Independent causal evidence on learning outcomes (as opposed to placement validity) is thinner than the deployment scale suggests — useful for the Week 4 callback.
**Source(s):** aleks.com/about_aleks/knowledge_space_theory; ScienceDirect S0022249621000134; MDPI *Education Sciences* 11(10):603 (student perception/SRL study).

### Case 2 — Carnegie Learning MATHia / Cognitive Tutor: the best-evidenced system and the smallest at-scale number
Twenty-plus years of cognitive-tutor research (Anderson's ACT-R lineage, BKT mastery learning); WWC rating "potentially positive," weighted +0.04 at scale. The instructive pairing: the deepest research pedigree in the field produces the most modest honest effect estimate — because it has been measured most honestly, at the largest scale, in the messiest real conditions. Now integrating LLM-based conversational explanation on top of the classical learner model (the Concept 3 architecture (1) pattern).
**Source(s):** synthesis §2; WWC Cognitive Tutor Algebra I review.

### Case 3 — Squirrel AI: scale without independent evidence
Chinese adaptive-learning company operating at large scale (millions of learners; thousands of learning centers), built on fine-grained knowledge decomposition and what the company describes as its adaptive engine. Appears in peer-reviewed mediation studies of platform characteristics (e.g., 2025 study of 625 learners across Knewton/ALEKS/Squirrel AI users) but most effectiveness claims trace to company-run comparisons; independent, peer-reviewed causal evidence at Western-journal standards remains thin. Teach as a live example of evidence-state reading (Week 4 skills applied to Week 7 subject matter): scale and sophistication of the modeling stack are real; the causal evidence does not yet match the marketing.
**Source(s):** PMC12580086 (2025, platform-characteristics mediation study); synthesis §2 caution on market visibility ≠ evidence maturity. FLAG: company-sourced claims — see G5.

### Failure case — Knewton: "a robot tutor in the sky," $180M in, <$17M out
Knewton founder Jose Ferreira described the product as "a robot tutor in the sky that can semi-read your mind and figure out where your strengths and weaknesses are down to the percentile" (NPR, 2015). The company raised over $180 million in venture capital on hyper-personalization claims; industry analyst Michael Feldstein publicly called the claims "selling snake oil." In May 2019 Wiley acquired Knewton's assets in a deal industry math put at under $17 million (Wiley reported $73M for the quarter's acquisitions including zyBooks). Diagnosis for the chapter: the gap between what the modeling stack could actually do (IRT-family proficiency estimation and content sequencing — pacing individualization) and what was claimed (mind-reading personalization) is exactly the Concept 4 distinction; the market eventually priced the difference. This is the chapter's cautionary spine and pairs with Ch 4's vendor-claim deconstruction.
**Source(s):** NPR "Meet The Mind-Reading Robo Tutor In The Sky" (2015); Inside Higher Ed, "Wiley buys Knewton" (May 7, 2019) and "Knewton Is Gone. The Larger Threat Remains"; e-Literate (Feldstein), "Yes, I did say that Knewton is 'selling snake oil.'"

---

## C. Connections and dependencies

**Prerequisites:** Ch 4 evidence-state literacy (the three-bucket discipline is reused on adaptive-learning claims); Ch 6 tutoring interaction spec (the Week 6 spec is the artifact the Week 7 adaptivity decision attaches to — tutoring adapts within a conversation, adaptive systems adapt the path between conversations). From the learner profile: NO ML/statistics background assumed — Week 7 is explicitly the design-literacy treatment, not psychometrics (Out of Scope table: psychometrics at implementation depth is excluded).

**Unlocks:** Ch 8 directly — "every adaptive system routes"; the routing audit requires students to know what the learner model can and cannot see (an audit of an IRT-based router asks different questions than an audit of a DKT-based one, because interpretability differs). Ch 14 — subgroup evaluation and the assisted/unassisted endpoint discipline applied to adaptive systems. The Week 7 adaptivity decision is one of the Weeks 6–10 artifacts integrated into the Week 11 guardrail spec.

**Adjacent chapter connections:**
- **To Ch 6 (tutoring interactions):** the fading schedule designed in Week 6 is, formally, an adaptivity policy — support level as a function of estimated competence. Week 7 names the machinery that estimates competence and exposes its blind spots; a fading schedule keyed to a BKT mastery estimate inherits BKT's no-forgetting and KC-model assumptions.
- **To Ch 8 (algorithmic routing and equity):** Week 7 deliberately teaches the model layer *neutrally* — what θ and P(mastery) are — so Week 8 can land the inversion: the same machinery, fed historical performance data, becomes a tracking mechanism. The bridge sentence is the setup; the BKT worked example's "over-practice" branch is the planted seed.

---

## D. Current state of the field

**Settled:**
- The mathematics and behavior of IRT and BKT (mature psychometrics/EDM; decades of replication).
- Adaptive/ITS systems produce positive effects in structured domains under good implementation (multiple meta-analyses: VanLehn 2011; Kulik & Fletcher 2016).
- Effects at implementation scale are far smaller than controlled-study effects (WWC +0.04 for the best-studied system).
- DKT's original headline advantage over BKT was overstated (data issues; enhanced classical models close most of the gap), and DKT sacrifices interpretability.

**Contested or emerging:**
- Whether LLMs can serve as learner models at all — current evidence says no (unstable mastery estimates), but neural-symbolic and hybrid architectures are an active frontier (2025–2026 arXiv work).
- The true magnitude of adaptive-learning gains outside math/language/coding and outside well-resourced deployments — the Cao et al. figures are at the optimistic end and the review venue is low-prestige (Flag G1).
- Whether "personalization of support" (misconception-responsive adaptation) is achievable at scale, and whether LLM generation finally makes it economical — promising, unproven.
- ADDIE-RAD as a design methodology for adaptive systems — single-source (Cao et al.), better taught as "one proposed hybrid" than as an established method (Flag G4).

**Key references:**
1. Corbett, A.T. & Anderson, J.R. (1995). Knowledge tracing: Modeling the acquisition of procedural knowledge. *User Modeling and User-Adapted Interaction*, 4, 253–278. [verified]
2. Piech, C. et al. (2015). Deep Knowledge Tracing. *NeurIPS 2015*. [verified]
3. Khajah, M., Lindsey, R. & Mozer, M. (2016). How Deep Is Knowledge Tracing? *EDM 2016*. [verified — the corrective companion to Piech]
4. Cao, W., Nhu Tam Mai & Guo, W. (2025). Personalized Learning and Adaptive Systems. *International Journal of Education and Humanities*, 20(2), 173–182. [existence verified; headline figures flagged]
5. Brookings, "What the research shows about generative AI in tutoring" — the individualization/personalization distinction. [verified]

**Recent developments (last 3 years):**
- 2024–2026: systematic reviews of LLM + knowledge tracing (arXiv 2412.09248) and LLM agents for education (arXiv 2503.11733) converge on the generator-yes / learner-model-no split.
- 2025–2026: empirical findings that LLMs produce unstable mastery estimates and incorrect directional updates when used as knowledge tracers; neural-symbolic KT proposed as the responsible-learner-modeling response (arXiv 2604.08263).
- Major incumbent systems (MATHia, ALEKS ecosystem, Duolingo's Birdbrain) layering LLM explanation/conversation on top of classical learner models rather than replacing them — the architecture (1) pattern winning in production.
- Continued absence of longitudinal evidence on adaptive-system reliance effects (the book's durability gap applies here too).

---

## E. Teaching considerations

**Where students get stuck:**
- Math anxiety at the sight of θ, parameters, and Bayes — the chapter must keep the promise that this is design literacy, not psychometrics. Every formula needs a sentence-long English gloss and a design decision it serves. The Bayes update can live in a sidebar with arithmetic done for them.
- Conflating the three traditions: students merge IRT (continuous ability, item selection), BKT (binary skill mastery, practice gating), and knowledge spaces (state networks, topic readiness) into one vague "the algorithm." A comparison table — what is modeled, what updates it, what decision it drives, what it cannot see — is the chapter's most reusable artifact.
- The word "personalized" doing two jobs: students resist demoting pacing individualization because their own positive experiences (Duolingo, ALEKS) were pacing systems. Honor the value of pacing individualization explicitly — the point is truth in labeling, not contempt for pacing.
- Believing interpretability is an academic nicety: connect it forward concretely — "Week 8's audit and Week 11's teacher-override interface are impossible if no human can say why the system routed the learner."

**Analogies and framings that work:**
- **Thermometer vs. diagnosis** (IRT): a precise reading of one number vs. an account of what's wrong.
- **Thermostat vs. coach**: a thermostat adapts (genuinely!) but only on one variable; a coach changes the *kind* of intervention. Maps to traffic-controller vs. interpretive-support-layer.
- **GPS rerouting vs. driving instructor**: GPS individualizes the route using your position; it teaches you nothing about driving and doesn't know why you missed the turn. Bonus: GPS reliance degrading spatial memory echoes Ch 2's cognitive-debt theme.
- **"The progress bar is a probability"**: the mastery checkmark learners trust is P(mastery) > 0.95 under four estimated parameters and an authored skill map — useful for puncturing the objectivity aura before Week 8 needs it punctured.

**Exercises that build the target skill:**
1. (Understand) Given the three-tradition comparison table with cells blanked, fill in what each model represents, what updates it, and one thing it cannot know about the learner. — Bloom's: Understand.
2. (Apply) Hand-walk the four-parameter BKT update for a four-response sequence and state, at each step, what the system would do next and what a human tutor seeing the actual wrong answers might do differently. — Bloom's: Apply/Analyze.
3. (Analyze) Classification clinic: three anonymized product descriptions (one knowledge-space pacing system, one misconception-responsive tutor, one LLM chat product marketed as adaptive); classify each on the individualization↔personalization axis using the three probe questions, citing the learner-model feature that justifies the classification. — Bloom's: Analyze.
4. (Evaluate — Design Lab #3 / Track B) The adaptivity decision memo: does your project warrant an adaptive layer? Apply the Concept 5 decision rule; if yes, specify the learner model, what adapts, the validation pipeline for any LLM-generated content, and the Withdrawal Test answer (what does the learner's pacing/support look like when the adaptive layer is removed — can they self-sequence?). If no, defend the refusal against the vendor pitch. — Bloom's: Evaluate/Create.

---

## F. Library files relevant to this chapter

- **_lib_EdTech.md** — EdTech landscape research report; background on the adaptive-learning product landscape, vendor ecosystem, and hype cycles (Knewton context).
- **ai_lxd_definitive_synthesis.md** — primary grounding source; §3 (adaptive/personalized systems) is this chapter's spine, §2 for MATHia evidence maturity.
- **experience_design_edtech_merged_synthesis.md** — companion-volume synthesis; useful for the design-process side of the adaptivity decision (when adaptivity serves the journey map vs. replaces it).
- **_lib_AI_A_Guide_for_Thinking_Humans.md** (Mitchell) — optional: accessible grounding for "what models actually represent," supports the what-each-model-cannot-know outcome.
- **_lib_Weapons_of_Math_Destruction.md** (O'Neil) — optional pre-read here, primary in Ch 8: proxies and feedback loops, planted via the BKT over-practice branch.

---

## G. Gaps and flags

- **FLAG G1 — Cao et al. 2025 headline figures:** The 30–50% time-reduction / 15–25% gains figures appear in the book's synthesis attributed to this review, but could not be independently confirmed in the article abstract during this pass; the venue (*International Journal of Education and Humanities*, drpress) is low-prestige. The TOC builds Learning Outcome 3 around these numbers, so the chapter must cite them as "a 2025 review reports..." with the boundary conditions and the +0.04 caution attached, and the figures should be confirmed against the full text before publication. UNVERIFIED at figure level; verified at article-existence level.
- **FLAG G2 — d ≈ 0.76 ITS meta-analytic figure:** VanLehn (2011) is the standard citation; a search result attributed d = 0.76 to a meta-review without clean sourcing. Verify exact figure and source before using a number in the Evidence Box (Kulik & Fletcher 2016 report ≈ 0.66; VanLehn's human-tutoring benchmark is ≈ 0.79).
- **FLAG G3 — WWC +0.04:** carried from the synthesis; the chapter inherits it from Ch 4's opening. Confirm the current WWC intervention report figure for Cognitive Tutor Algebra I before print (WWC reports get revised).
- **FLAG G4 — ADDIE-RAD:** single-source method proposal (Cao et al. 2025). Teach as a proposed hybrid, not an established methodology; do not let it harden into "the field's method" in the chapter prose.
- **FLAG G5 — Squirrel AI:** effectiveness claims are largely company-sourced; independent causal evidence thin. If used as a case, the evidence-state framing is the point of the case.
- **GAP — domain coverage:** the TOC assigns language learning as a Ch 7 case domain; this pass gathered Duolingo material only thinly (Birdbrain is IRT-flavored; Duolingo Max is Ch 3 territory). A targeted pass on Duolingo's published learning-outcome research would strengthen the language-learning case.
- **GAP — no verified named example of a production *misconception-responsive* system** at scale for the System B side of the opening contrast; the chapter may need an "illustrative case" label there, or research into systems like ASSISTments' misconception remediation / Eedi's diagnostic-question bank (Eedi is conveniently already in the book via LearnLM — Eedi's misconception-tagged item bank could make System B real; verify before drafting).
