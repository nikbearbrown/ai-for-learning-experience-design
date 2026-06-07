# Chapter 7 — Adaptive Systems: From Pacing to Personalization
*On thermometers that feel like mind-readers, progress bars built on four numbers, and the one word that covers two completely different machines.*

Two products are pitched to the same university in the same week. Both home pages say "personalized learning." Both demos are genuinely impressive.

System A gives every student a placement assessment of twenty-five to thirty questions, then maintains a live map of which topics the student has mastered and which they are "ready to learn." Students move through the same curriculum at radically different speeds; no two dashboards look alike.

System B does something different. When a student answers a confidence-interval question with "95% of the data falls inside the interval," the system does not serve an easier question. It recognizes that *specific wrong answer* as a known misconception — the interval is about the parameter, not the data — and responds with a contrasting case built to collide with exactly that belief.

Here is the design question the marketing language hides: System A never changes *what* a student sees — only when, and in what order. System B changes *what kind of support* arrives, based on what the student's error means. Both adapt. Both are sold with the same word. They are different machines, and by the end of this chapter you will be able to tell them apart from the outside.

---

Start with the model that lives under most adaptive assessment and a large share of adaptive learning, because it is the one most often described as "knowing what the student knows" — and understanding exactly how it works is the fastest route to understanding why that description is wrong.

Item Response Theory places learners and items on the same scale. The learner occupies a position on that scale called θ (theta), representing ability. Each item occupies a position called *b*, representing difficulty. The simplest version says:

$$P(\text{correct}) = \frac{1}{1 + e^{-(\theta - b)}}$$

In English: when your ability matches the item's difficulty exactly (θ = b), you have a 50% chance of getting it right. The further your ability sits above the difficulty, the closer your chance climbs toward certainty; the further below, the closer it falls to zero. That S-shaped relationship is the whole idea. Richer variants add a discrimination parameter — how sharply the item separates learners just below from just above its difficulty — and a guessing floor, the chance a low-ability learner gets a multiple-choice item right by luck (Lord 1980).

What this buys an adaptive system is real and valuable: learners and items share a common scale, so the system can always select the next item that tells it the most about where the learner sits. That is computerized adaptive testing, and it is why a twenty-five-item adaptive placement can locate a learner as accurately as a hundred-item fixed test.

Now the design-literacy payload — what IRT *cannot* know. Theta is a single number. It is a position on one difficulty-ordered dimension. IRT does not know *why* the learner missed the item. It does not know which misconception produced the wrong answer, whether the learner was anxious, fatigued, guessing strategically, or working in a second language. Two learners with identical θ can have entirely different gaps in their understanding. A system built on IRT alone can individualize *difficulty* with great precision while knowing nothing usable for personalizing *support*.

The analogy is worth stating plainly: **IRT is a thermometer, not a diagnosis.** A precise reading of one number is genuinely useful. It tells you nothing about what is wrong. So retire the statement "the adaptive system knows what the student knows" — the feeling of being *read* by an adaptive test is real; the underlying representation is a temperature.

When auditing any adaptive system, find the moment a learner gives a diagnostic wrong answer — an answer that reveals a specific misconception. If the system's only possible response is "easier item," you are looking at the IRT ceiling: exactly the place where difficulty adjustment is happening and support adjustment is not.

---

Where IRT estimates one continuous ability, Bayesian Knowledge Tracing models each *skill* as a coin with a hidden state: mastered or not yet. It is the canonical learner model of the intelligent-tutoring tradition — the machinery inside Carnegie Learning's Cognitive Tutor and MATHia for three decades (Corbett & Anderson 1995). Each skill carries four parameters:

- **P(L₀):** the probability the learner already knew the skill before practice
- **P(T):** the probability of transitioning to mastery at each practice opportunity
- **P(G):** the probability of guessing correctly without mastery
- **P(S):** the probability of slipping — answering wrong despite mastery

