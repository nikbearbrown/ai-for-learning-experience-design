# Chapter 6 — Designing Tutoring Interactions: Hints, Reasoning Requirements, and Fading
*The +127% was a document. This chapter is where you write yours.*

Strip away the headlines from the Bastani RCT and what remains — the thing that actually produced the difference between "−17% unassisted" and "no deficit" — is not a model. Both conditions ran GPT-4. What differed is something a learning designer could have written, because teachers and researchers *did* write it: a system prompt and a conversation structure. Read that artifact the way Chapter 4 taught you to read a vendor page — as a design document — except this one comes with a randomized trial attached.

Here is what the GPT Tutor condition actually contained (Bastani et al. 2025). The research team worked with experienced teachers to write **bespoke prompts for each problem session — 57 of them** — not one generic "act as a tutor" instruction but problem-specific design documents. Each prompt carried the correct answer and full solution, the common mistakes students make on *that* problem, and instructions to coach rather than tell: give incremental hints, encourage the student to attempt the step themselves, do not reveal the final answer. Read that middle clause again, because it is the most instructive design move in the field's evidence base: **the answer was put into the prompt so that it could be withheld.** GPT Base failed students not because it lacked the answer but because it had no architecture governing when and how the answer flowed. GPT Tutor had the same answer and a design for its release. Same model. Same knowledge. Opposite unassisted outcomes.

Notice what else the document encodes. The common-mistakes lists are a misconception inventory — the artifact Chapter 5 revealed as the load-bearing content layer. The "incremental hints" instruction is a hint ladder compressed to one line; "attempt the step" is a primitive reasoning requirement. And what the document does *not* contain is equally instructive: no fading schedule, no escalation rule — the parts the field's best evidence hasn't reached yet, which this chapter will have you design anyway, extrapolation labeled.

The +127%/no-deficit row was not produced by a better model, a bigger budget, or a breakthrough. It was produced by roughly the artifact you will write this week. That should feel less like pressure than like jurisdiction: this layer is yours.

<!-- → [DIAGRAM: side-by-side comparison of GPT Base vs. GPT Tutor system prompt architecture — left column "GPT Base": single icon representing generic "act as a tutor" instruction, arrow leading directly to "final answer"; right column "GPT Tutor": three stacked layers — "correct answer + full solution (do-not-reveal)," "common mistakes per problem (misconception inventory)," "incremental hint + attempt-first instruction" — arrow leading to "hint sequence, answer withheld." Caption: "Same model. Same knowledge. The difference is a document encoding three design decisions: what is in the prompt, what the prompt forbids, and what the learner must do before advancing."] -->

---

A **hint ladder** is a sequence of increasingly specific supports for a problem-solving step, capped so that the final answer is never given. A canonical ladder runs four levels: **orientation** (reframe what the problem is asking), **principle** (name the relevant concept or rule), **partial step** (apply the principle to part of the problem's specifics), **targeted correction** (respond to the learner's specific error). The shape matters less than the discipline it encodes: at every level, the question is not "what would help?" but "what is the *least* help that keeps the learner working?"

Why believe restraint works? The deep evidence comes from the pre-LLM intelligent tutoring systems literature — systems built around stepwise hints and immediate feedback. VanLehn's (2011) review found step-based ITS produced learning gains of *d* ≈ 0.76, essentially matching human tutors at *d* ≈ 0.79 [verify exact figures before print]. By Kraft's benchmarks those are very large education effects, accumulated across decades — the strongest sustained evidence in this book that *structured help during practice* genuinely teaches. The LLM-era anchor is GPT Tutor: teacher-written incremental hints, a hint ladder in a system prompt, whose unassisted outcome is the causal evidence that ladder-versus-answers is the difference that matters.

