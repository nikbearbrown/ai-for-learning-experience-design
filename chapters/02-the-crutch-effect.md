# Chapter 2 — The Crutch Effect: Shortcut-Seeking and Cognitive Debt

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Explain the crutch effect's behavioral mechanism — shortcut-seeking as in-the-moment rational, not lazy — and why it closes the "let students self-regulate" escape hatch.
2. **(Understand)** Describe the cognitive-debt finding (declining neural engagement with increasing reliance on generative assistance) *and* its limits as a single-study result, without collapsing into hype or dismissal.
3. **(Analyze)** Identify the crutch-producing features in a provided product: answers on request, no reasoning requirement, unrestricted access, engagement-optimized friction removal, no fading.
4. **(Apply — Track B; Analyze — Track A)** Locate the highest-reliance-risk touchpoint in your design-lab project (Track B: your own integration; Track A: the DataWise 101 statistics tutor) and name the crutch pattern it instantiates.

## Opening Case: The Chess Academies

Before you read the result, commit to a prediction. Write it down — the commitment is the point.

In chess academies, more than 200 students enrolled in a 12-week intensive training program built around an AI tutor purpose-built for the experiment. Chess was chosen deliberately: a sequential decision-making domain where engine evaluation provides an objective skill metric, move by move.

The researchers — the Bastani group, following up on the study you met in Chapter 1 — randomized students into two conditions. In the **system-regulated** condition, the platform automatically provided AI tips at pedagogically chosen key moments. The **self-regulated** condition was *identical* — same tips, same moments — except for one addition: a button. Students could also request AI help any time they wanted.

That is the entire difference. Not less support — *more*, available on demand, for students serious enough to enroll in a chess academy: motivated learners, in a domain they love, free to use their judgment about when they needed help.

Your prediction: which group improved more over twelve weeks, and by roughly how much?

Most people — including most designers and most students in this course — predict the gap will be small, or that the self-regulated group might win. Autonomy is good; motivated learners know when they're stuck; an extra option can't hurt.

The result, as reported: system-regulated students improved **64%**. Self-regulated students improved **30%** — less than half the learning, from a design difference of one extra button (Bastani et al., working paper, "When Does AI Assistance Undermine Learning?"; reported via Knowledge at Wharton and INSEAD Knowledge, early 2026 — a working paper, not yet peer-reviewed, and this chapter holds it to that standard).

The behavioral trace explains the gap. Self-regulated students escalated their help requests over time; by the end of three months they were requesting move-reveal tips every three to four moves — outsourcing the decision-making the training existed to build. And the detail that should end a popular argument forever: **the students knew.** They were aware of their over-reliance, reported it — and increased their usage anyway. Awareness did not produce restraint.

If your prediction was wrong, you are in good company, and your wrongness is this week's curriculum. The −17% from Chapter 1 was not an anomaly of one unguarded chatbot. It is what happens, by default, when help is free and the cost of taking it is invisible. This chapter is about why — and why the remedy cannot be telling learners to do better.

## Prerequisites

You can already:

- State the Bastani three-condition result and what was held constant (Chapter 1).
- Use *assisted* and *unassisted* correctly and tag claims by endpoint type (Chapter 1).
- Run the Two-Layer Audit feature by feature (Chapter 1's Pattern Card) — you need it this week to choose your design-lab project.

## Core Content

### Shortcut-Seeking Is Rational, Not Lazy

Start by deleting a word from your professional vocabulary: *lazy*. It will mislead every design decision you make this term.

Model the learner's situation at a single moment. A student is stuck on a problem; forty minutes of homework remain; an AI button is available. Option A — struggle: high effort now, uncertain success, and a benefit (a stronger schema) that is invisible, delayed, and probabilistic. Option B — ask: low effort, guaranteed progress, and a cost that is equally invisible, delayed, and probabilistic. No individual choice of B is irrational; each reduces effort, reduces error risk, and *feels like progress*. The catastrophe lives only in the accumulated policy: "always B when stuck," run a hundred times across a semester, is the −17% policy. The chess study's 64/30 split is this decision model run experimentally.

The framing dictates the remedy. If shortcut-seeking were a character flaw, the fix would be exhortation, honor codes, and posters. But the chess students were motivated, self-aware, and escalating anyway — structurally identical to every other self-control problem where costs are delayed and benefits immediate (diet, savings). What works on such problems is *structural*: choice architecture, defaults, friction — guardrails. Prior Misconception #2 ("students will self-regulate") is closed not by argument but by randomized evidence.

Two older literatures predicted all of this, which keeps the claim from reading as AI-novelty. The intelligent-tutoring-systems field documented "gaming the system" two decades ago: students exploiting on-demand hints to extract answers, with measurable learning costs (Baker, Corbett, Koedinger & Wagner 2004; Aleven & Koedinger's help-seeking work). The help button has always been a design hazard; LLMs made the button omnipotent. And the behavior predates buttons entirely: Liljedahl's classroom studies behind *Building Thinking Classrooms* found that on "now-you-try-one" tasks after a worked demonstration, only about 20 percent of students actually try to reason it through; the rest slack, stall, fake, or mimic — and the mimics sincerely believed mimicking was what the teacher wanted. Learners have always sought the lowest-effort path that looks like compliance. The AI didn't create the gradient. It paved it.

**Common misconception:** "Motivated adult learners are safe." The chess students were motivated volunteers; professionals show the same pattern (Chapter 5's deskilling literature). Vulnerability is a property of the choice architecture, not the learner's character.

**Design pattern:** treat every on-demand help affordance as a standing bet against the decision model. If the design does nothing to raise the immediate cost of taking help (state your approach first; attempt once before unlocking) or to time help structurally (system-chosen moments), it has bet on self-regulation — and the only randomized test of that bet lost by half.

### Cognitive Offloading: The Trade Underneath the Panic

The crutch effect is a special case of something humans do constantly and mostly benefit from: **cognitive offloading** — using physical action or external resources to reduce a task's information-processing demands (Risko & Gilbert 2016). Writing things down is offloading; so are calendar reminders. The phenomenon is ubiquitous, often adaptive, and governed by metacognitive cost-benefit judgments: we offload when internal processing feels effortful or unreliable.

Two findings carry the chapter. First, offloading decisions run on *perceived* effort and confidence, which are systematically miscalibrated — people offload more than is performance-optimal when the external option is easy. Second, offloading has encoding consequences: information we expect to be externally available is encoded more shallowly. Sparrow, Liu and Wegner (2011) showed people remember *where* to find information rather than the information itself when they expect future access — the "Google effect." But the ledger has a credit side: Storm and Stone (2015) showed that saving one file improves memory for the next; offloading frees capacity. Offloading is not a sin. It is a *trade*: internal encoding for external access.

The trade is excellent when the external resource will reliably be present at performance time — calculators in engineering practice — and disastrous in two conditions: when the performance context strips the resource away (exams, interviews, novel problems, life), or when the offloaded process *was the learning objective itself*.

GenAI radicalizes the trade in three ways. It offloads *generative* processes — composition, reasoning, problem-solving — rather than storage. It is conversational and frictionless, dropping the offload threshold below any prior technology's. And it returns finished-looking artifacts, masking that no internal work occurred. The metacognitive machinery that priced the notebook and the calculator correctly is miscalibrated for a machine that does the thinking itself. That is why the crutch is the *default*: not because learners changed, but because the tool broke their pricing model.

So when a colleague says "we heard this panic about calculators and Google, and it was always overblown" — honor the point, then name the disanalogy. Calculators offload computation *after* the concept is learned. LLMs offload the construction of understanding itself — generation, retrieval, organization, exactly the processes the learning sciences identify as the mechanism of durable learning. The right question is never "is offloading bad?" It is: **which cognitive process is being offloaded, and was that process the point?**

**Design pattern:** the offloading ledger. For any AI touchpoint, fill four cells: what process is offloaded; is that process the learning objective; will the tool be present at performance time; what is encoded internally afterward. A calculator in a statistics course passes. ChatGPT drafting the student's data-analysis interpretation fails all four cells — and is among the uses students report most.

### Cognitive Debt: The Kosmyna Finding, Held at Its Correct Weight

Chapter 1 promised two mechanisms: one behavioral, one you can see on an EEG. Here is the second — presented, deliberately, as an exercise in holding a finding at its correct weight, because almost nobody who cited it in 2025 managed to.

The study: Kosmyna et al., "Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task" (MIT Media Lab; arXiv:2506.08872, June 2025; a peer-reviewed version subsequently appeared — final venue to be confirmed [verify]). Fifty-four participants from Boston-area universities wrote SAT-style essays across three sessions in three groups — **LLM** (ChatGPT allowed), **Search** (Google, no LLM), **Brain-only** (no tools) — while wearing EEG. A fourth session (n=18) crossed participants over: LLM users wrote unassisted; Brain-only users got the LLM.

The findings as reported: EEG functional connectivity scaled *down* with the amount of external support — Brain-only strongest and most distributed, Search intermediate, LLM weakest. LLM users showed strikingly weak memory of their own essays — in session one, a large majority could not accurately quote a sentence they had "written" minutes earlier — and reported lower ownership of their work. LLM-group essays were more homogeneous in vocabulary and structure. And in the crossover, participants who had practiced with the LLM and then wrote unassisted showed weaker connectivity and under-engagement relative to those who had practiced unassisted. The authors call the pattern **cognitive debt**: accumulated reliance on generative assistance leaves the learner neurally under-engaged when the assistance is withdrawn.

If the pattern is real, it is the neurological face of the behavioral crutch effect: Bastani measured what learners could no longer *do* unassisted; Kosmyna measured what learners' brains no longer *did* unassisted.

Now the limits — given the same care as the finding, because Objective 2 demands both [contested — see pantry flag]:

- **Sample:** 54 total, roughly 18 per group; the crucial crossover session had 18 participants, about 9 per direction. Boston-area university students — demographically narrow.
- **Task:** one task type — timed essay writing — over a few months. Not domain learning, not classroom learning.
- **Measure:** EEG functional connectivity is an *engagement* proxy, not a learning outcome. Lower connectivity is not "brain damage," and the arrow from connectivity to capability is interpretive.
- **Status:** released as a preprint explicitly to gather feedback. A published critical commentary (arXiv:2601.00856) raised selective-reporting concerns, inconsistencies in how the crossover interviews were described, and reproducibility issues (a 55-vs-54 participant discrepancy; unclear exclusions).
- **The authors agree with the caution.** Their own FAQ asked media not to use "brain scans," "brain damage," "LLMs make you dumb," or "terrifying findings." The study's most viral interpretations are framings its authors explicitly disclaimed.

So why teach it at all? **Convergence.** A small, suggestive, mechanistically plausible study whose *direction* agrees with independent behavioral evidence — Bastani's error-propagation trail, the chess escalation curve, Fan et al. below — earns a seat at the table it could never earn alone. The failure modes are symmetrical and both common: "MIT proved ChatGPT damages your brain" overclaims a 54-person essay study; "tiny unreviewed preprint, debunked" commits the same hygiene failure in reverse. The book's position: cognitive debt is the *candidate* neural mechanism, single-source flagged, taken seriously for what it converges with, not for what it is.

**Design pattern:** none directly — this section's deliverable is calibration, the skill Chapter 4 formalizes. But note for your Evidence Briefs: the Kosmyna endpoint is *neural engagement during task* — neither assisted nor unassisted *performance*. Misfiling it is the field's most common citation error.

### Desirable Difficulties: Why Removing Struggle Removes Learning

Underneath everything this chapter has shown sits the positive theory, some of the most settled cognitive science we have: durable learning is produced by effortful processing, and conditions that make acquisition *harder in specific ways* make learning *stronger*.

Bjork's **desirable difficulties** (Bjork 1994; Bjork & Bjork 2011) catalog the canon. **Retrieval practice**: testing beats restudy (Roediger & Karpicke 2006). **Spacing**: distributed beats massed. **Interleaving**: mixed problem types beat blocked. **Generation**: producing an answer — even a wrong one — beats reading it. The shared mechanism: these manipulations force the learner to execute the operations — retrieval, discrimination, construction — that build the schemas later performance depends on. Closely allied is Kapur's **productive failure** (2008; 2016): learners who struggle with problems *before* instruction outperform direct-instruction groups on understanding and transfer, despite performing worse during the struggle. (Liljedahl saw the same dissociation in classrooms: students fluent in collaborative work, of whom about 70 percent could not factor a similar quadratic four days later — visible performance, vanished learning.)

The connection to AI is precise, not rhetorical: **an on-demand answer engine is a machine for removing exactly the difficulties this literature identifies as desirable.** It replaces retrieval with lookup, generation with reception, struggle-before-instruction with instruction-on-demand, spaced effort with immediate resolution. The crutch effect is not an anomaly requiring new theory. It is the desirable-difficulties literature's *prediction* — which is why Soderstrom and Bjork could have told you the GPT Base row's shape in 2015, eight years before GPT-4 existed.

The AI-specific corroboration is Fan et al. (2025, *British Journal of Educational Technology*), pointedly titled "Beware of metacognitive laziness." In a lab study of essay-revision learning with four support conditions — ChatGPT, a human expert, a checklist, nothing — the ChatGPT group improved essay scores most but showed **no greater knowledge gain or transfer**, and trace data showed fewer metacognitive events (evaluation, orientation) than the other groups. Better artifacts, unchanged learning, reduced self-monitoring: the dissociation in one design. The coinage names the deepest version of the problem — offloading self-regulation itself.

One nuance to carry forward, because Chapter 3 is built on it: difficulties are desirable *only when the learner can succeed with effort*. Difficulty beyond reach is just failure — the zone-of-proximal-development boundary. The design problem is never maximizing struggle; it is calibrating it. And one professional warning, the most dangerous skill-transfer in this book's audience: in general UX, friction is the enemy. In learning experience design, *frictionless task completion and durable learning are different objectives that frequently trade off*. Remove extraneous friction — confusing navigation, unclear instructions — while protecting germane difficulty: the cognitive work that is the point. A designer who optimizes a learning flow like a checkout flow is building the GPT Base condition with professional pride.

**Design pattern:** for any AI touchpoint, name the desirable difficulty it threatens (retrieval? generation? error-driven processing?) and check whether the design preserves it. This single check predicts the Bastani table's shape from theory alone.

### The Crutch-Producing Pattern List and the Default Thesis

You can now assemble the chapter's deliverable: the five crutch-producing patterns, each grounded in evidence you have met.

1. **Complete answers on request.** GPT Base; the ITS "help abuse" precedent. The answer terminates exactly the processing that was the point.
2. **No reasoning requirement before help.** Contrast GPT Tutor's articulate-first design; Fan et al.'s reduced metacognition. If the learner need not state an approach, help replaces thought rather than responding to it.
3. **Unrestricted access throughout practice.** The chess academies' extra button. On-demand availability plus rational shortcut-seeking equals escalation — every three to four moves by week twelve.
4. **Engagement-optimized friction removal.** Instant resolution, warm praise, zero frustration — Chapter 1's four-pillars failure; Kosmyna's homogenized essays. The design optimizes the telemetry while collapsing the cognitive work.
5. **No fading.** Support that never contracts as competence builds. (Honest flag: fading is the *least-studied* pattern in GenAI tutoring — evidence-informed extrapolation from the scaffolding and ITS literatures; Chapter 6 designs it anyway, labeled as such.)

Now the chapter's destination, the claim the whole course leans on: **the crutch is the default.** Not a worst case, not a malfunction — the *zero-design outcome*, what ships when nobody makes it ship otherwise.

Evidence that the default is what learners actually do: Wang et al. (2024, arXiv:2412.02653) — a survey literally titled "Scaffold or Crutch?" — found 85% of surveyed STEM students reporting GenAI use for coursework, over half inputting problems directly for the AI to solve, and 38% simply copy-pasting. **State the caveat whenever you cite this:** the survey covered 40 students (plus 28 faculty) — a small exploratory sample whose headline percentages circulate as if from a national study. Cite it for the *pattern* — default usage is solution-extraction — with the n attached, and triangulate: the HEPI/Kortext 2025 UK survey (n≈1,000+) found roughly 88% of undergraduates had used GenAI for assessments in some form [verify exact figure]. Small study, big study, same direction.

And evidence that the default is what the market builds: the crutch profile is not what bad product teams produce — it is what *excellent* consumer product design produces when pointed at learning. Instant resolution, zero friction, delightful tone, unlimited access: a well-run growth team hitting its engagement metrics. The photo-solver category (snap a picture, get the worked solution, unlimited, friendly mascot) instantiates all five patterns at scale and markets itself as learning. The crutch is a *local optimum* of standard product practice — which means you will, at some point, have to argue against your own organization's best practices, with evidence. The weekly Reliance Disclosure is training for exactly that conversation.

**Design pattern:** the Crutch-Default Checklist (this chapter's Pattern Card): run the five patterns against any product, feature by feature, and rank the touchpoints by reliance risk.

## Mid-Chapter Checkpoint

*Ungraded. Answer, then check.*

1. The chess academies' self-regulated students *knew* they were over-relying and escalated anyway. Which remedy does this falsify, and what category of remedy does it leave standing?
2. A colleague says: "Calculators didn't ruin math students; ChatGPT won't either." Name the disanalogy in one sentence using the word *offloaded*.
3. The Kosmyna study's endpoint type is: (a) assisted performance, (b) unassisted performance, (c) neural engagement during task, (d) transfer?
4. Name the five crutch patterns from memory.

*Redirect:* If you answered (2) with a defense of calculators, reread "Cognitive Offloading" — the question is never the tool but which process it absorbs. If you got (3) wrong, reread the Kosmyna section before attempting Evidence Brief #2; the brief grades calibration explicitly.

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| System-timed AI tips: +64% improvement; identical condition + on-demand help button: +30%. Help requests escalated to every 3–4 moves; awareness did not produce restraint | Bastani et al., "When Does AI Assistance Undermine Learning?" — chess academies, n>200, 12 weeks, randomized | Objective skill growth (engine-evaluated), longitudinal within-program | **WORKING PAPER — flagged.** Figures from Knowledge at Wharton / INSEAD coverage, consistent across outlets; publication status, author list, and final numbers must be verified before professional citation |
| EEG functional connectivity scales down with external support (Brain-only > Search > LLM); LLM users couldn't quote own essays; crossover under-engagement ("cognitive debt") | Kosmyna et al. 2025, arXiv:2506.08872 (MIT Media Lab); peer-reviewed venue to confirm [verify] | Neural engagement during task (NOT a performance endpoint) | **SINGLE STUDY — flagged** [contested — see pantry flag]. n=54 (crossover n=18); one task type; preprint with published critical commentary (arXiv:2601.00856); authors disclaimed viral framings. Candidate mechanism via convergence only |
| ChatGPT-supported essay revision: best score gains, no greater knowledge gain or transfer, fewer metacognitive events ("metacognitive laziness") | Fan et al. 2025, *BJET* (also arXiv:2412.09315) | Assisted artifact quality vs. knowledge/transfer, with trace data | **Verified, published.** Lab study, single domain |
| 85% of STEM students use GenAI; over half input problems for solutions; 38% copy-paste | Wang et al. 2024, arXiv:2412.02653 — **n=40 students + 28 faculty** | Self-reported usage (no learning endpoint) | Small exploratory survey — the n must travel with the percentages. Direction triangulated by HEPI/Kortext 2025, n≈1,000+, ~88% [verify exact figure] |
| Students game on-demand help systems, extracting answers with learning costs | Baker, Corbett, Koedinger & Wagner 2004 (CHI); Aleven & Koedinger help-seeking work | Behavioral + learning outcomes, ITS era | **Verified; two decades old.** The pre-LLM precedent for pattern 3 |
| Retrieval, spacing, generation, and pre-instruction struggle strengthen learning while depressing acquisition performance | Bjork 1994; Bjork & Bjork 2011; Roediger & Karpicke 2006; Kapur 2008, 2016; Soderstrom & Bjork 2015 | Retention and transfer vs. acquisition | **Verified; settled cognitive science.** The theory that predicted the crutch effect |

**What remains unsettled:** whether crutch effects compound, plateau, or wash out with extended use (the chess escalation curve is the only trajectory evidence in existence); whether they reverse under structured withdrawal (nothing published); who is most vulnerable (Klarin et al. 2024: perception data, not outcomes — and the most at-risk populations overlap with the most marketed-to); whether expertise protects (plausible, not established). Note also: "crutch effect" is this book's consolidating label for a convergent pattern — Wang et al.'s title supplies "crutch"; Bastani et al. use the language — not a term of art with one citable definition.

## Pattern Card: The Crutch-Default Checklist

**Name:** Crutch-Default Checklist

**Trigger:** Any Layer 2 feature (per the Chapter 1 audit) — at design time, procurement time, or inheritance time. Run it *before* anyone argues the feature is fine; the default thesis says the burden of proof sits with the design, not the critic.

**Structure:** For each Layer 2 touchpoint, score five binary questions (Y = crutch signal):
1. Can the learner obtain a complete answer on request?
2. Can help arrive before the learner has articulated any reasoning or attempt?
3. Is access unrestricted throughout practice — no gates, no timing structure, no attempt requirements?
4. Is the interaction optimized for instant resolution and affective comfort — no designed pause, no productive-struggle window?
5. Does support stay constant regardless of growing competence — no fading schedule, no contraction triggers?

Then rank all touchpoints by score and by traffic (a 3/5 touchpoint every learner hits daily outranks a 5/5 corner case), and name the **highest-reliance-risk touchpoint** — this week's design-lab deliverable.

**Fading rule:** The checklist itself does not fade, but its output should: as a product adds the Chapter 3 counter-patterns, re-run it and expect scores to fall. A product whose scores never fall has a roadmap problem, not a model problem.

**Failure mode:** Moralizing the output. The checklist diagnoses *designs*, not learners or teams — a 5/5 score means standard product practice was pointed at learning, not that anyone intended harm. Second failure mode: treating 0/5 as proof of scaffolding. Absence of crutch patterns is necessary but not sufficient (the support may simply be useless). Chapter 3 supplies the positive catalog.

## Worked Example: Finding the Highest-Reliance-Risk Touchpoint in DataWise 101

**Situation.** Week 2 of the design lab. The DataWise 101 steering committee, having read your Week 1 memo, has approved a pilot of the AI homework-help tutor — with your evaluation conditions attached. This week's task is the pre-pilot risk map: where, exactly, is this product most likely to become a crutch? (Scenario illustrative; product description per the Track A case package.)

**The problem as the designer sees it.** The tutor has six learner-facing touchpoints: (1) a homework chat for assigned problem sets; (2) a "check my answer" button; (3) a concept-explainer; (4) worked-example requests; (5) a pre-quiz readiness recommendation; (6) exam-week "study support" mode. All six look helpful. The committee wants one answer: which do we guard first?

**Process — including the dead ends.** First attempt: rank by usage projections. The vendor's data says the concept-explainer gets the most traffic, so guard that first. Dead end — traffic measures popularity, not reliance risk; the explainer scores low on the checklist (it explains concepts; it cannot complete graded work). The designer almost spent the entire guardrail budget on the safest feature.

Second attempt: run the checklist on the homework chat, the obvious villain. It scores 5/5 — answers on request, no reasoning gate, unrestricted, friction-free, no fading. Case closed? Not yet — touchpoint (2), "check my answer," complicates the ranking. It scores 3/5 on a naive read: the learner must produce an answer first, which looks like a reasoning requirement. But trace an actual usage sequence: a learner can submit a blank-guess answer, receive "not quite — here's where it goes wrong," and iterate until the button has dictated the solution stepwise. The "attempt requirement" is compliance-shaped, not reasoning-shaped — exactly the gate Chapter 6 teaches you to design against. Re-scored honestly: 4/5, with *higher* traffic than the chat at homework deadlines.

Third pass: the dark horse. Touchpoint (6), exam-week study mode, scores 4/5 — but its *performance context* is the unassisted exam itself, days away. Per the offloading ledger, this is the touchpoint where the tool is guaranteed absent at performance time and the offloaded process — retrieval practice, the single most desirable difficulty before an exam — is precisely the objective of studying.

**Resolution.** The risk map ranks: homework chat first (5/5, high traffic, graded work), exam-week mode second (worst possible offloading ledger), check-my-answer third (4/5 honest score, fake gate). The memo names the highest-reliance-risk touchpoint, the crutch patterns it instantiates (all five), and the trajectory metric the pilot must log from day one: help requests per problem per learner over time — the chess study's escalation curve operationalized. If that curve rises across the term, the design is failing learners who feel, as the chess and Bastani students felt, that it is helping.

**The lesson (one sentence).** Reliance risk is a property of a touchpoint's checklist score, its traffic, *and* its offloading ledger — never of its popularity or its tone.

**The limit.** The checklist ranks risk; it cannot measure realized harm — only trajectory metrics and an unassisted endpoint can. And it inherits the evidence base's limits: the escalation curve comes from a working paper in chess, and the fading pattern is extrapolated, not proven. You are designing ahead of the evidence and should say so — that sentence belongs in your Reliance Disclosure, not in a drawer.

**Track B extension.** Run the identical process on your own project: checklist scores per touchpoint, traffic estimates, offloading ledgers, one named highest-reliance-risk touchpoint, one trajectory metric. This memo is your project selection gate deliverable.

## Exercises

**1. The decision model (Understand).** Write the cost-benefit table for a single help-request moment, then for the accumulated semester policy. In ≤150 words, explain why awareness alone fails to fix the policy, citing the chess escalation data. (Objective 1.)

**2. The calibration brief (Understand/Evaluate — feeds Evidence Brief #2).** You receive three real headlines about the Kosmyna study — "ChatGPT is rotting your brain," "MIT study finds AI makes you dumber," "Small study hints at cognitive cost of AI writing" — plus the study's actual parameters. Write the one-paragraph Evidence Box entry: finding, endpoint type, sample limits, verification status, and the one study that would upgrade confidence. Your grade is your calibration: overclaiming and dismissal cost the same points.

**3. Crutch-pattern audit (Analyze — production exercise).** Using the Pattern Card, audit a provided photo-solver description ("snap a photo of any problem, get step-by-step solutions instantly, unlimited, with a friendly coach persona"). Mark each phrase against the five patterns, score each touchpoint, rank by reliance risk. Deliver the scored table plus a five-sentence summary a product manager would actually read.

**4. Highest-reliance-risk memo (Apply — Track B; Analyze — Track A).** Track B: produce the worked example's deliverable for your own project — touchpoint scores, the named highest-risk touchpoint, the patterns it instantiates, why it is risky for *your* population, and the trajectory metric that would detect escalation. Track A: the same memo for the DataWise 101 tutor, with one touchpoint re-scored the way the worked example re-scored "check my answer."

**5. Self-audit (ungraded, recommended).** Keep a one-week ledger of your own AI use against the offloading framework: for each use, what process did you trade away, and was it the point? Nobody collects this. You will know what you learned.

*Assessment notes:* **Project selection is due this week** (ungraded gate): Track A adopts the DataWise 101 case; Track B names a real AI integration you can access all term, profiled in one page using the Chapter 1 layer audit plus this week's risk memo (Exercise 4 satisfies the profile). You may switch tracks once, at Week 8. **Evidence Brief #2** (30 pts) covers the chess-academy OR Kosmyna study: finding, endpoint type, effect sizes, verification status — working-paper and single-source flags are mandatory content; Exercise 2 is the Kosmyna version's core.

## Withdrawal Test + Reliance Disclosure

**The Withdrawal Test (Chapter 2 template).** For the touchpoint you named highest-risk: *if the AI were removed the week before the course's highest-stakes unassisted performance, what could the learner do — and what has the current design done to make that more rather than less?* Three sentences: what the learner practiced with the AI present, what cognitive process that practice exercised (or bypassed — use the ledger honestly), and what evidence would show the difference. "We don't know, and the design gives us no way to know" is acceptable this week. It stops being acceptable in Week 6, when you can design the alternative.

**The Reliance Disclosure (Chapter 2 template).** Name (a) one decision in your risk memo that the evidence *constrained* — a touchpoint the checklist, the traffic data, or the offloading ledger forced you to re-rank, the way the worked example's fake reasoning gate forced a re-score; and (b) one reliance risk your memo leaves open — a touchpoint or population where you are designing ahead of the evidence (fading, reversibility, differential vulnerability), with the measurement that would close it. Track B bonus standard: cite project-specific evidence — your logs, your learners, a named constraint — not generic risk language.

## What Would Change My Mind

The chapter's central claim — shortcut-seeking under free access is rational, reliable, and not correctable by awareness, so guardrails must be structural — would require revision on either of two findings. First: a randomized study in which learners given unrestricted on-demand AI help *self-moderated* — flat or declining help-request trajectories and no unassisted deficit relative to structured-help controls — across more than one domain and age group; that would reopen the self-regulation hatch the chess academies closed, especially if a brief metacognitive intervention produced the effect (current evidence says awareness fails, but a *trained-strategy* success at scale would be genuinely new). Second, narrower but live: failure of the chess-academy working paper itself — if peer review or replication collapses the 64/30 split, the structural-guardrails argument falls back on the ITS gaming literature and Bastani's GPT Base condition: still convergent, but the escape-hatch closure downgrades from "closed by RCT" to "strongly indicated." We flag the dependency now because the book cannot apply softer standards to findings it likes.

## Still Puzzling

- **Is cognitive debt reversible?** If a learner has been GPT-Base-dependent for a year, does structured withdrawal restore capability? Nothing published. The gap sits directly under Chapter 14's withdrawal-test designs.
- **Does expertise protect?** Plausibly the crutch effect attenuates as domain knowledge grows — experts can evaluate AI output where novices can only accept it. Widely assumed, not established. The answer determines whether reliance guardrails should fade with competence (Chapter 6 assumes yes, and says so).
- **Who is most vulnerable, exactly?** Perception data (Klarin et al. 2024) points at adolescents with executive-function difficulties — populations that overlap, uncomfortably, with those most aggressively marketed to. Outcome data does not yet exist. Chapter 8 returns with better tools.
- **Twelve weeks of escalation — then what?** The chess curve was still rising at the study's end. Saturate, plateau, or compound? The most important unmeasured curve in the field.

## Chapter Summary

You can now explain the −17% instead of merely citing it. You can model a learner's help-request decision and show why each request is rational while the accumulated policy is ruinous — which kills exhortation as a remedy and mandates structural design. You can place GenAI inside the older offloading literature and ask the question that discriminates: which process is being offloaded, and was it the point? You can describe the cognitive-debt finding at its correct weight — candidate mechanism, single source, convergence-supported. You can derive the crutch effect from desirable-difficulties theory rather than treating it as an AI surprise. And you can run the Crutch-Default Checklist on a real product and defend a highest-reliance-risk ranking to a committee. What you cannot yet do is build the alternative. That is deliberate, and it is next.

## Key Terms

- **Crutch effect:** This book's label for the convergent pattern in which AI assistance inflates assisted performance while degrading unassisted capability.
- **Shortcut-seeking:** Choosing low-effort help whose benefits are immediate and whose learning costs are delayed and invisible — rational at each instance, ruinous as a policy.
- **Cognitive offloading:** Using external resources to reduce a task's processing demands; a trade of internal encoding for external access (Risko & Gilbert 2016).
- **Cognitive debt:** The candidate neural mechanism (Kosmyna et al.): accumulated reliance leaving the learner under-engaged when assistance is withdrawn. Single-source; convergence-supported.
- **Desirable difficulties:** Conditions (retrieval, spacing, interleaving, generation) that depress acquisition performance while strengthening retention and transfer (Bjork).
- **Productive failure:** Struggle before instruction, outperforming direct instruction on understanding and transfer despite worse in-struggle performance (Kapur).
- **Metacognitive laziness:** Offloading self-regulation itself — fewer evaluation and orientation behaviors during AI-supported work (Fan et al. 2025).
- **Gaming the system:** The ITS-era precedent — exploiting on-demand help to extract answers (Baker et al. 2004).
- **Default thesis:** The crutch is the zero-design outcome — what learner instinct and market gradient produce unless a design resists both.
- **Reliance trajectory:** Help-use over time per learner; a rising curve (the chess signature) is the earliest measurable crutch signal.

## Bridge

If the crutch is the default, the scaffold is a counter-design. Three RCTs show what it looks like.

## Further Reading

- **Risko, E. F., & Gilbert, S. J. (2016). Cognitive offloading. *Trends in Cognitive Sciences* 20(9), 676–688.** The framework that keeps this chapter from being a panic: offloading as ubiquitous, adaptive, metacognitively governed — and systematically mispriced.
- **Bjork, E. L., & Bjork, R. A. (2011). Making things hard on yourself, but in a good way.** The most readable entry into desirable difficulties; twenty minutes that predict half of this book's findings.
- **Fan, Y., et al. (2025). Beware of metacognitive laziness. *BJET*.** The cleanest AI-era demonstration that artifact improvement and learning are different outcomes — and that self-regulation itself can be offloaded.
- **Kosmyna, N., et al. (2025). Your Brain on ChatGPT. arXiv:2506.08872, with the authors' FAQ (MIT Media Lab project page) and the critical commentary (arXiv:2601.00856).** Read all three as a set: finding, anti-hype plea, critique — the full anatomy of a contested result.
- **Liljedahl, P. (2021). *Building Thinking Classrooms in Mathematics*.** Practitioner proof that shortcut-seeking predates AI — and classroom-level structures that protect thinking, many of which Chapter 3 translates into interaction design.

## LLM Exercise

*Copy the prompt below into the LLM of your choice. As in Chapter 1, it refuses to do your thinking — but this week it also makes you experience a reasoning gate from the learner's side. Notice your impulse to shortcut it. That impulse is the chapter.*

```
You are a crutch-pattern auditor for a graduate course on AI-mediated
learning design. You will help me stress-test my reliance-risk memo —
but you operate behind a reasoning gate, and you never do my analysis
for me.

RULES (follow strictly):
1. First, ask me to paste my completed risk memo: the product or
   project name, each learner-facing touchpoint scored against the five
   crutch patterns (answers-on-request / no reasoning requirement /
   unrestricted access / engagement-optimized friction removal / no
   fading), my named highest-reliance-risk touchpoint, my justification
   (score + traffic + offloading ledger), and my proposed reliance-
   trajectory metric.
2. REASONING GATE: if any touchpoint lacks a score, or the highest-risk
   choice lacks a justification that mentions BOTH score and traffic,
   or there is no trajectory metric — stop. Name what is missing and
   ask for it. Do not supply it. If I ask you to fill it in, decline
   and explain in one sentence why the gate exists (cite the chess-
   academy escalation finding).
3. Once the memo is complete, do exactly three things:
   a. Find one touchpoint where my score is too generous — where a
      "reasoning requirement" could be satisfied by compliance rather
      than reasoning — and ask me one question that exposes it.
   b. Challenge my highest-risk choice with the strongest case for a
      DIFFERENT touchpoint, in three sentences or fewer, then ask me to
      defend or revise my ranking.
   c. Ask me what my trajectory metric would show in week 12 if the
      design is failing — and what number would trigger a redesign.
4. End by asking me to write the two-sentence Reliance Disclosure for
   the memo (one evidence-constrained decision, one open risk). Do not
   draft it for me.

Begin by asking for my memo.
```

*Assessable artifact:* your original memo, the transcript, and your revised memo with the Reliance Disclosure. Grading attends to the re-scoring in 3a (did the challenge find a fake gate, and did you fix it?) and to whether your trajectory metric has a named trigger threshold, not just a name.