After every response, Bayes' rule updates the probability of mastery. When that probability crosses a threshold — 0.95 in the Cognitive Tutor tradition — the system declares the skill mastered and moves on. Every "skills remaining" progress bar in that product family is this arithmetic wearing a friendly interface.

A worked update, with the arithmetic done. Take the DataWise 101 skill "choose the correct hypothesis test," with P(L₀) = 0.20, P(T) = 0.15, P(G) = 0.25, P(S) = 0.10. The learner answers: correct, correct, incorrect, correct.

Start at P(mastery) = 0.20. A correct answer is more likely from a master (0.90, since slips are rare) than from a non-master (0.25, the guess rate). That evidence shifts belief to ≈ 0.47; then the learning-opportunity bump adds P(T) — call it ≈ **0.55**. Second correct: from a higher prior, belief rises to ≈ 0.82, bumps to **≈ 0.84**. One incorrect: a wrong answer from a probable master is most plausibly a slip, but slips are rare, so belief falls hard to ≈ 0.42, recovers with the bump to **≈ 0.51**. Correct again: belief climbs back to **≈ 0.82**.

After four answers: 0.82. Below the 0.95 threshold — so the system assigns more practice. Now interrogate the numbers as a designer. Who chose 0.95, and what does a learner's week look like at 0.94? What happens to a learner whose P(T) was estimated too low? The model under-credits their learning, the threshold recedes, and they drill on — over-practice. What does the model say about a learner who has mastered the wrong generalization while answering correctly? Nothing. BKT sees correctness, never the content of thought.

The honest limitations: standard BKT has no forgetting — once mastered, always mastered, which is psychologically false and matters for spacing design. Skills are binary, so partial understanding is invisible. The whole edifice rests on a human-authored *knowledge component model* — the mapping of items to skills — and a bad map produces confidently wrong mastery estimates. And the four parameters suffer identifiability problems: different parameter sets can fit the same data equally well, so they are less solid than they look.

The neural upgrade deserves a clear-eyed sentence. Deep Knowledge Tracing replaced BKT's state machine with a recurrent neural network and reported dramatically better prediction (~0.86 vs. ~0.67 AUC on a standard benchmark) (Piech et al. 2015). But re-evaluation found duplicate records inflating the benchmark gap (Xiong et al. 2016), and classical models extended with forgetting, item difficulty, and individual ability close most of the remaining distance (Khajah, Lindsey & Mozer 2016). More decisive for designers: DKT's hidden state is opaque — it predicts the next answer but yields no human-readable per-skill mastery estimate (Scruggs, Baker & McLaren 2020). When a student appeals "why am I still in remediation?", a BKT-backed system can answer. A DKT-backed one largely cannot. Interpretability is the precondition for accountability.

The progress bar is a probability. Before granting any mastery indicator authority in your design — over pacing, over assessment windows, over what a teacher believes — name the threshold, the parameters, and the knowledge component map it depends on.

<!-- → [TABLE: BKT four-parameter card plus worked update — columns: Parameter, Symbol, What it represents, Typical value range — followed by the four-step update trace with P(mastery) at each step annotated against the mastery threshold, showing the over-practice risk that accumulates at 0.94] -->

---

The newest layer uses large language models to *generate* adaptive content — varied explanations, fresh practice problems, hints at different reading levels — rather than selecting from pre-authored banks. This genuinely changes the economics: classical adaptivity was bounded by authoring budget; generation makes the content space effectively unbounded.

The serious design question is what *drives* the generation, and the 2025–2026 evidence draws a sharp line between two architectures.

In the first, the LLM is a generator on top of a classical learner model. IRT or BKT maintains learner state; the LLM renders the next intervention. The auditable model stays in charge of *what the learner needs*; the LLM supplies the words and the variations. Hallucination risk attaches to content, mitigable with retrieval grounding and human review. This is the architecture the major incumbents are converging on in production.