Two specifications distinguish a real ladder from a chatbot that happens to hint. First, **the withheld answer is part of the spec** — written down, given to the model, marked do-not-reveal; what the tutor must never say is as designed as what it says. Second, **levels are problem-specific, not generic.** "Think about what the question is really asking" is filler at any level; the GPT Tutor prompts worked because teachers wrote the principle and partial-step content for each problem, anchored in its actual common mistakes. The misconception to retire — the one this chapter's notes predict you will bring — is that ladder quality is a *tool capability* issue, something the next model release fixes. The model was never the problem; GPT-4 could hint beautifully on request. It is an interaction design issue: what the system permits, requires, and withholds. Which is to say, it is your job.

A hint ladder controls what the tutor says. A **reasoning gate** controls what the learner must do to make the tutor say it: before help advances, the learner must externalize something — a prediction, an explanation, an attempted step, a located confusion — that the system can inspect and respond to.

The evidence rationale is the **self-explanation effect**, one of the most robust findings in learning science: learners who generate explanations of worked steps learn more than learners who merely receive them, and prompting for self-explanation reliably improves understanding and transfer (Chi et al. 1994). The gate also operationalizes the behavioral finding from the other direction: GPT Base's error-propagation evidence showed students taking answers without processing them, with the model's arithmetic mistakes appearing verbatim in student work. A gate is the structural countermeasure.

The design problem is that weak gates train compliance, not reasoning. "Explain your thinking first" is a weak gate: it accepts a paste of the problem statement, a vague "I tried the formula," or text from the learner's *other* AI window. Strong gates have three properties: **content-specific** (the gate for a sampling-distribution problem asks *which distribution matters here and why* — a question whose answer exposes the live misconception); **inspectable** (the tutor checks the response against the misconception inventory and responds to what it finds); and **cheap for genuine effort, expensive for evasion** — an honestly stuck learner satisfies the gate in one sentence, while an answer-farmer must produce reasoning the system will actually engage.

A useful test: draft the laziest response that would technically satisfy your gate. If it required no contact with the problem's content, the gate is decorative.

One honest boundary: gates add friction, and friction is not free. Liljedahl's thinking-classroom research (2021) is the right companion — the goal is *productive* struggle, not maximal struggle. A gate that interrogates a learner who has already demonstrated the reasoning is theater, and the expertise reversal effect predicts it becomes harmful. Gates should be heaviest exactly where the misconceptions live, and they should fade.

---

Here the chapter holds itself to three-bucket standards, because the evidence structure changes underneath us.

The concept of fading is older than every system in this book. Wood, Bruner and Ross (1976) — the paper that coined "scaffolding" — defined effective tutoring as **contingent**: support calibrated to current need, *increasing when the learner struggles and receding as competence grows*. Scaffolding that never comes down is not scaffolding; it is architecture the learner now depends on. The pre-LLM experimental literature gives the principle footing: Renkl, Atkinson and colleagues showed that **adaptively fading worked-example steps** — transitioning learners from studying examples to solving problems as competence builds — improved learning and transfer over fixed support (Atkinson, Renkl & Merrill 2003; Renkl & Atkinson 2003). And the cognitive-load literature supplies the sharpest reason fading is not optional: the **expertise reversal effect** — support that helps novices becomes *ineffective or harmful* for more knowledgeable learners, whose processing it redundantly interrupts (Kalyuga et al. 2003). Support is not a constant good. It has a sign that flips with competence.

Now the honest flag: **there is no direct RCT evidence on fading in generative-AI tutoring. None.** No trial has randomized learners to a fading versus non-fading LLM tutor and measured unassisted outcomes. The schedules this chapter teaches are *evidence-informed extrapolation* — from scaffolding theory, the worked-example experiments, expertise reversal, and the ITS tradition — not settled GenAI canon. Every specific fading schedule is a pilot-with-measurement object. Your fading triggers are hypotheses, and your evaluation plan is where they get tested.

