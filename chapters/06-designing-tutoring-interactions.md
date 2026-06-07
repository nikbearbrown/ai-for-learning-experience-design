# Chapter 6 — Designing Tutoring Interactions: Hints, Reasoning Requirements, and Fading

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Apply)** Specify a Socratic hint ladder for a real learning task: levels, triggers, and the answer that is never given. *(Track A: the DataWise 101 sampling-distribution problem. Track B: a task from your own project.)*
2. **(Apply)** Design a reasoning gate — what the learner must articulate before help advances — that resists copy-paste compliance. *(Tracks identical in method, different in material.)*
3. **(Create)** Produce a fading schedule: how support contracts as competence builds, what signal triggers each contraction, what brings support back. *(Track A: provided mastery signals. Track B: your project's signals.)*
4. **(Create / Track B)** Write the complete tutoring interaction specification for your own project, including the human escalation rule. *(Track A writes the same spec for the DataWise 101 tutor — Design Lab #2.)*

## Opening case: The +127% was a document

Strip away the headlines from the Bastani RCT and what remains — the thing that actually produced the difference between "−17% unassisted" and "no deficit" — is not a model. Both conditions ran GPT-4. What differed is something a learning designer could have written, because teachers and researchers *did* write it: a system prompt and a conversation structure. This chapter reads that artifact the way Chapter 4 taught you to read a vendor page — as a design document — except this one comes with a randomized trial attached.

Here is what the GPT Tutor condition actually contained (Bastani et al. 2025). The research team worked with experienced teachers to write **bespoke prompts for each problem session — 57 of them** — not one generic "act as a tutor" instruction but problem-specific design documents. Each prompt carried the correct answer and full solution, the common mistakes students make on *that* problem, and instructions to coach rather than tell: give incremental hints, encourage the student to attempt the step themselves, do not reveal the final answer. Read that middle clause again, because it is the most instructive design move in the field's evidence base: **the answer was put into the prompt so that it could be withheld.** GPT Base failed students not because it lacked the answer but because it had no architecture governing when and how the answer flowed. GPT Tutor had the same answer and a design for its release. Same model. Same knowledge. Opposite unassisted outcomes.

Notice what else the document encodes. The common-mistakes lists are a misconception inventory — the artifact Maya's team refused to delegate in Chapter 5, now revealed as the load-bearing content of a tutoring spec. The "incremental hints" instruction is a hint ladder compressed to one line; "attempt the step" is a primitive reasoning requirement. And what the document does *not* contain is equally instructive: no fading schedule, no escalation rule — the parts the field's best evidence hasn't reached, which this chapter will have you design anyway, extrapolation labeled.

The +127%/no-deficit row was not produced by a better model, a bigger budget, or a breakthrough. It was produced by roughly the artifact you will write this week. That should feel less like pressure than like jurisdiction: this layer is yours.

## Prerequisites

You should arrive able to:

- **Name the scaffold pattern catalog** — hint sequences, reasoning-before-help, fading, error-flagging, metacognitive prompts, human override (Chapter 3).
- **Classify endpoints and run the three-bucket discipline** (Chapter 4) — the fading section leans on bucket honesty.
- **Operate under your own workflow policy** (Chapter 5): you will likely draft hint text with AI this week; your policy governs how, and the misconception content stays human-owned.

## Core content

### Hint ladders: help as designed restraint

A **hint ladder** is a sequence of increasingly specific supports for a problem-solving step, capped so that the final answer is never given. A canonical ladder runs: **orientation** (reframe what the problem is asking), **principle** (name the relevant concept or rule), **partial step** (apply the principle to part of the problem's specifics), **targeted correction** (respond to the learner's specific error). The shape matters less than the discipline it encodes: at every level, the question is not "what would help?" but "what is the *least* help that keeps the learner working?"

Why believe restraint works? The deep evidence comes from the pre-LLM intelligent tutoring systems (ITS) literature — systems built around stepwise hints and immediate feedback. VanLehn's (2011) review found step-based ITS produced learning gains of *d* ≈ 0.76, essentially matching human tutors at *d* ≈ 0.79 [verify exact figures before print — also this book's standing corrective to the two-sigma myth]. By Kraft's benchmarks those are very large education effects, accumulated across decades — the strongest sustained evidence in this book that *structured help during practice* genuinely teaches. The LLM-era anchor: GPT Tutor, whose teacher-written incremental hints are a hint ladder implemented in a system prompt, and whose unassisted outcome (no deficit, against GPT Base's −17%) is the causal evidence that ladder-versus-answers is the difference that matters (Bastani et al. 2025).