In the second, the LLM *is* the learner model. Recent empirical work finds LLMs unreliable for this purpose: they fail to match even DKT-level predictive performance, produce unstable mastery estimates, and sometimes update in the wrong direction — because a chat model constructs no explicit, persistent representation of evolving learner knowledge (arXiv 2412.09248; 2503.11733; 2604.08263). The research frontier's own response is telling: hybrid neural-symbolic systems that bolt a real learner model back on.

The decision rule, clean enough to memorize: **use LLMs to vary what the learner sees; be deeply skeptical of LLMs deciding what the learner knows.**

And retire this misconception directly: "ChatGPT adapts to the student, so it's adaptive learning." A chat model adapts to the *conversation*. It has no calibrated estimate of skill state, no mastery thresholds, no curriculum model, and no memory of the learner that survives the context window. Conversational responsiveness is not learner modeling.

---

Now the chapter's central distinction. Most products marketed as "personalized learning" are actually individualized pacing engines: same content, same sequence logic, different speed. Genuine personalization of support changes the *type of support* in response to the learner's reasoning, misconceptions, interests, and context (Brookings; National Student Support Accelerator). Most of the industry cannot do the second thing, and this is not an accusation of fraud — it is a direct consequence of the models in the previous two sections. Theta and P(mastery) cannot represent the content of the learner's thinking. The models that power the field are thermometers and coin-flip trackers. They route flow; they do not interpret.

The honest current state: classical models do traffic control well. Misconception-responsive support is exactly where LLMs could in principle help — they can actually *read* the wrong answer — and exactly where their learner-modeling unreliability currently bites. The layer that could finally personalize is the layer least trustworthy to route. Sit with that tension; it is the most consequential open design problem in adaptive learning.

For classification work, three probe questions applied to any demo settle the labeling dispute:

1. Can two learners at the same performance level ever receive *different kinds* of support?
2. Does any system response depend on *which* wrong answer was given — or only on wrongness?
3. Does anything other than speed and difficulty ever change?

Three no's means pacing individualization, whatever the marketing says. And pacing individualization is valuable — the point is truth in labeling. A system that can only adjust speed cannot do what "personalized" implies, and a designer who cannot tell the difference buys the wrong machine for the pedagogy.

---

Three numbers must be held in honest tension.

A 2025 review synthesizing 2019–2025 adaptive-learning literature reports large gains — figures of 30–50% learning-time reduction and 15–25% outcome improvement circulate from it (Cao, Nhu Tam Mai & Guo, *International Journal of Education and Humanities* 20(2)). Treat those specific figures with explicit caution: they could not be independently confirmed in the abstract during this book's verification pass, and the venue is low-prestige [contested — see pantry flag]. What the same review does carry is the more important finding: reported effects cluster in structured domains — mathematics, language, coding — and in well-resourced implementation contexts.

Older intelligent-tutoring meta-analyses report substantial effects in controlled settings: VanLehn (2011) places ITS effectiveness near human tutoring (d ≈ 0.76 [verify exact figure]), and Kulik & Fletcher (2016) report ≈ 0.66.

The What Works Clearinghouse evidence for Cognitive Tutor Algebra I — the most-researched adaptive system in existence — nets out to a weighted effect of roughly **+0.04** across qualifying studies [verify — partially confirmed; WWC reports get revised, and the underlying Pane et al. RAND study found null in year one and ≈ +0.20 in year two].

Here is the reading that makes you a better designer: these numbers do not debunk each other. They are measurements taken at different distances from real classrooms — efficacy in controlled studies versus effectiveness at implementation scale — and the +0.04 is taken closest to the conditions you will deploy into. The instructive irony: the system with the deepest research pedigree produces the most modest estimate, precisely because it has been measured most honestly. When a vendor quotes a number, the reflexive question is: *at what distance from a real deployment was this measured?*

<!-- → [CHART: Three-point effect-size scale showing controlled-study efficacy (d ≈ 0.66–0.76), first-year at-scale null, second-year at-scale estimate (+0.20), and WWC weighted average (+0.04) — labeled by measurement distance from real deployment to illustrate the efficacy-effectiveness gap and calibrate vendor claims against it] -->