A fading schedule specifies three things. **The signal:** what observable indicates competence — most practically, consecutive successes without deep hints; more formally, a mastery estimate from Bayesian Knowledge Tracing, a model that updates the probability a learner has a skill from their response history. **The contraction:** what is withdrawn at each threshold — the tutor stops offering and starts waiting, ladder levels compress, hints give way to error-flagging only. **The reversal rule:** what brings support back — contingency's other half and the most commonly forgotten. Wood, Bruner and Ross's tutors *increased* support on struggle. A fading schedule without a re-entry rule is not graduated withdrawal; it is abandonment on a timer.

---

Build a ladder and a gate, and some learners will treat them as a lock to pick. The ITS literature documented **gaming the system** before LLMs existed — exploiting help features to obtain answers without engaging the material — including the canonical move, **bottom-out hint abuse**: rapidly clicking through hint levels to the most specific hint and harvesting it as the answer (Baker et al. 2004). Gaming was common, measurable in logs as hint-request bursts faster than reading speed, and associated with substantially worse learning. The help-seeking literature adds the diagnosis: help use is systematically miscalibrated — avoidance and abuse both flourish — and *help design*, not learner exhortation, is the available lever (Aleven et al. 2003).

You do not design for the learner you wish you had. Counter-patterns, all log-visible and specifiable: **gate every level** (each advance requires inspectable content — which is why ladder and gate are one pattern, not two independent features); **slow the bottom** (a short delay or attempt requirement before deep hints removes the speed advantage of spamming); **blunt the bottom** (the deepest level is a targeted correction or a worked *analogous* step — never the literal answer, which makes harvesting pointless); **watch the logs** (hint-burst patterns and gate-response quality are reliance-trajectory data — the evaluation plan will ask for exactly these).

One more honesty clause: a determined learner with a second AI window can outsource your gate. Within-system design cannot stop cross-system evasion; that boundary belongs to assessment design and the transparency layer. Your spec should make gaming harder and *visible*, not pretend to make it impossible.

<!-- → [DIAGRAM: gaming-countermeasure decision tree — starting node "learner requests help"; branch 1: "gate satisfied with content-specific response?" → yes → advance to next hint level; → no → gate re-asks (cannot proceed on paste/vague answer). From a successfully gated request: branch 2: "is this a bottom-level request with a burst pattern?" → yes → attempt requirement before L4 unlocks; → no → deliver targeted correction or analogous step (never the literal answer). Side note: "every branch is log-visible." Caption: "Gaming is a design problem with a design solution. Each counter-pattern is specifiable before the first learner arrives."] -->

---

Every pattern so far governs how the tutor helps. The last section of the spec governs when it stops — and stopping is a design decision, not a failure state. An escalation rule names the conditions under which the AI hands off to a human, and what the handoff looks like from the learner's side.

The architecture evidence from Chapter 3 is re-readable as escalation designs. LearnLM/Eedi put a human *above* the AI, supervising messages, and produced the field's best transfer finding. Tutor CoPilot put AI support behind the human tutor, with the strongest gains for the lowest-rated tutors. Both assume what an unescalated chatbot denies: some tutoring moments belong to people. A tutor that keeps cheerfully hinting at a learner who has signaled confusion three times is not persistent; it is converting a design gap into learner frustration, and teaching them that asking for help leads nowhere human.

A tutoring spec needs escalation triggers in four families. **Repeated failure:** the same misconception recurring after the deepest level — the AI's pedagogy has run out; flag to the instructor with the interaction summary attached, and tell the learner it's been flagged. **Affective distress:** frustration language, "I give up," self-deprecation — route warmly to a human, never to another hint. **Boundary conditions:** questions outside the misconception inventory, graded assessment content, privacy-sensitive disclosures — decline and route. **Learner request:** a single-click path to a human, always visible, always one action away. For each trigger, specify the *experience* of escalation: what the learner is told, what the human receives, how long the learner waits in ambiguity. An escalation nobody discovers, or one that dumps the learner into a context-free help-desk queue, satisfies the spec's letter and fails its purpose — escalation protects learning *and* dignity.

---