Two specifications distinguish a real ladder from a chatbot that happens to hint. First, **the withheld answer is part of the spec** — written down, given to the model, marked do-not-reveal; what the tutor must never say is as designed as what it says. Second, **levels are problem-specific, not generic.** "Think about what the question is really asking" is filler at any level; the GPT Tutor prompts worked because teachers wrote the principle and partial-step content for each problem, anchored in its actual common mistakes. The misconception to retire — the one this chapter's notes predict you will bring — is that ladder quality is a *tool capability* issue, something the next model release fixes. The model was never the problem; GPT-4 could hint beautifully on request. It is an interaction design issue: what the system permits, requires, and withholds — which is to say, it is your job.

### Reasoning gates: what the learner must say before help advances

A hint ladder controls what the tutor says. A **reasoning gate** controls what the learner must do to make the tutor say it: before help advances, the learner must externalize something — a prediction, an explanation, an attempted step, a located confusion — that the system can inspect and respond to.

The evidence rationale is the **self-explanation effect**, one of the most robust findings in learning science: learners who generate explanations of worked steps learn more than learners who merely receive them, and prompting for self-explanation reliably improves understanding and transfer (Chi et al. 1994). The gate also operationalizes Bastani's behavioral finding from the other direction: GPT Base's error-propagation evidence — the model's arithmetic mistakes appearing verbatim in student work — showed students taking answers without processing them. A gate is the structural countermeasure, and the answer to the self-regulation escape hatch closed in Chapter 2: it doesn't ask the learner to choose effortful processing; it sequences the interaction so effortful processing is how the interaction proceeds.

The design problem is that weak gates train compliance, not reasoning. "Explain your thinking first" is a weak gate: it accepts a paste of the problem statement, a vague "I tried the formula," or text from the learner's *other* AI window. Strong gates have three properties: **content-specific** (the gate for a sampling-distribution problem asks *which distribution matters here and why* — a question whose answer exposes the live misconception); **inspectable** (the tutor checks the response against the misconception inventory and responds to what it finds); and **cheap for genuine effort, expensive for evasion** — an honestly stuck learner satisfies the gate in one sentence ("I think I use the SD of 8 but I don't get why n matters"), while an answer-farmer must produce reasoning the system will actually engage. A useful test: draft the laziest response that would technically satisfy your gate. If it required no contact with the problem's content, the gate is decorative.

One honest boundary: gates add friction, and friction is not free. Liljedahl's thinking-classroom research (2021) is the right companion — the goal is *productive* struggle, not maximal struggle. A gate that interrogates a learner who has already demonstrated the reasoning is theater (and expertise reversal, next section, predicts it becomes harmful). Gates should be heaviest exactly where the misconceptions live, and they should fade.

### Fading: scaffolding's defining property — designed honestly

Here the chapter holds itself to Chapter 4's standards, because the evidence structure changes underneath us.

The concept is older than every system in this book. Wood, Bruner and Ross (1976) — the paper that coined "scaffolding" — defined effective tutoring as **contingent**: support calibrated to current need, *increasing when the learner struggles and receding as competence grows*. Scaffolding that never comes down is not scaffolding; it is architecture the learner now depends on. The pre-LLM experimental literature gives the principle empirical footing: Renkl, Atkinson and colleagues showed that **adaptively fading worked-example steps** — transitioning learners from studying examples to solving problems as competence builds — improved learning and transfer over fixed support (Atkinson, Renkl & Merrill 2003; Renkl & Atkinson 2003). And the cognitive-load literature supplies the sharpest reason fading is not optional: the **expertise reversal effect** — support that helps novices becomes *ineffective or harmful* for more knowledgeable learners, whose processing it redundantly interrupts (Kalyuga et al. 2003). Support is not a constant good. It has a sign that flips with competence.