---

The adaptivity decision is not "which model?" It is first "should this exist?"

An adaptive layer is warranted when four conditions hold: the domain is well-structured with a defensible knowledge component map; practice volume is high enough for models to calibrate; the cost of mis-routing is low or audited; and the realistic alternative is genuinely one-pace-fits-all instruction at scale. It is *not* warranted for small cohorts an instructor can actually know, for ill-structured domains where "the next item" is a judgment call, or where the adaptivity on offer is pacing-only and the pedagogy needs support-personalization.

The cautionary spine for this judgment has a name. Knewton's founder described the product, on the record, as "a robot tutor in the sky that can semi-read your mind and figure out where your strengths and weaknesses are, down to the percentile" (NPR, 2015). The company raised over $180 million on hyper-personalization claims; analyst Michael Feldstein publicly called it "selling snake oil." What the stack could actually do was respectable IRT-family proficiency estimation and sequencing — pacing individualization, per the three probe questions. In May 2019, Wiley acquired Knewton's assets for under $17 million (Inside Higher Ed, 2019). The market eventually priced the difference between the thermometer and the mind-reader. Your procurement committee should price it sooner.

---

Translate the framework into the DataWise 101 case.

The Week 6 spec gave the AI homework tutor a hint ladder, reasoning gates, and a fading schedule. The product team now proposes "full personalization": an adaptive engine controlling problem difficulty, topic sequence, remediation, and pacing, with an LLM "that learns each student." Three separate proposals are hiding inside one pitch — a learner model to drive difficulty and mastery gating, LLM-generated content variation, and LLM-inferred learner state — and the pitch's language blurs them deliberately or innocently. The designer's first job is to un-blur.

The warrant check passes: intro statistics is well-structured, the knowledge component map is defensible, homework volume is high, the alternative really is one-pace-fits-all problem sets. Some adaptive layer is warranted.

First dead end: the team specced Deep Knowledge Tracing, seduced by the accuracy numbers. When a student appeals "why am I still in remediation?", a DKT-backed system has no per-skill answer a TA can read. Back to BKT.

Second dead end: letting the LLM adjust mastery estimates from chat transcripts. The chat genuinely contains evidence BKT cannot see — a student who explains the concept clearly in conversation may have mastered it even if they answered slowly. Tempting. Declined on the 2025 instability findings: unstable estimates, unauditable updates, nothing solid for next week's routing audit to audit.

The adaptivity memo specifies: BKT learner model over the statistics knowledge component map, thresholds documented, parameters reviewed against over-practice risk; LLM as generator only — isomorphic practice problems when a skill needs more opportunities, routed through an instructor review queue before learners see them, plus canonical explanations rephrased at three reading levels; never-adapts list: every student retains access to the full problem library regardless of mastery state, assessment windows are not model-controlled, the misconception-feedback layer is deferred to the Chapter 9 boundary spec rather than faked with difficulty adjustment. Classification on the truth-in-labeling axis: pacing individualization with generated variation — and the course materials say so.

The lesson in one sentence: the adaptivity decision is three decisions, and the one vendors most want blurred — who estimates learner state — is the one to make first.

The limit: this protocol assumes a domain where "mastered / not mastered" is meaningful per skill. Point it at a design-critique course or a writing seminar and step 1 correctly returns no layer needed — but a determined team can gerrymander a knowledge component map to manufacture a warrant. The protocol checks reasoning; it cannot supply honesty.

---

## Exercises

**Warm-up**

1. *(Recall — IRT)* Without consulting the text, explain in three sentences what theta represents, what the one-parameter logistic model predicts, and what a system built on IRT alone cannot know about a learner who gave a wrong answer. Then state what design event reveals the IRT ceiling in any demo.