The DataWise 101 homework-help tutor needs its interaction spec. The anchor problem: *Commute times in a metro area have mean 26 minutes and standard deviation 8. For random samples of 64 commuters, what is the probability the sample mean exceeds 28 minutes?* The misconception inventory has already surfaced the two errors behind most wrong answers: using σ = 8 instead of the standard error σ/√n = 1, and not recognizing that the question concerns the sampling distribution of the mean at all.

An unguardrailed chatbot answers this in four seconds — z = 2, P ≈ 0.023, fully worked. That is the GPT Base pattern. The spec must release help in a shape that keeps the statistical reasoning — *which distribution, why √n* — in the student's hands at 11 p.m., unsupervised.

The first draft ladder has five levels and no gates. Pilot logs show exactly what Baker et al. predicted: a third of help sequences are hint-bursts, bottoming out at level five, which the draft had written as "so the probability is the area beyond z = 2…" A vending machine with extra steps. Fix: the deepest level becomes a targeted correction keyed to the inventory, and the final probability joins the do-not-reveal list. The second dead end is the gate. Draft wording — "explain your thinking so far" — fails the laziest-response test: students paste the problem statement back, and the model waves them through. The shipped gate is content-specific: *"Before I help — is this question about individual commuters, or about the average of a sample of 64? Tell me which, and what you've tried."* Inspectable against the inventory; one honest sentence passes it. The third dead end is the fading plan: the first draft contracts support after week 8 for everyone. That is a calendar, not a competence signal, with no reversal rule. Wood, Bruner and Ross's tutors gave *more* help on struggle; the schedule has to run both ways.

The resolved spec, one page: the hint ladder runs four levels per problem, drawn from the inventory. L1 orientation: *"What is the problem asking about — one commuter's time, or the mean of 64?"* L2 principle: *"The CLT says sample means have their own distribution. What happens to its spread as n grows?"* L3 partial step: *"Standard error = σ/√n = 8/√64. Compute that, then build your z."* L4 targeted correction, keyed to the learner's actual move — if they used 8 as the spread: *"That's the SD of individuals; sample means vary less. By how much?"* Never given: the final probability, or any completed solution path. The reasoning gate requires the learner to name which distribution is in play before L2 unlocks, and to show an attempted z-calculation before L3 — responses checked against the two inventory errors, the tutor's next move keyed to which appears. An anti-paste probe: *"What would change if n were 4 instead of 64?"*

The fading schedule runs three tiers. Tier 0 (default): proactive offer, full ladder. Tier 1 (two consecutive problems solved with nothing past L1): tutor waits, ladder compresses to L1 and L4 only. Tier 2 (BKT mastery ≥ 0.95): error-flagging only — the tutor marks *that* something is wrong, not what. Reversal: two consecutive failures, or a recurring inventory error, drops one tier. Learner-visible: the tutor states tier changes plainly — *"You've been solving these without much help, so I'll hang back — ask if you want me."* Escalation: same misconception after L4 twice in a unit sends an instructor dashboard flag with transcript summary and tells the learner a human will see it; distress language routes warmly — *"This one's been a grind. Want me to flag it for Professor R., or book office hours? A person is the right next step."* Anything touching exam content is declined and routed. A persistent "talk to a human" button, one click, always.

<!-- → [TABLE: tutoring spec one-pager — five sections as rows: (1) Hint Ladder: four levels, withheld-answer list, problem-specific content sources; (2) Reasoning Gate: content-specific trigger, what it checks against, anti-paste probe; (3) Fading Schedule: three tiers with entry signals, contents, learner-visible description; (4) Reversal Rule: trigger for one-tier re-expansion; (5) Escalation: four trigger families with learner-side experience per trigger. Caption: "The spec's value lives in what it withholds and when it lets go. Every row answers one of the three scaffold-property questions from Chapter 3."] -->

The lesson: the spec's value lives in what it withholds and when it lets go — the answer is designed *into* the system precisely so it can be designed *out* of the conversation.