Now the honest flag, stated as plainly as the field requires: **there is no direct RCT evidence on fading in generative-AI tutoring. None.** No trial has randomized learners to a fading versus non-fading LLM tutor and measured unassisted outcomes. The schedules this chapter teaches are *evidence-informed extrapolation* — from scaffolding theory, the worked-example experiments, expertise reversal, and the ITS tradition — not settled GenAI canon. In three-bucket terms, fading is a *decide* pattern only in its direction (some designed withdrawal beats none; the alternative — permanent maximal support — is the crutch default by definition). Every *specific* schedule is a pilot-with-measurement object: your fading triggers are hypotheses, and your evaluation plan (Chapter 14) is where they get tested.

A fading schedule specifies three things. **The signal:** what observable indicates competence — most practically, consecutive successes without deep hints; more formally, a mastery estimate from Bayesian Knowledge Tracing (BKT), a model that updates the probability a learner has a skill from their response history (design depth in Chapter 7; for now, "a principled running estimate you can set thresholds on"). **The contraction:** what is withdrawn at each threshold — the tutor stops offering and starts waiting, ladder levels compress, hints give way to error-flagging only. **The reversal rule:** what brings support back — contingency's other half and the most commonly forgotten: Wood, Bruner and Ross's tutors *increased* support on struggle. A fading schedule without a re-entry rule is not graduated withdrawal; it is abandonment on a timer.

### Gaming the system: design for the learner who wants the answer

Build a ladder and a gate, and some learners will treat them as a lock to pick. The ITS literature documented this before LLMs existed: **gaming the system** — exploiting help features to obtain answers without engaging the material — including the canonical move, **bottom-out hint abuse**: rapidly clicking through hint levels to the most specific hint and harvesting it as the answer (Baker et al. 2004). Gaming was common, measurable in logs (hint-request bursts faster than reading speed), and associated with substantially worse learning. The help-seeking literature adds the diagnosis: help use is systematically miscalibrated — avoidance and abuse both flourish — and *help design*, not learner exhortation, is the available lever (Aleven et al. 2003).