2. *(Recall — BKT)* Hand-walk the BKT update for the sequence *incorrect, correct, correct, correct* using the chapter's parameters (P(L₀) = 0.20, P(T) = 0.15, P(G) = 0.25, P(S) = 0.10). At each step: state P(mastery), state what the system does next, and state what a human tutor who could see the actual wrong answer might do differently. Identify where over-practice risk concentrates.

**Application**

3. *(Apply — three probe questions)* Apply the three probe questions to a real adaptive learning product you know. Classify it as pacing individualization or personalization of support. Name the specific feature — or absence of feature — that determines the classification, and state what would have to change in the product to shift it from one category to the other.

4. *(Apply — LLM boundary)* A team proposes using an LLM to infer student mastery from conversation transcripts, updating the BKT estimates when the LLM detects strong conceptual understanding in a chat exchange. State the two-sentence case for this design — it has a real motivation — and then the two-sentence case against it based on the 2025 evidence. State your decision and the measurement that would reverse it.

5. *(Apply — effect-size reading)* A vendor cites "30–50% time reduction and 15–25% outcome improvement" for their adaptive platform. Apply the measurement-distance framework to this claim: at what distance from a real deployment was this likely measured, what should the Cognitive Tutor at-scale number tell you about the vendor's number, and what single piece of information would make the vendor's number decision-relevant for your context?

**Synthesis**

6. *(Synthesize — adaptivity decision memo)* Run the full adaptivity decision for a learning product you are designing or know well. Warrant check (four conditions): pass or fail, with one sentence per condition. Classification using the three probe questions. Learner model card: one sentence per model on what it represents, what updates it, what it cannot see. Adapt/never-adapts table with at least three entries in each column. Evidence buckets: which claims you accepted on current evidence, which require pilot measurement, which you declined.

7. *(Synthesize — the defended refusal)* Your stakeholder has seen the Knewton-style demo and wants an adaptive engine. Write the one-page memo arguing against any adaptive layer for a specific learning context you name — not "be careful," but the four-condition warrant check run honestly, with the alternative you are proposing instead and the measurement that would change your answer.

**Challenge**

8. *(Challenge — the interpretive support layer)* The chapter identifies the central open problem: LLMs can read error content (which classical models cannot) but are unreliable learner models. Design the architecture you would build if you had to ship a misconception-responsive system today — not someday. What does the LLM do, what does it not do, who or what holds the mastery state, how is the LLM's content output validated before reaching the learner, and what is the minimum auditable unit that lets a teacher contest a routing decision? State the one assumption your architecture makes that current evidence cannot yet support.

---

## LLM Exercise

*The prompt below requires your completed adaptivity decision memo — it models the reasoning gate described in Chapter 6 by refusing to proceed without your artifact.*

Copy the following into the LLM of your choice.

---

You are an adaptivity-decision reviewer for a graduate course on AI-mediated learning design. I will paste my adaptivity decision memo — warrant verdict, pacing/personalization classification, learner model card, adapt/never-adapt table, evidence buckets.

If I have not pasted a memo below, do not generate an example memo, do not produce a template, and do not continue — ask me for my memo and stop.

Once you have my memo, proceed in strict order, one step at a time, waiting for my answer at each gate:
1. Ask me to state, in my own words and without looking at the memo, what my chosen learner model cannot know about my learners. Do not evaluate my memo until I answer.
2. Then challenge my classification: propose the strongest case that my "personalization" is actually pacing individualization (or vice versa), citing the three probe questions. Require me to defend or revise.
3. Then attack my never-adapts list: name two things my memo allows the system to adapt that a routing-equity auditor would question, and ask me to justify or move them.
4. Only after steps 1–3, give your overall review: one strength, one structural gap, one claim that needs an evidence label it currently lacks.

Never rewrite my memo for me. Your job is questions and critique; the revision is mine.

My memo:
[PASTE YOUR ADAPTIVITY DECISION MEMO HERE]

---

*Deliverable: the transcript of all four steps, plus a one-paragraph revision memo stating which challenge changed your design and how. The revision — not the transcript — is the assessable artifact.*