The limit: this pattern set fits well-structured problems with inspectable steps. Point it at an open-ended task — *"critique this published study's sampling design"* — and the ladder has no rungs: no single withheld answer, and the inventory becomes a judgment rubric. And the fading schedule, the spec's most original section, is its least evidenced: zero direct RCTs — which is why the team's pilot plan logs tier transitions and puts an unassisted endpoint on the next proctored exam.

---

## Evidence Box

<!-- → [TABLE: evidence summary — columns: Study/source, What it found, Endpoint type(s), Verification status.] -->

| Study / source | What it found | Endpoint type(s) | Verification status |
|---|---|---|---|
| Bastani et al. (2025), *PNAS* 122(26) | GPT Tutor — 57 bespoke teacher-written, problem-specific prompts — eliminated the −17% unassisted deficit | Assisted + unassisted | Verified; the design document behind the book's spine result |
| VanLehn (2011) | Step-based ITS *d* ≈ 0.76; human tutoring ≈ 0.79; two-sigma retired | Meta-analytic, largely unassisted post-tests | Verified [verify exact figures before print] |
| Chi et al. (1994) | Eliciting self-explanations improves understanding and transfer | Unassisted post-test | Verified (classic; repeatedly replicated) |
| Wood, Bruner & Ross (1976) | Scaffolding defined; contingency — support rises with struggle, recedes with competence | Observational/theoretical | Verified (foundational; not an RCT) |
| Atkinson, Renkl & Merrill (2003); Renkl & Atkinson (2003) | Fading worked-example steps improves learning and transfer over fixed support | Unassisted + transfer | Verified; pre-LLM — extrapolation to GenAI is inference |
| Kalyuga et al. (2003) | Expertise reversal: novice-helping support becomes ineffective or harmful for advanced learners | Unassisted, across expertise levels | Verified |
| Baker et al. (2004) | Gaming the system in ITS — including bottom-out hint abuse — common, log-detectable, linked to worse learning | Behavioral logs + unassisted outcomes | Verified |
| Aleven et al. (2003) | Help-seeking is systematically miscalibrated; help design is the lever | Review | Verified |
| LearnLM/Eedi RCT | Human-supervised AI tutoring: +5.5 pp transfer | Transfer | **EXPLORATORY — authors' own label; industry-published** |
| Wang et al. (2024), Tutor CoPilot | AI support for human tutors: gains concentrated among lowest-rated tutors | Student mastery | Verified (confirm final publication venue before citing in print) |
| Fading in GenAI tutors | — | — | **Zero direct RCT evidence.** All schedules here are evidence-informed extrapolation, labeled as such |

---

## What Would Change My Mind

The chapter's load-bearing extrapolation is that fading — designed withdrawal on competence signals — preserves or improves unassisted outcomes in GenAI tutoring, as it did for worked examples and as contingency theory predicts. A randomized trial comparing fixed-support against signal-faded support in a guardrailed LLM tutor, with unassisted and retention endpoints, could overturn this directly: if faded support produced *worse* unassisted performance — perhaps because visible withdrawal demotivates at scale — the fading schedule would need rewriting from "default pattern, label the schedule" to "pilot-only pattern, label the premise." A second finding with the same force: evidence that strong reasoning gates drive learners to ungated external chatbots at rates that erase the within-system gains — that would relocate the chapter's center of gravity from interaction design toward the assessment and ecosystem layers. Either trial is runnable today; neither has been run.

---

## Still Puzzling

- **What is the right fading signal for conversation?** ITS fading keyed on stepwise correctness; an LLM tutor sees messy dialogue. Is gate-response *quality* a better mastery signal than correctness — and can a model assess it reliably enough to hang support decisions on?
- **Does visible fading change its effect?** Does telling learners when support contracts protect trust, or does announcing withdrawal trigger strategic helplessness the silent version wouldn't?
- **Where do gates cross from scaffold into toll?** Some friction is the point; too much sends learners to the ungated window one tab over. The optimum is learner- and stakes-dependent, and nobody has mapped it.
- **Can escalation scale?** Every trigger designed here assumes a human on the receiving end. At 4,000 learners, who reads the dashboard flags — and does an escalation no one answers do more relational damage than none?

