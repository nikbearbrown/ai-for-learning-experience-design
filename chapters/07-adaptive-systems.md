# Chapter 7 — Adaptive Systems: From Pacing to Personalization

## Learning Objectives

By the end of this chapter you will be able to:

1. **(Understand)** Explain what Item Response Theory, Bayesian Knowledge Tracing, and LLM-based adaptation each model about a learner — and, just as precisely, what each cannot know. *(Tracks A and B)*
2. **(Analyze)** Distinguish pacing individualization from genuine personalization of support, and classify a provided system using a three-question probe set. *(Tracks A and B)*
3. **(Evaluate)** Weigh the headline adaptive-learning claims — large time reductions and outcome gains — against their boundary conditions: structured domains, well-resourced contexts, and the at-scale caution from the best-studied system in existence. *(Tracks A and B)*
4. **(Evaluate/Create)** Decide whether your design-lab project warrants an adaptive layer at all, and specify it if so — including the case where the right answer is no. *(Track A: decision for the provided DataWise 101 learner data. Track B: decision for your own project, with project-specific evidence.)*

This week the course keeps a promise from the prerequisites map: no machine learning, statistics, or psychometrics background required. Every formula gets one line of math and a paragraph of English, and exists for one reason — so you can ask an adaptive system the only question that matters to a designer: *what do you actually know about my learner, and what are you only pretending to know?*

## Opening Case: Same Word, Different Machines

Two products are pitched to the same university in the same week. Both home pages say "personalized learning." Both demos are genuinely impressive.

**System A** gives every student a placement assessment of twenty-five to thirty questions, then maintains a live map of which topics the student has mastered and which they are "ready to learn." Students move through the same curriculum at radically different speeds; no two dashboards look alike. This is a real, well-documented architecture — it is how ALEKS works, built on Knowledge Space Theory (Doignon & Falmagne) rather than on either of the models you will meet below.