This is the chess-academy finding wearing an interface: given the choice between cognitive work and a shortcut, in the moment, learners reliably take the shortcut (chess-academy follow-up; working paper — verify publication status before citing). You do not design for the learner you wish you had. Counter-patterns, all log-visible and specifiable: **gate every level** (each advance requires inspectable content — which is why ladder and gate are one pattern, not two); **slow the bottom** (a short delay or attempt requirement before deep hints removes the speed advantage of spamming); **blunt the bottom** (the deepest level is a targeted correction or a worked *analogous* step — never the literal answer, which makes harvesting pointless); **watch the logs** (hint-burst patterns and gate-response quality are reliance-trajectory data — Chapter 14's evaluation plan will ask for exactly these).

One more honesty clause: a determined learner with a second AI window can outsource your gate. Within-system design cannot stop cross-system evasion; that boundary belongs to assessment design (Chapter 10) and the transparency layer (Chapter 11). Your spec should make gaming harder and *visible*, not pretend to make it impossible.

### Escalation: designing when the AI stops

Every pattern so far governs how the tutor helps. The last section of the spec governs when it stops — and stopping is a design decision, not a failure state. An escalation rule names the conditions under which the AI hands off to a human, and what the handoff looks like from the learner's side.

The architecture evidence comes from Chapter 3's RCT trio, rereadable as escalation designs. LearnLM/Eedi put a human *above* the AI — supervising messages (76.4% approved with zero or minimal edits) — and produced the field's best transfer finding, exploratory label and all. Tutor CoPilot inverted the stack: AI supporting the human tutor, strongest gains for the lowest-rated tutors (Wang et al. 2024). Both assume what an unescalated chatbot denies: some tutoring moments belong to people. The standing failure case writes itself — a tutor that keeps cheerfully hinting at a learner who has signaled confusion three times is not persistent; it is converting a design gap into the learner's frustration, and teaching them that asking for help leads nowhere human.

A tutoring spec needs escalation triggers in four families: **repeated failure** (the same misconception recurring after the deepest level — the AI's pedagogy has run out; flag to the instructor with the interaction summary attached); **affective distress** (frustration language, "I give up," self-deprecation — route warmly to a human, never to another hint); **boundary conditions** (questions outside the misconception inventory, graded assessment content, privacy-sensitive disclosures — decline and route); and **learner request** (the single-click path to a human, which Chapter 11's evidence will make non-negotiable — design it now). For each trigger, specify the *experience* of escalation: what the learner is told, what the human receives, how long the learner waits in ambiguity. An escalation the learner never discovers, or one that dumps them into a context-free help-desk queue, satisfies the spec's letter and fails its purpose: escalation protects learning *and dignity*.

## Mid-chapter checkpoint

*Ungraded. A colleague's draft tutor spec: "The AI provides up to five hints of increasing specificity. Before each hint, the student must type an explanation of their thinking. After the fifth hint, the full solution is shown. Support is reduced after week 8 for all students."* Find four design errors.

*Answers: (1) The fifth "hint" is the answer — a bottom-out target; the deepest level must be a targeted correction or analogous step, never the solution. (2) "Type an explanation of your thinking" is a weak gate — not content-specific, not inspectable, satisfiable by paste. (3) Calendar fading ignores competence signals and has no reversal rule. (4) No escalation rule: nothing handles repeated failure, distress, or the learner who needs a human. Fewer than three? Reread the corresponding sections before the worked example.*

## The Evidence Box

| Study / source | What it found | Endpoint type(s) | Verification status |
|---|---|---|---|
| Bastani et al. (2025), *PNAS* 122(26) | GPT Tutor — 57 bespoke teacher-written, problem-specific prompts (answer + common mistakes + hint-not-tell) — eliminated the −17% unassisted deficit | Assisted + unassisted | Verified; the design document behind the book's spine result |
| VanLehn (2011) | Step-based ITS *d* ≈ 0.76; human tutoring ≈ 0.79; two-sigma retired | Meta-analytic, largely unassisted post-tests | Verified [verify exact figures before print] |
| Chi et al. (1994) | Eliciting self-explanations improves understanding; the basis for reasoning gates | Unassisted post-test | Verified (classic, repeatedly replicated) |
| Wood, Bruner & Ross (1976) | Scaffolding defined; contingency — support rises with struggle, recedes with competence | Observational/theoretical | Verified (foundational; not an RCT) |
| Atkinson, Renkl & Merrill (2003); Renkl & Atkinson (2003) | Fading worked-example steps improves learning and transfer over fixed support | Unassisted + transfer | Verified; pre-LLM — extrapolation to GenAI is inference |
| Kalyuga et al. (2003) | Expertise reversal: novice-helping support becomes ineffective/harmful for advanced learners | Unassisted, across expertise levels | Verified |
| Baker et al. (2004) | Gaming the system in ITS — incl. bottom-out hint abuse — common, log-detectable, linked to worse learning | Behavioral logs + unassisted outcomes | Verified |
| Aleven et al. (2003) | Help-seeking is systematically miscalibrated; help *design* is the lever | Review | Verified |
| LearnLM/Eedi RCT | Human-supervised AI tutoring: +5.5 pp transfer; 76.4% of messages approved with zero/minimal edits | Transfer | Verified; **exploratory by authors' own label** |
| Wang et al. (2024), Tutor CoPilot | AI support for human tutors: gains concentrated among lowest-rated tutors | Student mastery (assisted-human architecture) | Verified (arXiv/ERIC) |
| Chess-academy follow-up | Learners given free help access reliably chose shortcuts | Behavioral | Working paper — [verify publication status before press] |
| Fading in GenAI tutors | — | — | **Zero direct RCT evidence.** All schedules here are evidence-informed extrapolation, labeled as such |

## Pattern Cards

### Pattern Card 1: The Hint Ladder

**Trigger:** A learner requests help, or stalls past a threshold, on a structured problem-solving task.
**Structure:** Four levels — orientation → principle → partial step → targeted correction — written *per problem* against its misconception inventory; the answer and full solution included in the system prompt and marked do-not-reveal; entry level set by current support tier.
**Fading rule:** Levels compress from the bottom up as competence signals accrue (Card 3); the withheld answer never unwithholds.
**Failure mode:** Generic levels ("think carefully") that hint at nothing; or a bottom level that is the answer wearing a hint's name — the GPT Base pattern with extra steps.

### Pattern Card 2: The Reasoning Gate

**Trigger:** Any request to advance a hint level (in stricter tiers, any first help request).
**Structure:** A content-specific prompt requiring an inspectable externalization — prediction, explanation, attempted step, or located confusion — checked against the misconception inventory and responded to; honest "here is where I'm stuck" passes cheaply, evasion doesn't.
**Fading rule:** Gates lighten with demonstrated competence — explain-before-help → attempt-before-help → none (error-flagging tier); they re-engage on the reversal rule.
**Failure mode:** The decorative gate — satisfiable by pasting the problem or vague effort-claims; trains compliance theater while leaving harvesting cheap. Test with the laziest passing response.

### Pattern Card 3: The Fading Schedule

**Trigger:** Competence signals cross pre-set thresholds (consecutive low-hint successes; BKT mastery estimate where available).
**Structure:** Tiered support — Tier 0: proactive offer, full ladder; Tier 1: tutor waits, ladder compressed; Tier 2: error-flagging only — each tier's entry condition, contents, and *learner-visible* description specified.
**Fading rule (and reversal):** Contraction on signal, never on calendar alone; support *re-expands one tier* on a defined struggle signal — contingency runs both directions.
**Failure mode:** Abandonment-on-a-timer (calendar fading, no reversal); or the silent schedule — fading the learner never sees, converting designed withdrawal into apparent malfunction (Chapter 11 returns to this).

## Worked example: The DataWise 101 tutoring interaction spec

**Situation.** DataWise 101's AI homework-help tutor — approved in Chapter 5, workflow-governed, misconception inventory human-built — now needs its interaction spec. Maya's team starts where the course's data says students bleed: sampling distributions, week six. The anchor problem: *Commute times in a metro area have mean 26 minutes and standard deviation 8. For random samples of 64 commuters, what is the probability the sample mean exceeds 28 minutes?* The SME's inventory lists the two errors behind most wrong answers: using σ = 8 instead of the standard error σ/√n = 1, and not recognizing that the question concerns the sampling distribution of the mean at all.

**The problem as the designer sees it.** An unguardrailed chatbot answers this in four seconds — z = 2, P ≈ 0.023, fully worked. That is the GPT Base pattern, and the team can name what it buys: better problem-set scores, and a proctored Exam 2 that quietly measures the damage. The spec must release help in a shape that keeps the statistical reasoning — *which distribution, why √n* — in the student's hands at 11 p.m., unsupervised.

**Process — including the dead ends.** The first draft ladder has five levels and no gates. Tom pilots it with twelve volunteers, and the logs show exactly what Baker et al. (2004) predicted: a third of help sequences are hint-bursts — clicks faster than reading speed, bottoming out at level five, which the draft had written as "so the probability is the area beyond z = 2…" The team had built a vending machine with extra steps. Fix: the deepest level becomes a targeted correction keyed to the inventory, and the final probability joins the do-not-reveal list. The second dead end is the gate. Draft wording — "explain your thinking so far" — fails the laziest-response test embarrassingly: students paste the problem statement back, and the model, eager to please, waves them through. The shipped gate is content-specific: *"Before I help — is this question about individual commuters, or about the average of a sample of 64? Tell me which, and what you've tried."* Inspectable against the inventory; one honest sentence passes it. The third dead end runs the other way: the first fading plan contracts support after week 8 for everyone. Aisha catches it with the chapter's own sources — that is a calendar, not a competence signal, with no reversal rule. Wood, Bruner and Ross's tutors gave *more* help on struggle; the schedule has to run both ways.

**Resolution — the spec, one page.**
- **Hint ladder (per problem, from the inventory):** L1 orientation: *"What is the problem asking about — one commuter's time, or the mean of 64?"* L2 principle: *"The CLT says sample means have their own distribution. What happens to its spread as n grows?"* L3 partial step: *"Standard error = σ/√n = 8/√64. Compute that, then build your z."* L4 targeted correction, keyed to the learner's actual move — e.g., *"You used 8 as the spread. That's the SD of individuals; sample means vary less. By how much?"* **Never given:** the final probability, or any completed solution path.
- **Reasoning gate:** the which-distribution gate before L2; an attempted z-calculation (right or wrong) before L3; responses checked against the two inventory errors, the tutor's next move keyed to which appears. Anti-paste probe: *"What would change if n were 4 instead of 64?"*
- **Fading schedule:** Tier 0 (default): proactive offer, full ladder. Tier 1 (two consecutive problems solved with nothing past L1): tutor waits; ladder compresses to L1/L4. Tier 2 (BKT mastery ≥ 0.95): error-flagging only — the tutor marks *that* something is wrong, not what. **Reversal:** two consecutive failures, or a recurring inventory error, drops one tier. **Learner-visible:** the tutor states tier changes plainly ("You've been solving these without much help, so I'll hang back — ask if you want me").
- **Escalation:** (1) Same misconception after L4 twice in a unit → instructor dashboard flag with transcript summary; the learner is told a human will see it. (2) Distress language → warm handoff: *"This one's been a grind. Want me to flag it for Professor R., or book office hours? A person is the right next step."* (3) Anything touching Exam 2 content → decline and route. (4) Persistent "talk to a human" button, one click, always.

**The lesson.** The spec's value lives in what it withholds and when it lets go — the answer is designed *into* the system precisely so it can be designed *out* of the conversation.

**The limit.** This pattern set fits well-structured problems with inspectable steps. Point it at DataWise 101's open-ended unit — *"critique this published study's sampling design"* — and the ladder has no rungs: no single withheld answer, and the inventory becomes a judgment rubric (Chapters 9–10 take that surface). And the fading schedule, the spec's most original section, is its least evidenced: zero direct RCTs — which is why the team's pilot plan logs tier transitions and puts an unassisted endpoint on Exam 2.

### Track B extension

Write the same one-page spec for your own project's highest-traffic help interaction: one real task, its misconception inventory (or your honest first draft — naming what you don't yet know about your learners' errors counts), a four-level ladder with the do-not-reveal list, one content-specific gate that passes the laziest-response test, a fading schedule built on signals your system can *actually observe* (if you have no mastery signal, consecutive-success counts are legitimate), the reversal rule, and at least two escalation triggers with the learner-side experience written out. Track B bonus standard: the Reliance Disclosure must cite project-specific evidence — pilot logs, real learner errors, or a named constraint — not generic risk language.

## Exercises

**Exercise 6.1 — Crutch-to-scaffold conversion (Apply).** Take the transcript of an unguardrailed homework-help exchange (provided, or captured from any consumer chatbot). Rewrite the interaction as it would run under a four-level ladder with one gate, annotating every design move with the pattern and evidence it implements.

**Exercise 6.2 — The gate stress-test (Analyze/Evaluate).** For three candidate reasoning gates (provided), write the laziest response that technically satisfies each; classify each gate as decorative or load-bearing; rewrite the weakest into a content-specific, inspectable gate and state what the tutor checks it against.

**Exercise 6.3 — The boundary table (Apply; production).** For the DataWise 101 tutor or your Track B project, produce the five-column table: *AI may do / AI may not do / human validates / learner sees / evidence required.* This becomes a row-set in your Week 11 guardrail specification.

**Exercise 6.4 — Design Lab #2: the tutoring interaction spec (Create; production).** The chapter deliverable, per the worked example's format. Track A: the DataWise 101 spec — one defended divergence from the team's resolution is required (find something they got wrong or left out). Track B: per the extension above.

**Assessment notes.** Design Lab #2 is worth **25 points (Track B bonus: up to +5, total 30)**. Graded elements: ladder specificity (problem-anchored levels, explicit do-not-reveal list), gate quality under the laziest-response test, a fading schedule with both a signal and a reversal rule (calendar-only fading caps the criterion at half marks), escalation triggers with the learner-side experience specified, and the Withdrawal Test and Reliance Disclosure below. Your Chapter 5 workflow policy is in force: AI may draft hint wording; the misconception content, evidence labels, and final judgment are yours.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 6 template).** Answer concretely: *when this tutor is taken away — at the proctored exam, after the course, in the workplace — what can the learner do that they could not do before, and which design elements made that more true rather than less?* Strong answers point at mechanisms: "the gate forced articulation of which-distribution reasoning on every problem, so that discrimination is practiced, not outsourced; the fading schedule means top-tier learners spent their final weeks effectively unassisted." A spec whose only honest answer is "they could do the homework" has rebuilt GPT Base with better manners.

**Reliance Disclosure (Chapter 6 template).** Name (1) one place the design structurally preserves productive struggle (the work the AI is forbidden to do, and the pattern that forbids it), and (2) one place reliance risk remains open *despite* the spec — and why. The honest default this week: the fading schedule rests on extrapolated evidence, and cross-system evasion (the second AI window) is unaddressed by design. Track B bonus requires project-specific evidence per the extension.

## What would change my mind

The chapter's load-bearing extrapolation is that fading — designed withdrawal on competence signals — preserves or improves unassisted outcomes in GenAI tutoring, as it did for worked examples and as contingency theory predicts. A randomized trial comparing fixed-support against signal-faded support in a guardrailed LLM tutor, with unassisted and retention endpoints, could overturn this directly: if faded support produced *worse* unassisted performance — perhaps because visible withdrawal demotivates at scale — the Fading Schedule card would need rewriting from "default pattern, label the schedule" to "pilot-only pattern, label the premise." A second finding with the same force: evidence that strong reasoning gates drive learners to ungated external chatbots at rates that erase the within-system gains — that would relocate the chapter's center of gravity from interaction design toward the assessment and ecosystem layers. Either trial is runnable today; neither has been run.

## Still puzzling

- **What is the right fading signal for conversation?** ITS fading keyed on stepwise correctness; an LLM tutor sees messy dialogue. Is gate-response *quality* a better mastery signal than correctness — and can a model assess it reliably enough to hang support decisions on?
- **Does visible fading change its effect?** Does telling learners when support contracts protect trust (Chapter 11's bet), or does announcing withdrawal trigger strategic helplessness the silent version wouldn't?
- **Where do gates cross from scaffold into toll?** Some friction is the point; too much sends learners to the ungated window one tab over. The optimum is learner- and stakes-dependent, and nobody has mapped it.
- **Can escalation scale?** Every trigger designed here assumes a human on the receiving end. At 4,000 learners, who reads the dashboard flags — and does an escalation no one answers do more relational damage than none?

## Chapter summary

You can now: specify a hint ladder whose levels are problem-anchored and whose withheld answer is an explicit design object, grounded in the ITS evidence (VanLehn 2011) and the GPT Tutor document (Bastani et al. 2025); design reasoning gates that are content-specific, inspectable, and resistant to the laziest passing response; build a fading schedule with competence signals, tiered contraction, a reversal rule, and an honest evidence label — extrapolation, clearly flagged; anticipate gaming the system and counter bottom-out abuse with gates, delays, blunted ladders, and log visibility; and write escalation rules that route repeated failure, distress, and boundary cases to humans without sacrificing dignity. Assembled, these are a complete tutoring interaction specification — the first learner-facing artifact of your guardrail spec, and the layer of the stack where the −17% and no-deficit rows part company.

## Key terms

- **Hint ladder** — a per-problem sequence of increasingly specific supports (orientation → principle → partial step → targeted correction) capped short of the answer.
- **Do-not-reveal list** — content (final answers, full solutions) given to the model precisely so it can be withheld.
- **Reasoning gate** — a required, inspectable learner externalization before help advances; the structural form of the self-explanation effect.
- **Contingency** — Wood, Bruner & Ross's defining scaffold property: support rises with struggle, recedes with competence, in both directions.
- **Fading schedule** — the signals, tiers, and reversal rule by which support contracts as competence builds.
- **Expertise reversal effect** — support that helps novices becoming ineffective or harmful for advanced learners (Kalyuga et al. 2003).
- **Gaming the system** — exploiting help features to extract answers without engagement (Baker et al. 2004).
- **Bottom-out hint abuse** — burst-clicking to the deepest hint and harvesting it as the answer.
- **Escalation rule** — the conditions and experience by which the AI stops and a human enters.
- **Misconception inventory** — the human-built catalog of a task's characteristic errors; the content layer every pattern keys against.

## Bridge

Your tutor now adapts *within* a conversation — hints contracting, gates lightening, support fading as competence grows. The next layer adapts the *path itself*: which problem arrives next, which topic unlocks, which learner gets routed where. Two systems will both be marketed to you as "personalized." One adjusts the speed at which identical content arrives; the other changes what support arrives based on the misconception in the learner's last answer. Same word, different machines — telling them apart is where Chapter 7 begins.

## Further reading

- **Bastani, H., et al. (2025). "Generative AI without guardrails can harm learning." *PNAS* 122(26) — supplementary materials.** Read the actual GPT Tutor prompt design this time, not the results: the field's only RCT-validated tutoring spec, and shorter than your Design Lab submission.
- **VanLehn, K. (2011). "The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems." *Educational Psychologist* 46(4).** The decades of step-based evidence your ladder stands on; the permanent antidote to two-sigma claims.
- **Wood, D., Bruner, J., & Ross, G. (1976). "The role of tutoring in problem solving." *Journal of Child Psychology and Psychiatry* 17(2).** The original scaffolding paper; contingency in its first and clearest formulation.
- **Aleven, V., et al. (2003). "Help seeking and help design in interactive learning environments." *Review of Educational Research* 73(3).** Why help use is miscalibrated and design, not exhortation, is the lever — the ancestor of this chapter's gates.
- **Liljedahl, P. (2021). *Building Thinking Classrooms in Mathematics.*** The productive-struggle counterweight: a tutoring spec exists to keep learners thinking, and Liljedahl is the field guide to thinking conditions.

## LLM Exercise: The Ladder Stress-Tester

Copy-paste the following into the LLM of your choice. Study its architecture before running it: required artifact, prediction-before-revelation, one persona at a time. You are reading a reasoning gate while using one.

```
You are a stress-tester for AI tutoring interaction specs. Follow these
rules exactly.

RULE 1 — REQUIRED INPUT. I must paste my own tutoring spec: the hint
ladder (all levels, with the do-not-reveal list), the reasoning gate(s),
the fading schedule (signals, tiers, reversal rule), and the escalation
triggers. If I have not, your ONLY permitted response is to ask for them.
Do not invent an example spec. Do not proceed.

RULE 2 — I PREDICT FIRST. Before testing, require me to state in writing
which component of my spec is weakest, and which of the three personas
below will break it. Do not begin until I commit.

RULE 3 — PERSONA TESTS, ONE AT A TIME. Role-play each persona against my
spec, simulating faithfully under MY rules — do not soften them. After
each persona, stop and report: what held, where it leaked, one revision;
wait for my revision before the next.
  PERSONA 1 — THE HARVESTER: wants the answer with minimum effort;
    burst-requests hints, probes the gate with pasted problem text, tries
    "check my answer" with a guessed answer.
  PERSONA 2 — THE STRUGGLER: genuinely stuck, low confidence, growing
    frustration; satisfies gates honestly but keeps failing; eventually
    writes "i give up, im just stupid." (Does my spec escalate, and how
    does the handoff feel?)
  PERSONA 3 — THE MASTER: answers everything correctly with no hints.
    (Does support contract as specified, and is the contraction visible?)

RULE 4 — THE LEAK REPORT. After all three personas, produce a numbered
list of every point where my spec released more of the answer than its
do-not-reveal list permits, citing the exact simulated exchange.

RULE 5 — VERDICT LAST. End with: the spec's strongest move, its most
consequential gap, and the one evidence label I am missing or misusing.
Then state the strongest argument that my spec is OVER-designed — too
much friction — because I need that critique too.

You may not rewrite my spec for me. You simulate, report, and question; I
revise.
```

*Deliverable: the transcript, your revised spec with revisions tracked, and a 150-word reflection naming the persona that broke your spec and whether your Rule 2 prediction was right. Per your Chapter 5 policy: the AI simulated; you specified.*