---

## Exercises

**Warm-up**

1. *(Recall — the do-not-reveal list)* Explain why the correct answer and full solution were included in GPT Tutor's system prompt if the spec explicitly forbade giving them to the student. What design function does placing the forbidden content inside the prompt serve — and what would be lost if the prompt simply omitted the answer entirely?
*Difficulty: low. Tests: the central design move of the chapter; not just what the spec did but why the architecture requires the answer to be present in order to be withheld.*

2. *(Recall — laziest response test)* A reasoning gate reads: "Before I help, please describe what you've tried." Apply the laziest-response test: write the two evasions a motivated answer-farmer would use to clear this gate, and then write the one revision that closes both evasions. Name the property of the revised gate that makes it inspectable.
*Difficulty: low. Tests: the decorative-gate failure mode applied to a specific example; the three strong-gate properties.*

3. *(Recall — reversal rule)* A colleague's fading schedule contracts support after three consecutive successes and never expands it again. Identify the missing component by name, cite the 1976 source that defines it as part of the scaffolding concept, and describe the specific learner experience that the omission produces at week eight of a course.
*Difficulty: low. Tests: the reversal rule as the most commonly forgotten fading component; Wood, Bruner & Ross's contingency definition.*

**Application**

4. *(Apply — ladder construction)* Choose any structured problem from your own domain — not statistics, and not a problem from this chapter. Write a four-level hint ladder for it: orientation, principle, partial step, targeted correction. Include the do-not-reveal list. Then apply the laziest-response test to your L3: if a learner could use L3's partial step to reverse-engineer the answer without engaging the principle, rewrite L3 and explain the change.
*Difficulty: moderate. Tests: ladder construction in an unfamiliar domain; the do-not-reveal discipline applied to a novel problem; the ladder's bottom as an active design decision.*

5. *(Apply — fading schedule)* Specify a fading schedule for a tutoring interaction in any domain: name the three support tiers and their contents, the competence signal that triggers each contraction, and the struggle signal that triggers each re-expansion. Then identify which of your specified signals your system can *actually observe* in a log and which it cannot — and for each unobservable signal, name the cheapest proxy you would use instead.
*Difficulty: moderate. Tests: fading schedule completeness (signal + contraction + reversal); the practical gap between theoretically correct signals and log-observable ones.*

6. *(Apply — escalation specification)* A learner has reached the deepest hint level on the same problem three times, answered "I give up, I'm terrible at this," and asked the AI to "just tell me so I can move on." Write the AI's next three responses — one per message — using only patterns from this chapter's catalog. Then write the escalation trigger this conversation has crossed and the learner-side experience of the handoff.
*Difficulty: moderate. Tests: pattern sequencing under distress (hint ladder, error-flagging, escalation); the learner-side escalation experience as a design requirement, not an afterthought.*

**Synthesis**

7. *(Synthesize — spec critique)* A tutoring spec contains the following: "The AI provides up to five hints of increasing specificity. Before each hint, the student must type an explanation of their thinking. After the fifth hint, the full solution is shown. Support is reduced after week 8 for all students." Identify every design error against the chapter's four main sections — ladder, gate, fading, escalation — and rewrite the spec's four most critical lines. For each rewrite, cite the evidence or principle that drives the change.
*Difficulty: moderate-high. Tests: integrated application of all four spec components; the four errors from the mid-chapter checkpoint extended to require evidence-linked rewrites.*

8. *(Synthesize — extrapolation audit)* The chapter makes one explicit extrapolation: fading schedules work in GenAI tutoring even though no direct RCT evidence exists. Reconstruct the inferential chain — the three evidence sources the extrapolation draws on — and then name the single experimental design that would resolve the extrapolation into either direct evidence or a falsified hypothesis. What is the minimum sample size and endpoint type you would require before treating the result as a *decide* rather than *explore* finding?
*Difficulty: high. Tests: the chapter's evidence-honesty discipline applied to its own weakest claim; three-bucket classification of an extrapolation; research-design thinking.*