**System B** does something different. When a student answers a confidence-interval question with "95% of the data falls inside the interval," the system does not serve an easier question. It recognizes that *specific wrong answer* as a known misconception — the interval is about the parameter, not the data — and responds with a contrasting case built to collide with exactly that belief. *(This side of the contrast is an illustrative composite. Misconception-tagged diagnostic item banks of this kind exist — Eedi's diagnostic questions, which anchor the LearnLM trial you met in Chapter 3, are the closest production example — but a fully misconception-responsive adaptive system at scale is not yet a verified product category [verify].)*

Here is the design question the marketing language hides: System A never changes *what* a student sees — only when, and in what order. System B changes *what kind of support* arrives, based on what the student's error means. Both adapt. Both are sold with the same word. They are different machines, and by the end of this chapter you will be able to tell them apart from the outside.

## Prerequisites

You will need three capabilities from earlier weeks:

- **The three-bucket evidence discipline (Chapter 4):** sorting claims into "decide on current evidence," "pilot and measure," and "decline" — this week you apply it to adaptive-learning claims specifically.
- **Your Week 6 tutoring interaction spec:** the adaptivity decision attaches to it. Tutoring adapts within a conversation; an adaptive layer adapts the path between conversations. Your fading schedule from Week 6 is, formally, already an adaptivity policy — this week you meet the machinery that would drive it.
- **Comfort reading a probability statement** like "P(mastery) = 0.82" as a sentence, not a threat. No computation beyond arithmetic is required; one worked example does the arithmetic for you.

## Core Content

### 7.1 Item Response Theory: A Thermometer, Not a Diagnosis

Item Response Theory (IRT) is the psychometric foundation under most adaptive assessment and a large share of adaptive learning. The core idea fits in one sentence: the probability that a learner answers an item correctly depends on two numbers measured on the same scale — the learner's ability (written θ, "theta") and the item's difficulty (written *b*).

The simplest version, the one-parameter logistic model (equivalent to the Rasch model; Rasch 1960), says:

> P(correct) = 1 / (1 + e^−(θ − b))

In English: when your ability matches the item's difficulty exactly (θ = b), you have a 50% chance of getting it right. The further your ability sits above the difficulty, the closer your chance climbs toward certainty; the further below, the closer to zero. Plotted, this is an S-shaped curve. Richer variants add a discrimination parameter (how sharply the item separates learners just below from just above its difficulty) and a guessing floor (the chance a low-ability learner gets a multiple-choice item right anyway) (Lord 1980).

What this machinery buys an adaptive system is real and valuable: learners and items live on one common scale, so the system can always select the next item that tells it the most about the learner. That is computerized adaptive testing, and it is why an adaptive placement exam can locate a learner in twenty-five to thirty questions instead of a hundred, updating its estimate after every response.

Now the design-literacy payload — what IRT *cannot* know. Theta is a single number: a position on one difficulty-ordered dimension. IRT does not know *why* the learner missed the item. It does not know which misconception produced the wrong answer, whether the learner was anxious, fatigued, guessing strategically, or working in a second language. Two learners with identical θ can have entirely different gaps in their understanding. A system built on IRT alone can individualize *difficulty* with great precision while knowing nothing usable for personalizing *support*.

Hold onto the analogy: **IRT is a thermometer, not a diagnosis.** A precise reading of one number is genuinely useful — and it tells you nothing about what is wrong. So retire the misconception "the adaptive system knows what the student knows": the feeling of being *read* by an adaptive test is real; the underlying representation is a temperature.

**Design pattern this concept drives:** when auditing any system, find the moment a learner gives a *diagnostic* wrong answer. If the system's only possible response is "easier item," you are looking at the IRT ceiling — the exact place where difficulty adjustment is happening and support adjustment is not.

### 7.2 Bayesian Knowledge Tracing: Four Parameters and a Progress Bar

Where IRT estimates one continuous ability, Bayesian Knowledge Tracing (BKT) models each *skill* as a coin with a hidden state: mastered or not yet. It is the canonical learner model of the intelligent-tutoring tradition — the machinery inside Carnegie Learning's Cognitive Tutor/MATHia lineage for three decades (Corbett & Anderson 1995). Each skill carries four parameters:

- **P(L₀)** — the probability the learner already knew the skill before practice
- **P(T)** — the probability of *transitioning* to mastery at each practice opportunity
- **P(G)** — the probability of guessing right without mastery
- **P(S)** — the probability of slipping (answering wrong despite mastery)

After every response, Bayes' rule updates the probability of mastery. When it crosses a threshold — 0.95 in the Cognitive Tutor tradition — the system declares the skill mastered and moves on. Every "skills remaining" progress bar in that product family is this arithmetic wearing a friendly interface.

**A worked update, with the arithmetic done for you.** Take the DataWise 101 skill "choose the correct hypothesis test," with P(L₀) = 0.20, P(T) = 0.15, P(G) = 0.25, P(S) = 0.10. A learner answers: correct, correct, incorrect, correct.

1. *Start:* P(mastery) = 0.20.
2. *First correct answer.* Bayes asks: how likely is a correct answer from a master (0.90, since slips are rare) versus a non-master (0.25, the guess rate)? The evidence shifts belief to ≈ 0.47; then the learning-opportunity bump (P(T)) lifts it to **≈ 0.55**.
3. *Second correct.* Same logic from a higher prior: belief rises to ≈ 0.82, bumps to **≈ 0.84**.
4. *Incorrect.* A wrong answer from a probable master is most plausibly a slip — but slips are rare, so belief falls hard, to ≈ 0.42, recovering with the learning bump to **≈ 0.51**.
5. *Correct again.* Belief climbs back to **≈ 0.82**.

After four answers: 0.82. Below the 0.95 threshold — so the system assigns more practice. Now interrogate the numbers like a designer. *Who chose 0.95, and what does a learner's week look like at 0.94?* *What happens to a learner whose P(T) was estimated too low?* The model under-credits their learning, the threshold recedes, and they drill on — **over-practice**. File that branch away; Chapter 8 will show what it does at scale, and to whom. *And what does the model say about a learner mastering the wrong generalization while answering correctly?* Nothing. BKT sees correctness, never the content of thought.

The honest limitations list: standard BKT has **no forgetting** — once mastered, always mastered, which is psychologically false and matters for spacing design. Skills are binary, so partial understanding is invisible. The whole edifice rests on a human-authored *knowledge component model* — the mapping of items to skills — and a bad map produces confidently wrong mastery estimates. And the four "interpretable" parameters suffer identifiability problems: different parameter sets can fit the same data equally well (van de Sande, *JEDM*), so they are less solid than they look.

**What about the neural upgrade?** Deep Knowledge Tracing (Piech et al. 2015) replaced BKT's simple state machine with a recurrent neural network reading the learner's whole response history, and reported dramatically better prediction (~0.86 vs. ~0.67 AUC on a standard benchmark). Two corrections keep this honest. First, re-evaluation found duplicate records inflating the benchmark gap (Xiong et al. 2016), and classical models extended with forgetting, item difficulty, and individual ability close most of the remaining distance (Khajah, Lindsey & Mozer 2016, "How Deep Is Knowledge Tracing?"). Second, and decisive for designers: DKT's hidden state is opaque — it predicts the next answer but yields no human-readable per-skill mastery estimate (Scruggs, Baker & McLaren 2020). When Chapter 8 audits a routing decision, or Chapter 11 shows a teacher *why* the system holds a learner back, a BKT-backed system can answer; a DKT-backed one largely cannot. Interpretability is the precondition for accountability.

**Design pattern this concept drives:** *the progress bar is a probability.* Before granting any mastery indicator authority in your design — over pacing, over assessment windows, over what a teacher believes — name the threshold, the parameters, and the knowledge component map it depends on, and decide who gets to contest it.

### 7.3 LLM-Based Adaptation: Trust It to Vary, Not to Know

The newest layer of the stack uses large language models to *generate* adaptive content — varied explanations, fresh practice problems, hints at different reading levels — instead of selecting from pre-authored banks. This genuinely changes the economics: classical adaptivity was bounded by authoring budget; generation makes the content space effectively unbounded.

The serious design question is what *drives* the generation, and here the 2025–2026 evidence draws a sharp line between two architectures.

**Architecture 1 — LLM as generator on top of a classical learner model.** IRT, BKT, or a knowledge graph maintains learner state; the LLM renders the next intervention. The auditable model stays in charge of *what the learner needs*; the LLM supplies *the words and the variations*. Hallucination risk attaches to content — mitigable with retrieval grounding and human review (Chapter 9's validation bottleneck). This is the architecture the major incumbents — MATHia's conversational layer, the ALEKS ecosystem — are converging on in production.

**Architecture 2 — LLM as the learner model itself.** The model is asked to infer mastery from the conversation. Recent empirical work finds LLMs are unreliable knowledge tracers: they fail to match even DKT-level predictive performance, produce unstable mastery estimates, and sometimes update in the wrong direction — because a chat model constructs no explicit, persistent representation of evolving learner knowledge (LLM-and-knowledge-tracing systematic review, arXiv 2412.09248; LLM agents for education review, arXiv 2503.11733; neural-symbolic knowledge tracing, arXiv 2604.08263). The research frontier's own response is telling: hybrid neural-symbolic systems that bolt a real learner model back on.

The decision rule, clean enough to memorize: **use LLMs to vary what the learner sees; be deeply skeptical of LLMs deciding what the learner knows.**

And retire this misconception while you are here: "ChatGPT adapts to the student, so it's adaptive learning." A chat model adapts to the *conversation*. It has no calibrated estimate of skill state, no mastery thresholds, no curriculum model, and no memory of the learner that survives the context window. Conversational responsiveness is not learner modeling.

### 7.4 Pacing Versus Personalization: The Load-Bearing Distinction

Now the chapter's central distinction, and the resolution of the opening case. Brookings and the National Student Support Accelerator draw it precisely: platforms that **individualize** move students through pre-structured content at different rates, with difficulty fine-tuned; platforms that **personalize** change the *type of support* in response to the learner's reasoning, misconceptions, interests, and context (Brookings, "What the research shows about generative AI in tutoring"; NSSA materials on personalizing tutoring).

Most products marketed as "personalized learning" are individualized pacing engines: same content, same sequence logic, different speed. This is not an accusation of fraud — it is a direct consequence of sections 7.1 and 7.2. Genuine personalization of support requires knowing something θ and P(mastery) cannot represent: the *content* of the learner's thinking. The models that power the industry are thermometers and coin-flip trackers. They route flow; they do not interpret.

The synthesis behind this book frames the design target as an **interpretive support layer, not an automated traffic controller**. A traffic controller routes efficiently given positions. An interpretive layer asks what the learner's last answer *means* and changes the support accordingly. The honest current state of the field: classical models do traffic control well; misconception-responsive support is exactly where LLMs could in principle help — they can actually read the wrong answer — and exactly where their learner-modeling unreliability (7.3) currently bites. Sit with that tension: *the layer that could finally personalize is the layer least trustworthy to route.* It is the most consequential open design problem in adaptive learning.

For classification work, carry this **three-question probe set** into any demo:

1. Can two learners at the same performance level ever receive *different kinds* of support?
2. Does any system response depend on *which* wrong answer was given — or only on wrongness?
3. Does anything other than speed and difficulty ever change?

Three no's means pacing individualization, whatever the marketing says. And say the next part out loud: **pacing individualization is valuable.** The point is truth in labeling — a system that can only adjust speed cannot do what "personalized" implies, and a designer who cannot tell the difference buys the wrong machine for the pedagogy.

### 7.5 The Headline Claims and Their Boundary Conditions

Learning Objective 3 requires holding three numbers in honest tension.

**The headline.** A 2025 review synthesizing 2019–2025 adaptive-learning literature (Cao, Nhu Tam Mai & Guo, *International Journal of Education and Humanities* 20(2)) reports large gains — figures of 30–50% learning-time reduction and 15–25% outcome improvement circulate from it. Treat those specific figures with explicit caution: they could not be independently confirmed in the article's abstract during this book's verification pass, and the venue is low-prestige [contested — see pantry flag]. What the same review does carry, and what matters more for design, is the **concentration caveat**: reported effects cluster in structured domains — mathematics, language, coding — and in well-resourced implementation contexts.

**The controlled-study record.** Older intelligent-tutoring meta-analyses report substantial effects in controlled settings: VanLehn (2011) places ITS effectiveness near human tutoring (d ≈ 0.76 [verify exact figure]; his human-tutoring benchmark is ≈ 0.79), and Kulik & Fletcher (2016) report ≈ 0.66.

**The at-scale number.** The What Works Clearinghouse evidence for Cognitive Tutor Algebra I — the most-researched adaptive system in existence — nets out to a weighted effect of roughly **+0.04** across qualifying studies [verify — partially confirmed; WWC reports get revised, and the underlying Pane et al. RAND study found a null first year and ≈ +0.20 in year two].

Here is the reading that makes you a better designer: these numbers do not debunk one another. They are measurements taken at different distances from real classrooms — efficacy in controlled studies versus effectiveness at implementation scale — and the +0.04 is the one taken closest to the conditions you will deploy into. The instructive irony: the system with the *deepest* research pedigree produces the *most modest* estimate, precisely because it has been measured most honestly. When a vendor quotes a number, your first question is now reflexive: *at what distance from a real deployment was this measured?*

One method note from the same review: Cao et al. propose an **ADDIE-RAD hybrid** — systematic instructional planning married to rapid iterative prototyping of the adaptive layer against live diagnostic data. Useful scaffolding, possibly — but teach it to yourself as what it is: one proposed hybrid from a single source, not an established methodology [verify — single-source].

### 7.6 When the Right Adaptive Layer Is None — and What Knewton Teaches

The adaptivity decision is not "which model?" It is first "should this exist?" An adaptive layer is warranted when four conditions hold: the domain is **well-structured** with a defensible knowledge component map; **practice volume** is high enough for models to calibrate; the **cost of mis-routing is low or audited** (Chapter 8's entire subject); and the realistic alternative is one-pace-fits-all instruction at scale. It is *not* warranted for small cohorts an instructor can actually know, for ill-structured domains (design critique, essay craft, anything where "the next item" is a judgment call), or where the adaptivity on offer is pacing-only and the pedagogy needs support-personalization.

The cautionary spine for this judgment has a name. Knewton's founder described the product, on the record, as "a robot tutor in the sky that can semi-read your mind and figure out where your strengths and weaknesses are, down to the percentile" (NPR, 2015). The company raised over $180 million on hyper-personalization claims; analyst Michael Feldstein publicly called them "selling snake oil." What the stack could actually do was respectable IRT-family proficiency estimation and sequencing — pacing individualization, per section 7.4. In May 2019, Wiley acquired Knewton's assets for under $17 million by industry math (Inside Higher Ed, 2019). The market eventually priced the difference between the thermometer and the mind-reader. Your procurement committee should price it sooner.

## Mid-Chapter Checkpoint

Ungraded. Answer before the worked example; if any answer wobbles, the redirect tells you where to go.

1. A learner misses an item. Name one thing an IRT-based system updates and two things about that miss it cannot represent. *(Wobbly? Reread 7.1.)*
2. In the BKT worked example, why did one wrong answer drop P(mastery) from 0.84 to 0.51 — and what design decision determines how much over-practice that learner now faces? *(Reread 7.2.)*
3. A vendor says their chatbot "builds a model of each student." What two architectures could that sentence describe, and which one does current evidence say to refuse? *(Reread 7.3.)*
4. Apply the three probe questions to Duolingo as you know it. Pacing or personalization? *(Reread 7.4.)*
5. Why are the "+0.04" and the "15–25% gains" not contradictory? *(Reread 7.5.)*

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| BKT models per-skill mastery; canonical four-parameter formulation | Corbett & Anderson 1995, *UMUAI* | Model formulation, 30 yrs of deployment | **Verified** |
| DKT beats BKT at prediction (~0.86 vs ~0.67 AUC) | Piech et al. 2015, NeurIPS | Next-answer prediction (assisted-data proxy) | **Verified — but see correction row** |
| DKT's advantage shrank under re-evaluation; enhanced classical models close the gap; DKT loses interpretability | Khajah et al. 2016; Xiong et al. 2016; Scruggs et al. 2020 | Re-analysis | **Verified** |
| LLMs are unreliable as learner models (unstable mastery estimates, wrong-direction updates) | arXiv 2412.09248; 2503.11733; 2604.08263 (2024–2026) | Prediction benchmarks | **Verified as preprint literature; young, watch for revision** |
| Adaptive systems: 30–50% time reduction, 15–25% outcome gains | Cao et al. 2025, *IJEH* 20(2) | Mixed, review-level | **Article exists; headline figures UNCONFIRMED; weak venue [contested — see pantry flag]** |
| ITS effects in controlled studies ≈ 0.66–0.76 | Kulik & Fletcher 2016; VanLehn 2011 | Mostly assisted/post-test, controlled | **Verified at review level; exact d for VanLehn [verify]** |
| Cognitive Tutor Algebra I at scale ≈ +0.04 weighted | WWC intervention report | Effectiveness at scale | **Partially verified — confirm current WWC PDF before print [verify]** |
| Knewton: $180M raised on personalization claims; assets sold <$17M | NPR 2015; Inside Higher Ed 2019; e-Literate | Market outcome | **Verified** |
| Pacing vs. personalization distinction | Brookings; NSSA | Conceptual, evidence-grounded | **Verified** |

What remains unsettled: whether misconception-responsive personalization is achievable at scale; whether LLM generation finally makes it economical; the magnitude of adaptive gains outside math/language/coding; everything longitudinal.

## Pattern Card: The Adaptivity Decision Protocol

**Name:** Adaptivity Decision Protocol
**Trigger:** Any proposal — internal or vendor — to add an adaptive layer to a learning experience, or to keep one already present.
**Inputs:** Domain structure assessment; expected practice volume per skill; the Week 6 tutoring spec it must attach to; vendor claims with their measurement distance labeled; cohort size.

**Steps:**
1. **Warrant check.** Structured domain with defensible KC map? Calibration-grade practice volume? Mis-routing cost low or auditable? Realistic alternative actually one-pace-fits-all? Any "no" → default to no adaptive layer; document why.
2. **Classify the offer.** Run the three probe questions. Label the system pacing-individualization or support-personalization. Reject any claim of personalization not backed by a mechanism that reads error content.
3. **Name the learner model.** IRT / BKT / knowledge-space / DKT / LLM-as-model / hybrid. Write one sentence per model: what it represents, what updates it, what it cannot see.
4. **Set the LLM boundary.** Generation tasks the LLM may take (with validation pipeline per Chapter 9); learner-state inferences it may not.
5. **Specify what adapts and what must not.** Pacing, sequence, support type, content variation — each is a separate decision. List the never-adapts set (e.g., access to higher-order tasks; assessment windows) explicitly — this list is Chapter 8's floor.
6. **Attach the evidence obligation.** Which claims you accepted on current evidence, which require pilot measurement (Chapter 14), which you declined.

**Outputs:** A one-page adaptivity decision memo: warrant verdict, classification, learner model card, adapt/never-adapt table, evidence buckets.
**Fading rule:** The adaptive layer itself must answer the withdrawal question — as competence builds, control over pacing and sequence transfers *to the learner* (self-sequencing with model advice), not deeper into the model.
**Failure mode:** *Personalization theater* — buying a pacing engine to solve a support problem; or specifying the model layer carefully and never deciding what it is forbidden to adapt.

## Worked Example: The DataWise 101 Adaptivity Decision

**Situation.** The Track A case: DataWise 101, an introductory statistics online course with an AI homework tutor. Your Week 6 spec gave the tutor a hint ladder, reasoning gates, and a fading schedule. The product team now proposes "full personalization": an adaptive engine controlling problem difficulty, topic sequence, remediation, and pacing, with an LLM "that learns each student."

**The problem as the designer sees it.** Three separate proposals are hiding inside one pitch: (1) a learner model to drive difficulty and mastery gating; (2) LLM-generated content variation; (3) LLM-inferred learner state. The pitch's language ("learns each student") blurs them deliberately or innocently — either way, the designer's first job is to un-blur.

**Process — including the dead ends.** The warrant check passes: intro statistics is well-structured, the KC map (descriptives → probability → sampling distributions → inference) is defensible, homework volume is high, the alternative really is one-pace-fits-all problem sets. Some adaptive layer is warranted — this is not a decline case.

First dead end: the team spec'd DKT, seduced by the accuracy numbers. The Chapter 8 rehearsal killed it — when a student appeals "why am I still in remediation?", a DKT-backed system has no per-skill answer a TA can read. Back to BKT.

Second dead end: letting the LLM adjust mastery estimates from chat transcripts ("she explained it well in chat, bump her to mastered"). Tempting — the chat genuinely contains evidence BKT cannot see. Declined on the 2025 instability findings: unstable estimates, unauditable updates, nothing solid for next week's routing audit to audit.

**Resolution.** The adaptivity decision memo specifies: **BKT learner model** over the stats KC map (thresholds documented, parameters reviewed against over-practice); **LLM as generator only** — isomorphic practice problems when a skill needs more opportunities, routed through an instructor review queue before learners see them, plus canonical explanations rephrased at three reading levels; **never-adapts list:** every student retains access to the full problem library regardless of mastery state; assessment windows are not model-controlled; the misconception-feedback layer (which would require reading error content) is deferred to the Chapter 9 boundary spec rather than faked with difficulty adjustment. Classification on the truth-in-labeling axis: pacing individualization with generated variation — and the course materials say so.

**The lesson.** The adaptivity decision is three decisions, and the one vendors most want blurred — who estimates learner state — is the one to make first.

**The limit.** This protocol assumes a domain where "mastered / not mastered" is meaningful per skill. Point it at a design-critique course or a writing seminar and step 1 correctly returns "no layer" — but a determined team can gerrymander a KC map to manufacture a warrant. The protocol checks reasoning; it cannot supply honesty.

**Track B extension.** Run the full Pattern Card on your own project this week. If your project has no adaptive layer and step 1 says it doesn't warrant one, your Design Lab #3 deliverable is the *defended refusal*: the memo arguing against the feature, written as if to a stakeholder who has already seen the vendor demo. That memo is not a lesser artifact — declining well is a graded skill in this course, and it reappears in your final specification.

## Exercises

1. **(Understand)** Complete the three-traditions comparison table from memory, then check it against the chapter: for IRT, BKT, and LLM-based adaptation — what is modeled, what updates it, what decision it drives, and one thing it cannot know about the learner. Add a fourth row for knowledge spaces using the ALEKS case.
2. **(Apply/Analyze)** Hand-walk the BKT update for the sequence *incorrect, correct, correct, correct* using this chapter's parameters. At each step, state what the system does next — and what a human tutor who could see the actual wrong answer might do differently. State where the over-practice risk concentrates.
3. **(Analyze)** Classification clinic: three anonymized product descriptions (provided in the course pack — one knowledge-space pacing system, one misconception-responsive tutor, one LLM chat product marketed as adaptive). Classify each on the individualization↔personalization axis using the three probe questions, citing the learner-model feature that justifies each verdict.
4. **(Evaluate/Create — Design Lab #3, 25 pts; Track B +5 bonus)** The adaptivity decision memo, per the Pattern Card: warrant verdict, classification, learner model card, adapt/never-adapt table, evidence buckets, and the Withdrawal Test answer below. Track A uses the provided DataWise 101 learner data; Track B uses your own project and must cite project-specific evidence in the Reliance Disclosure to earn the bonus.

**Assessment notes:** Design Lab #3 is graded against the Pattern Card structure. A memo that specifies a model but has an empty never-adapts list is incomplete. The defended refusal is a fully valid — often the strongest — submission.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (chapter template).** *If the adaptive layer were removed tomorrow, what could your learners do?* Specifically: could they self-sequence — choose their next topic and difficulty with reasonable accuracy — or has the system absorbed that judgment entirely? Name one design element in your adaptivity decision that builds learner self-sequencing capacity (e.g., a visible mastery map the learner reads and acts on, rather than a hidden router), and how you would measure it.

**Reliance Disclosure (chapter template).** Name (1) one place your adaptivity design structurally preserves productive struggle — e.g., the never-adapts floor that keeps hard problems reachable; and (2) one place reliance risk remains open — e.g., learners who stop asking "what should I work on next?" because the system always answers first. Track B bonus requires citing project-specific evidence: your logs, your learner data, or a named design constraint — not generic risk language.

## What Would Change My Mind

The position this chapter takes — classical learner models for state, LLMs for variation only — rests on 2024–2026 evidence that LLMs produce unstable mastery estimates. That evidence is young and mostly preprint. I would revise the boundary if benchmark studies showed LLM-based or hybrid neural-symbolic learner models matching well-tuned BKT on *calibration* (not just prediction accuracy), with per-skill estimates stable across paraphrased identical evidence, audited by researchers without a stake in the architecture, replicated across at least two domains. If that lands, section 7.3's decision rule softens from "refuse" to "pilot with audit" — and this book's next edition says so.

## Still Puzzling

- Can misconception-responsive support — the genuinely personalizing machine — be built at scale without an unaffordable human authoring burden, and will LLM generation actually close that gap or just flood the validation queue?
- Where exactly is the cohort-size line below which an instructor's knowledge of students beats any model — and why does the field have no study that locates it?
- BKT's no-forgetting assumption is false; spacing research says review timing matters enormously. Why have forgetting-aware learner models remained so rare in production, and what would a fading schedule keyed to a forgetting curve change about Week 6's designs?

## Chapter Summary

You can now read the adaptive modeling stack at design-literacy depth: IRT as a thermometer on one dimension, BKT as a per-skill probability with four parameters and a human-authored skill map, DKT as accuracy purchased with interpretability, and LLMs as powerful generators that current evidence disqualifies as learner models. You can classify any system as pacing or personalization using three questions, and place any vendor number on the efficacy-to-effectiveness distance scale, with the +0.04 caution as ballast. Most importantly, you can make and defend the adaptivity decision itself, including the refusal — and you know which list in your memo (never-adapts) next week's equity audit inspects first.

## Key Terms

- **Item Response Theory (IRT):** A model placing learner ability (θ) and item difficulty (b) on one scale to predict probability of success; powers adaptive item selection.
- **Bayesian Knowledge Tracing (BKT):** A per-skill learner model updating a probability of mastery from response correctness via four parameters (prior, transition, guess, slip).
- **Knowledge component (KC) model:** The human-authored map from items to skills that BKT-family systems depend on; wrong map, confidently wrong estimates.
- **Deep Knowledge Tracing (DKT):** Neural-network knowledge tracing; better prediction, opaque state, no per-skill mastery readout.
- **Pacing individualization:** Adapting speed, sequence, and difficulty of fixed content.
- **Personalization of support:** Adapting the *kind* of support based on what the learner's thinking means — requires reading error content, not just correctness.
- **Interpretive support layer:** The design target — a system that asks what the learner's answer means; opposed to the automated traffic controller.
- **Over-practice:** The remedial-drill excess produced when a model under-estimates mastery or learning rate; the seed of Chapter 8's remedial loop.
- **Efficacy–effectiveness gap:** The systematic shrinkage of effects between controlled studies and at-scale implementation.

## Bridge

Every adaptive system routes. Next week: what routing does to the learners the system was sold as helping.

## Further Reading

- **Corbett, A. T., & Anderson, J. R. (1995). "Knowledge tracing: Modeling the acquisition of procedural knowledge." *User Modeling and User-Adapted Interaction*, 4, 253–278.** The original BKT paper — shorter and more readable than its influence suggests; the four parameters in their native habitat.
- **Khajah, M., Lindsey, R., & Mozer, M. (2016). "How Deep Is Knowledge Tracing?" *EDM 2016*.** The corrective companion to the DKT hype cycle; a model of how to interrogate a benchmark result.
- **Baker, R. S., & Hawn, A. (2022). "Algorithmic Bias in Education." *IJAIED*, 32, 1052–1092.** Read it this week, before Chapter 8 assigns it — the over-practice branch you filed away is in there at scale.
- **VanLehn, K. (2011). "The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems." *Educational Psychologist*, 46(4).** The careful meta-analytic case that ITS approached human tutoring in controlled settings — the high end of the distance scale.
- **NPR (2015), "Meet the Mind-Reading Robo Tutor in the Sky," with e-Literate's contemporaneous "snake oil" analysis.** Read the two against each other as a vendor-claim deconstruction exercise; the 2019 acquisition reporting is the answer key.

## LLM Exercise

Copy-paste the following into the LLM of your choice. It requires your own Design Lab #3 draft — the exercise models the reasoning-gate pattern, so the model should refuse to proceed without your artifact.

> You are an adaptivity-decision reviewer for a graduate course on AI-mediated learning design. I will paste my adaptivity decision memo (warrant verdict, pacing/personalization classification, learner model card, adapt/never-adapt table, evidence buckets).
>
> **If I have not pasted a memo below, do not generate an example memo, do not produce a template, and do not continue — ask me for my memo and stop.**
>
> Once you have my memo, proceed in strict order, one step at a time, waiting for my answer at each gate:
> 1. Ask me to state, in my own words and without looking at the memo, what my chosen learner model cannot know about my learners. Do not evaluate my memo until I answer.
> 2. Then challenge my classification: propose the strongest case that my "personalization" is actually pacing individualization (or vice versa), citing the three probe questions. Require me to defend or revise.
> 3. Then attack my never-adapts list: name two things my memo allows the system to adapt that a routing-equity auditor would question, and ask me to justify or move them.
> 4. Only after steps 1–3, give your overall review: one strength, one structural gap, one claim that needs an evidence label it currently lacks.
> Never rewrite my memo for me. Your job is questions and critique; the revision is mine.
>
> My memo:
> [PASTE YOUR DESIGN LAB #3 MEMO HERE]