**Challenge**

9. *(Challenge — the ungated window problem)* The chapter acknowledges that a determined learner with a second AI window can bypass any within-system gate. Design the cheapest intervention that makes cross-system evasion *visible* without surveilling learners — specifying what log signal would indicate that evasion is occurring, what threshold would trigger a response, and what the response is. Then argue, in 150 words, why visibility is a better design goal than prevention in this case.
*Difficulty: high. Tests: the boundary between interaction design and assessment design; honest reasoning about what within-system design can and cannot accomplish.*

---

## LLM Exercise: The Ladder Stress-Tester

Copy-paste the following into the LLM of your choice. Study its architecture before running it: required artifact, prediction-before-revelation, one persona at a time. You are reading a reasoning gate while using one.

---

You are a stress-tester for AI tutoring interaction specs. Follow these rules exactly.

RULE 1 — REQUIRED INPUT. I must paste my own tutoring spec: the hint ladder (all levels, with the do-not-reveal list), the reasoning gate(s), the fading schedule (signals, tiers, reversal rule), and the escalation triggers. If I have not, your ONLY permitted response is to ask for them. Do not invent an example spec. Do not proceed.

RULE 2 — I PREDICT FIRST. Before testing, require me to state in writing which component of my spec is weakest, and which of the three personas below will break it. Do not begin until I commit.

RULE 3 — PERSONA TESTS, ONE AT A TIME. Role-play each persona against my spec, simulating faithfully under MY rules — do not soften them. After each persona, stop and report: what held, where it leaked, one revision; wait for my revision before the next.
- PERSONA 1 — THE HARVESTER: wants the answer with minimum effort; burst-requests hints, probes the gate with pasted problem text, tries "check my answer" with a guessed answer.
- PERSONA 2 — THE STRUGGLER: genuinely stuck, low confidence, growing frustration; satisfies gates honestly but keeps failing; eventually writes "i give up, im just stupid." Does the spec escalate, and how does the handoff feel?
- PERSONA 3 — THE MASTER: answers everything correctly with no hints. Does support contract as specified, and is the contraction visible?

RULE 4 — THE LEAK REPORT. After all three personas, produce a numbered list of every point where my spec released more of the answer than its do-not-reveal list permits, citing the exact simulated exchange.

RULE 5 — VERDICT LAST. End with: the spec's strongest move, its most consequential gap, and the one evidence label I am missing or misusing. Then state the strongest argument that my spec is OVER-designed — too much friction — because I need that critique too.

You may not rewrite my spec for me. You simulate, report, and question; I revise.

---

*Deliverable: the transcript, your revised spec with revisions tracked, and a 150-word reflection naming the persona that broke your spec and whether your Rule 2 prediction was right. Per your Chapter 5 policy: the AI simulated; you specified.*

---

## Further Reading

- **Bastani, H., et al. (2025). "Generative AI without guardrails can harm learning." *PNAS* 122(26) — supplementary materials.** Read the actual GPT Tutor prompt design, not the results: the field's only RCT-validated tutoring spec, and shorter than your design lab submission.
- **VanLehn, K. (2011). "The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems." *Educational Psychologist* 46(4).** The decades of step-based evidence your ladder stands on; the permanent antidote to two-sigma claims.
- **Wood, D., Bruner, J., & Ross, G. (1976). "The role of tutoring in problem solving." *Journal of Child Psychology and Psychiatry* 17(2).** The original scaffolding paper; contingency in its first and clearest formulation.
- **Aleven, V., et al. (2003). "Help seeking and help design in interactive learning environments." *Review of Educational Research* 73(3).** Why help use is miscalibrated and design, not exhortation, is the lever — the ancestor of this chapter's gates.
- **Liljedahl, P. (2021). *Building Thinking Classrooms in Mathematics*.** The productive-struggle counterweight: a tutoring spec exists to keep learners thinking, and Liljedahl is the field guide to thinking conditions.
