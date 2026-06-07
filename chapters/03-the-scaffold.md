# Chapter 3 — The Scaffold: Interaction Designs That Preserve Learning

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Name and define the scaffold-producing patterns — Socratic hint ladders, reasoning-before-help gates, support fading, error-flagging for self-correction, metacognitive prompts, human override, transfer-oriented sequencing — and state the evidence behind each.
2. **(Analyze)** Compare the three RCT architectures — constrain the AI, supervise the AI, support the human — and state when each fits a given product, population, and budget.
3. **(Analyze)** Explain the Tutor CoPilot equity signature — 9-point gains for students of the lowest-rated tutors — and why lifting the floor of human practice differs from raising the average.
4. **(Apply — both tracks; Track B on own project)** Redesign one crutch-leaning interaction from your Week 2 risk memo into a scaffold-leaning one, pattern by pattern, each design move annotated to its evidence.

## Opening Case: The Tutor Who Checked the AI's Work

The strongest positive finding in AI tutoring research so far did not come from an AI working alone. It came from an AI on a leash.

In UK secondary schools, students practicing mathematics on Eedi — a tutoring platform built around diagnostic questions — were randomized into three support conditions: static hints, human tutors working unaided, or an AI tutor built on Google DeepMind's LearnLM, *supervised by a human tutor* who reviewed each AI message before it reached the student (Eedi & Google DeepMind 2025, arXiv:2512.23633; exploratory RCT — the authors' own label, kept attached throughout).

The supervision proved light-touch: tutors approved LearnLM's messages with zero or minimal edits 76.4% of the time. The AI did most of the talking. The human did something else — quality assurance on pedagogy, catching the minority of moments where the AI's next move would have been wrong for *this* student.

On immediate outcomes, supervised-AI students performed at least as well as human-tutored students. Parity findings rarely make headlines. The headline is what happened *next*: facing a novel problem in the next topic — material the tutoring had not covered — supervised-AI students were **5.5 percentage points more likely to solve it** than students tutored by humans alone.

Read that against everything Chapters 1 and 2 taught you to fear. This is not an assisted score; the AI was gone. It is *transfer* — the most demanding endpoint type, the one that measures whether learning traveled. The field that produced the −17% also produced an AI-mediated design beating human tutoring on the endpoint that matters most.

Now the puzzle, gentler than Chapter 1's but deeper. The GPT Base students had a frontier model, unrestricted, and got worse. These students had a frontier model *plus a human checkpoint* — and beat humans alone on transfer. And a third study this chapter flips the arrangement entirely — AI whispering suggestions to human tutors — and the biggest gains went to students of the weakest tutors. Three places to put the human. Three positive results. One principle underneath, which this chapter names.

Hold the epistemic frame as you go: exploratory, industry-published (one author is the model's maker — a conflict to note, not a reason to dismiss), single context, unreplicated. The field's strongest positive finding *and* a finding on thin ice. Both stay on the table.

## Prerequisites

You can already:

- Run the Crutch-Default Checklist and defend a highest-reliance-risk ranking (Chapter 2 — this chapter redesigns what that checklist catches).
- Explain why shortcut-seeking is rational and why guardrails must be structural, not exhortative (Chapter 2).
- Tag any finding by endpoint type — assisted, unassisted, transfer, retention (Chapter 1).

## Core Content

### What a Scaffold Actually Is

The word "scaffolding" gets used in EdTech to mean roughly "any help." Recover the original meaning, because it contains the design discipline.

Wood, Bruner, and Ross (1976) coined the term watching tutors help children build a block pyramid they could not build alone. Scaffolding, in their analysis, was not doing the task for the child — it was a set of moves (recruiting attention, reducing degrees of freedom, marking critical features, controlling frustration, demonstrating only when needed) that kept the child doing *the parts within reach* while the tutor temporarily held the rest. The concept pairs with Vygotsky's zone of proximal development: the band of tasks a learner cannot do alone but can do with support. Help inside the band builds capability; "help" that simply performs the task replaces the learner instead of developing them.

Three properties make support a scaffold rather than a crutch (van de Pol, Volman & Beishuizen 2010):

1. **Contingency.** Support responds to *this learner's current state* — diagnosed from their attempt, not dispensed generically.
2. **Fading.** Support contracts as competence grows. A scaffold is temporary by definition.
3. **Transfer of responsibility.** The endpoint is the learner doing unaided what they once needed help for. The scaffold's success is measured by its own disappearance.

Run the Chapter 2 evidence through this definition and the course snaps into focus. GPT Base failed all three: not contingent (answers regardless of attempt), never faded, never transferred responsibility — it *accumulated* responsibility, every three to four moves by week twelve in the chess data. The crutch is not "too much help." It is help with the wrong *structure*. Which means the scaffold is not "less help" — it is help re-structured. And since the crutch is the default, everything in this chapter is **counter-design**: deliberate structure imposed against both learner instinct and market gradient.

One note on the metaphor: in construction, scaffolding comes down when the building stands. In most shipped AI products, nothing comes down, ever — fading is the least implemented and least studied of the three properties. That asymmetry returns in every Evidence Box from here to Chapter 14.

**Design pattern:** before approving any AI help feature, ask the three-property question: contingent on what diagnosis? Fading on what schedule? Transferring responsibility by when? A feature with no answers is a crutch wearing the word "scaffold."

### The Scaffold Pattern Catalog

Seven named patterns recur across the studies that produced no-deficit or positive results. Learn them as a catalog — each gets a specification-ready card at the end of the chapter, and Chapter 6 turns them into working specs.

**1. Socratic hint ladder.** Increasingly specific supports — orientation, relevant principle, partial worked step, targeted correction — that *never reach the final answer*. The answer never given is as much a design decision as the hints that are. Evidence: decades of structured-hint ITS tutoring approaching human-tutor effects (VanLehn 2011: ITS d≈0.76 vs. human d≈0.79); GPT Tutor's hints-not-answers policy.

**2. Reasoning-before-help gate.** The learner must articulate something — current approach, point of stuckness, what they've tried — before help advances. The gate raises the immediate cost of asking (Chapter 2's decision model, intervened on) and gives the AI the diagnostic material contingency requires. The hazard: compliance-shaped gates, satisfiable by pasting the problem or typing "I don't get it."

**3. Support fading.** Help contracts on a schedule keyed to competence signals — ladders shortening after consecutive unassisted successes, gates tightening as mastery rises. Flagged plainly: fading is canonical in the scaffolding and ITS literatures and *under-studied in GenAI tutoring*. We design it anyway, labeled as evidence-informed extrapolation, because a scaffold that never fades fails the definition.

**4. Error-flagging for self-correction.** The AI signals that an error exists — and ideally *where* — without performing the correction: "Check your assumption in step 2." This preserves the error-driven processing that produces learning (Kapur's mechanism). Contrast: error-*correcting*, which hands back a clean artifact and an unchanged learner (Fan et al. 2025's dissociation).

**5. Metacognitive prompts.** Designed self-monitoring moments: "Before the next hint — how confident are you in your setup, and why?" Evidence: the self-regulation literature, and Fan et al. (2025) by negative image — the ChatGPT condition's missing trace events were precisely evaluation and orientation.

**6. Human override and escalation.** A designed path by which a human enters the loop: the learner can reach one, the AI must summon one (persistent confusion, distress, high stakes), and a human can countermand the AI. The pattern LearnLM builds its entire result on; Chapter 11 hardens it into a floor requirement.

**7. Transfer-oriented sequencing.** The interaction aims beyond the current problem: closing prompts ("what kind of problem is this?"), varied surface features across practice, bridges to the next topic. Evidence: the LearnLM transfer endpoint is the existence proof that AI-mediated designs can win *at transfer* — and the interleaving literature (Chapter 2) predicts why.

The common test across all seven, this chapter's one-liner: **does the AI make the learner's next action more thoughtful, or merely faster?** Every pattern above passes. Every crutch pattern from Chapter 2 fails.

### Architecture One: Constrain the AI (GPT Tutor)

The three positive RCTs are not three products to copy. They are three *architectures* — three answers to where the pedagogical judgment lives.

In GPT Tutor, the judgment lived **inside the design, encoded in advance**. Read it as a design artifact and you find three components. An *interaction policy*: hints, never full answers — patterns 1 and 4, enforced by instruction. A *content layer*: teachers wrote, per problem, the correct solution and the common student mistakes, supplied to the model — so its hints were pedagogically grounded and far less error-prone than free generation (GPT Base's arithmetic errors propagated verbatim into student work; the content layer is what prevented that). An *interface frame*: a conversation structure presenting the AI as practice support, not an answer service.

The deflationary reading — "so it was just a system prompt" — gets the economics backwards. The prompt was the *delivery mechanism*; the payload was per-problem pedagogical labor. Constraining the AI is cheap at the interface and expensive in content engineering: someone must encode solutions, misconceptions, and hint sequences for every problem the tutor touches. (For the craft of building governance into prompt stacks — negative constraints, persona scoping, output policies — see the prompt-engineering text in this book's research pantry; Chapter 6 does the full build.)

**When it fits:** bounded, structured domains with a known problem set; products that must scale without human staffing; teams that have, or can buy, the content work. **When it doesn't:** open-ended domains where problems can't be enumerated, and contexts where nobody will maintain the content layer as the curriculum drifts — an unmaintained constraint layer decays toward GPT Base one edge case at a time.

**Design pattern:** constraint = interaction policy + content layer + interface frame. Specify all three or you have specified nothing.

### Architecture Two: Supervise the AI (LearnLM/Eedi)

In the Eedi trial, the judgment lived **in a human checkpoint at runtime**. The AI generated each tutoring message; a human reviewed it before the student saw it; 76.4% sailed through with zero or minimal edits, and the rest got fixed or replaced.

Notice what 76.4% tells a designer. It is an efficiency claim — one human can supervise many concurrent AI conversations, because most messages need only a glance — and a *necessity* claim in the other direction: roughly one message in four needed a human's touch. The architecture's entire value lives in catching that fraction. A supervision layer that rubber-stamps everything is Architecture One with worse latency; one that catches the right quarter is what produced the field's best transfer result.

Why might supervised AI *beat* unaided humans rather than merely match them? The trial can't fully say (exploratory, remember), but the design-relevant hypothesis is capacity reallocation: the AI supplies tireless, instant, reasonably good first-draft pedagogy; the human spends scarce attention only where needed. Neither alone has both properties.

**When it fits:** live tutoring and support operations that already employ humans; high-stakes or high-variance interactions where wrong AI moves are costly; organizations that want AI capability now and verified evidence later — every supervisory edit is a labeled example of the AI being wrong, an evaluation dataset accumulating for free. **When it doesn't:** fully self-serve products with no human workforce; latency-critical interactions; budgets that can't fund the supervisory seat. **The open question it carries:** students in the trial were not explicitly told whether their tutor's messages were AI-drafted — defensible methodologically, but a production system owes the learner disclosure, and Chapter 11 takes up what that disclosure must look like.

**Design pattern:** supervision = AI drafts, human approves/edits/replaces, every intervention logged.

### Architecture Three: Support the Human (Tutor CoPilot) — and the Equity Signature

In the Stanford Tutor CoPilot study, the judgment stayed **with the human — amplified**. Human tutors conducting live virtual math tutoring received real-time AI suggestions for their next pedagogical move (Wang et al. 2024, arXiv:2410.03017; roughly 900 tutors and 1,800 K–12 students [verify exact ns against the paper]). The students never talked to an AI at all.

Students of AI-supported tutors improved topic mastery by 4 percentage points overall. The number that should reorganize your design priorities is the subgroup result: **students of the lowest-rated tutors gained 9 points** — and the behavioral trace showed why: AI-supported tutors asked more guiding questions and gave fewer direct answers. The AI was not teaching students. It was nudging human practice toward the high-questioning, low-telling profile expert tutors already have — in real time, at the moment of need.

This is the **equity signature**, and it deserves its name. Most interventions help the already-advantaged most — better tutors use new tools better — so gaps widen even as averages rise. Tutor CoPilot inverted that: the weakest link gained most, because the AI supplied exactly the expertise the weakest tutors lacked. *Lifting the floor of human practice* is a different design objective from raising the average, and it is the one with equity built into its geometry. Note also which crutch question this architecture dodges: the *learner's* cognitive work is untouched — the AI restructures the *tutor's*. The crutch question doesn't vanish (does the suggestion stream deskill tutors over time?); it migrates to the professional, where Chapter 5's deskilling lens applies.

**When it fits:** any context where humans deliver the learning interaction — tutoring operations, TAs, instructors, workplace coaches — especially at scale with variable human quality. **When it doesn't:** self-serve products with no human in the interaction. There, the floor you can lift is the AI's own pedagogy — which routes you back to Architectures One and Two.

**Design pattern:** when human delivery quality varies, support the human before replacing them — the only architecture of the three whose best result is an equity result.

### Production Systems as Design Artifacts — and the Evidence-Maturity Trap

You will be asked, constantly, about products: "Should we do what Khanmigo does?" Learn to read products as design artifacts encoding hypotheses, not as evidence.

**Khanmigo** (Khan Academy, GPT-4-based) encodes the constrain-the-AI hypothesis in a consumer product: by design it withholds direct answers and uses guiding questions — patterns 1 and 2, visible in the product flow. **Carnegie Learning's MATHia** descends from twenty-plus years of cognitive-tutor research and carries the field's most mature causal evidence — the What Works Clearinghouse rates Cognitive Tutor Algebra I "potentially positive," with a commonly cited weighted effect around +0.04 at scale [verify — WWC's own language is "mixed effects," and Pane et al. report null year-1/≈+0.20 year-2; check the WWC record before citing the figure]. **Duolingo Max** wraps explanation and role-play in an engagement-optimized consumer app, with the strongest *consumer* evidence base — much of it Duolingo's own published research, a provenance flag you now know how to apply.

Here is the trap, stated as the inversion it is: **the most market-visible systems are not the best-evidenced, and the best-evidenced is barely market-visible.** Khanmigo and Duolingo Max have excellent product narratives and immature causal evaluation; MATHia has decades of evaluation and a modest, complicated effect estimate that would not survive a marketing meeting. Rank these products by evidence and you produce roughly the reverse of their public profile. (Week 4 opens inside this exact comparison.)

So read any product page with the designer's question set: what does the system *permit, forbid, require, reveal, log, and hand off*? Those six verbs extract the interaction design — the testable hypothesis — from the outcome language around it. "Students learn 2× faster" tells you nothing; a visible reasoning gate tells you a great deal, including exactly what to test.

**Design pattern:** treat every vendor description as a design document with the evidence section missing, and write the missing section as your test plan.

## Mid-Chapter Checkpoint

*Ungraded. Answer, then check.*

1. Name the three properties that make support a scaffold rather than a crutch, and the one least studied in GenAI tutoring.
2. Match each architecture to where the pedagogical judgment lives.
3. A vendor's tutor "requires students to attempt the problem before help unlocks." What must you check before crediting this as a reasoning gate?
4. Why is the Tutor CoPilot 9-point subgroup result arguably more important than its 4-point average?

*Redirect:* If (3) didn't trigger "check whether the gate is satisfiable by compliance — a blank guess, a pasted problem statement," reread pattern 2 alongside Chapter 2's worked example. If (4) felt like a trick, reread the equity-signature section: averages can rise while gaps widen; floor-lifting closes them.

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| GPT Tutor (hints-only policy + teacher-authored per-problem solutions and misconceptions): +127% assisted, **no unassisted deficit**; GPT Base: +48%/−17% | Bastani et al. 2025, *PNAS* 122(26) e2422633122 | Assisted + unassisted | **Verified, published RCT.** Aug 2025 correction affiliation-only. Single context (one school, Turkey, HS math); decisive on design-dependence, not on effect-size generalization |
| Human-supervised LearnLM: parity with human tutors on immediate outcomes; **+5.5 pp on novel problems in the next topic**; 76.4% of AI messages approved with zero/minimal edits | Eedi & Google DeepMind 2025, arXiv:2512.23633 | Immediate + **transfer** | **EXPLORATORY — authors' own label; industry-published** (model maker is co-author — provenance flag). Strongest positive finding in the field AND unreplicated; hold both |
| AI suggestions to live human tutors: +4 pp topic mastery overall; **+9 pp for students of lowest-rated tutors**; tutors shifted toward guiding questions, away from direct answers | Wang et al. 2024 (Tutor CoPilot), arXiv:2410.03017; ~900 tutors / ~1,800 students [verify ns] | Topic mastery (unassisted for the *learner* — the AI never touched the student) | **Verified RCT (preprint/working paper lineage — confirm final publication venue before citing in print).** The field's clearest equity-positive result |
| Structured-hint ITS tutoring approaches human tutoring effectiveness (d≈0.76 vs. d≈0.79) | VanLehn 2011, *Educational Psychologist* | Mostly unassisted post-tests across reviewed studies | **Verified; pre-GenAI.** The deep precedent for pattern 1 |
| Scaffolding = contingency + fading + transfer of responsibility | Wood, Bruner & Ross 1976; van de Pol et al. 2010 (review) | Conceptual/observational foundation | **Settled construct**, six decades of use; fading's GenAI instantiation remains extrapolation |
| Cognitive Tutor Algebra I at scale: WWC "potentially positive"; commonly cited weighted effect ≈ +0.04 | What Works Clearinghouse; Pane et al. | Unassisted course outcomes at scale | **PARTIALLY VERIFIED** [verify against WWC record — "mixed effects" language; Pane et al.: null year 1, ≈+0.20 year 2]. Cited here as the maturity benchmark, not as a verdict |

**What remains unsettled:** whether any of the three results replicates across domains, ages, and cultures (each is a single study); whether fading works in GenAI tutoring at all (no direct test); what the supervised-AI result becomes without supervision; whether suggestion streams deskill the tutors they support over years. Three RCTs is a foundation, not a science — precisely Week 4's subject.

## Pattern Card: The Scaffold Catalog

*Seven cards, specification-ready. Chapter 6 expands cards 1–3; Chapter 11 hardens card 6.*

---

**Card 1 — Socratic Hint Ladder**
**Trigger:** Help request or error/idle threshold, *after* the reasoning gate (Card 2) is satisfied.
**Structure:** Ordered levels — (L1) reorient to the question; (L2) name the relevant principle; (L3) partial worked step on *this* problem; (L4) targeted correction of the learner's error. One level per request; the full answer exists at no level.
**Fading rule:** After two consecutive problems solved at L≤1, open one level less specific; restore on sustained struggle.
**Failure mode:** Ladder-mining — clicking through levels to extract a near-answer. Counter: rate-limit levels; L3–L4 require a fresh attempt between levels.

---

**Card 2 — Reasoning-Before-Help Gate**
**Trigger:** Every help request, always first.
**Structure:** Learner states current approach, point of stuckness, or candidate next step — in their own words — before any hint renders. The AI's first response addresses *the stated reasoning*, not the problem.
**Fading rule:** Persists at all competence levels (diagnostic, not remedial); may shorten in form as the reliance trajectory flattens.
**Failure mode:** Compliance-shaped gates — satisfiable by "idk" or a pasted problem statement. Counter: input must reference the problem's actual content; near-empty input returns the gate, not a hint.

---

**Card 3 — Fading Schedule** *(evidence-informed extrapolation — flagged)*
**Trigger:** Competence signal: e.g., two consecutive unassisted successes on a skill, or mastery estimate crossing threshold.
**Structure:** Named support levels per skill (full ladder → short ladder → gate-only → none), with explicit promotion/demotion signals per transition.
**Fading rule:** This card *is* the catalog's fading rule; it must specify contraction *and* restoration (struggle re-expands support one level, never instantly to maximum).
**Failure mode:** Fading on usage instead of competence (punishing help-seeking), or never fading (the shipped-product default). Counter: the schedule and its trigger signals are written into the spec, or the design review fails.

---

**Card 4 — Error-Flagging for Self-Correction**
**Trigger:** Learner submits work containing an error.
**Structure:** Flag existence and (at higher support levels) location — "check step 2's assumption" — never the corrected version. Learner revises; AI re-evaluates.
**Fading rule:** Location specificity fades first (flag-only), then flagging defers ("check your own work first — then I'll tell you if I agree").
**Failure mode:** Drift into error-correcting under learner pressure — the Fan et al. dissociation: better artifact, unchanged learner. Counter: the corrected version is design-forbidden output, same status as Card 1's final answer.

---

**Card 5 — Metacognitive Prompts**
**Trigger:** Fixed structural moments: before first hint, after solution, before high-stakes attempts.
**Structure:** One-line self-monitoring questions — confidence ("how sure are you of your setup, and why?"), evaluation ("what would you check first if this is wrong?"), planning ("what kind of problem is this?").
**Fading rule:** Frequency fades with demonstrated self-regulation; never to zero before high-stakes moments.
**Failure mode:** Prompt spam — ritualized questions learners click through, training dismissal of metacognition. Counter: low frequency, varied wording, at least one prompt whose answer gates progression.

---

**Card 6 — Human Override and Escalation**
**Trigger:** Learner request (always available, one action away); AI-detected thresholds (persistent confusion, distress, high stakes); human-initiated countermand.
**Structure:** Visible path to a human; AI announces its limits honestly ("this needs your instructor — I've flagged it"); every escalation and override logged.
**Fading rule:** Never fades. The one card exempt from Card 3.
**Failure mode:** The buried escape hatch — a human path that exists but cannot be found. Counter: findability is tested with real learners, not asserted in the spec.

---

**Card 7 — Transfer-Oriented Sequencing**
**Trigger:** Solution completed; or practice-set assembly time (a design-time card as much as a runtime one).
**Structure:** Post-solution classification prompts ("what makes this a sampling-distribution problem?"); varied surface features across the practice set; explicit bridges to the next topic.
**Fading rule:** Does not fade — transfer orientation is the scaffold's destination, not its support level.
**Failure mode:** Blocked, surface-identical practice producing fluent in-set performance and nothing portable (the Liljedahl four-days-later collapse). Counter: audit the practice set for variation, not just the conversation.

---

## Worked Example: Redesigning the DataWise 101 Homework Chat

**Situation.** Week 3 of the design lab. Your Week 2 memo named the DataWise 101 tutor's homework chat the highest-reliance-risk touchpoint: 5/5 on the Crutch-Default Checklist. The steering committee has accepted the diagnosis and asked the obvious next question: *so what should it do instead?* (Scenario illustrative; product description per the Track A case package.)

**The problem as the designer sees it.** Convert a 5/5 crutch into a scaffold — without making the tutor so unhelpful that students abandon it for the unguarded ChatGPT tab one keystroke away. A scaffold nobody uses scaffolds nobody.

**Process — including the dead ends.** First attempt: prompt-level virtue. Add "never give direct answers; guide the student Socratically" to the system prompt and call it GPT Tutor. Two failures surface in the first hour of testing. The freely generated hints are sometimes statistically wrong — and Chapter 1's evidence says wrong hints get transcribed. Worse, the hints leak: asked the same question four ways, the "guidance" accumulates into a complete solution. The designer has rediscovered why GPT Tutor's authors built a content layer: *an interaction policy without grounded content is a polite answer machine.*

Second attempt: pick an architecture properly. Supervise the AI? DataWise has no tutor workforce — the economics fail. Support the human? The TAs staff office hours, not the 2 a.m. sessions where the chat lives — right architecture for the TAs (noted for later), wrong one for the chat. Constrain the AI it is — which turns out to be a *content engineering commitment*, not a prompt edit. DataWise 101 has a bounded, stable problem set (the condition under which Architecture One fits), so for each assigned set the instructor authors the solution path and the three most common misconceptions (the sampling-distribution/standard-error confusion first among them). Real labor; budgeted honestly as the project's main cost and load-bearing wall.

Third pass: assemble from cards, and catch a near-miss. Gate first (Card 2): help requires the student to state their approach or stuck-point. The first build accepts anything typed in the box — the exact compliance-shaped gate the designer flagged in someone else's product last week. Rebuilt: input must reference the problem's content or the gate re-asks. Then the ladder (Card 1), four levels, grounded in the authored content, rate-limited against mining. Error-flagging (Card 4): flag and locate, never fix. Metacognitive prompts (Card 5) at two moments only, the first draft's six cut as prompt spam. Escalation (Card 6): persistent confusion posts to the TA queue with the conversation attached. Transfer sequencing (Card 7): the post-solution classification question, plus a flag that problem set 4's items are surface-identical. Fading (Card 3): ladders shorten after two unassisted successes per skill — labeled in the spec, in writing, as the component built on extrapolated evidence.

**Resolution.** The memo ships with the spec, the re-score (5/5 → 1/5; unrestricted access remains deliberately — the gate restructures access rather than rationing it, converting every request into an attempt), the architecture rationale, the content-engineering budget line, and the two pilot metrics that will adjudicate it: the reliance trajectory (help requests per problem over time — must flatten or fall) and a delayed, tutor-unavailable problem set against a no-tutor comparison section (the unassisted endpoint).

**The lesson (one sentence).** A scaffold is assembled, not prompted: architecture chosen on context, patterns composed from the catalog, content engineered to ground them, the evidence-thin component labeled rather than hidden.

**The limit.** This redesign protects the homework chat — it does nothing about the unguarded ChatGPT tab, and if the gate's friction drives students there, the design has exported the crutch rather than cured it. The pilot's abandonment metric watches for that, but the deeper exposure is structural: Architecture One's protection is only as good as its content layer's coverage, and the moment the course adds problems faster than the instructor authors support, the tutor's edges decay toward GPT Base. The cost curve, not the interaction design, is where it fails.

**Track B extension.** Run the full sequence on the interaction your Week 2 memo flagged: architecture comparison with explicit rejections, card-by-card assembly, one compliance-shaped near-miss caught and documented, the evidence-thin component labeled, two pilot metrics named.

## Exercises

**1. The pattern recognizer (Understand/Analyze).** Take three tutoring transcripts (course pack: one Khanmigo-style, one photo-solver, one human tutor). Label every catalog pattern present — and every crutch pattern from Chapter 2. Deliver the labeled transcripts plus a three-sentence verdict per product using the permit/forbid/require/reveal/log/hand-off verb set.

**2. The architecture brief (Analyze).** For three scenarios — (a) a 10,000-learner self-serve coding course with no human staff; (b) a corporate onboarding program with 40 variable-quality facilitators; (c) a graduate seminar with one overloaded TA — recommend an architecture, state the condition that drives the choice, name what the architecture cannot do there, and specify the endpoint that would test it. One page total.

**3. The redesign (Apply — production exercise; Track A/B).** Execute the worked example's process on your own Week 2 highest-risk touchpoint (Track B) or on the DataWise tutor's "exam-week study mode" (Track A — a *different* touchpoint from the worked example's, with retrieval practice as the process at stake). Deliver: architecture choice with rejections, card-by-card spec, re-scored checklist, the labeled evidence-thin component, two pilot metrics. This artifact feeds your Week 6 tutoring interaction spec.

**4. The equity argument (Analyze/Evaluate — stretch).** In 300 words for a skeptical CFO: why the 9-point subgroup result might matter more to your organization than the 4-point average — and what data from your own context you would need before claiming the same signature.

*Assessment note:* **Evidence Brief #3** (30 pts) covers one of the three architecture RCTs (your choice): finding, architecture, endpoint types measured, effect sizes, verification status — including the exploratory/industry-published flags where they apply — and the single replication that would most upgrade confidence. The Evidence Box is the register; copying its row is not the assignment.

## Withdrawal Test + Reliance Disclosure

**The Withdrawal Test (Chapter 3 template).** For the interaction you redesigned in Exercise 3: *walk one named learner persona through their final week assuming the AI is removed on day one of that week.* What can they do unaided, and which card in your spec is responsible for that capability existing? Four sentences, one tracing a card to a capability (e.g., "the reasoning gate forced approach-articulation 40+ times this term; articulating an approach unaided is therefore practiced, not novel"). If no card maps to any capability, your redesign decorated the crutch.

**The Reliance Disclosure (Chapter 3 template).** Name (a) one design decision the evidence constrained — a pattern you wanted to skip or an architecture you wanted that the RCT evidence, the re-score, or the cost analysis overruled (the worked example's rejected supervise-the-AI choice is the model); and (b) one reliance risk left structurally open — honest candidates this week: fading (extrapolated evidence), the exported-crutch problem, content-layer decay — with the pilot measurement that would detect it. Track B bonus: cite your project's specifics; your problem set's size against your content-engineering budget is exactly the kind of named constraint the bonus requires.

## What Would Change My Mind

This chapter's central claim — that a nameable catalog of interaction patterns, deployed through one of three architectures, reliably preserves learning where unstructured AI help damages it — would require revision if the pattern–outcome link failed under direct test. The decisive finding: a well-powered RCT in which a faithfully implemented scaffold design (genuine reasoning gates, grounded hint ladders, no answer leakage — implementation verified by interaction logs, not vendor assertion) still produced a GPT-Base-style unassisted deficit against no-AI controls. One such result in a new domain would bound the catalog's generality; two would break the chapter's spine and relocate the problem from interaction design to something deeper — perhaps the mere availability of AI mediation, regardless of structure. A softer trigger: if the LearnLM transfer advantage and the Tutor CoPilot equity signature both fail replication while only the Bastani no-deficit result survives, the claim must shrink from "scaffolds can beat human-only support" to "scaffolds avoid harm" — a weaker sales pitch and a more honest book. Replications are the watch item; none of the three architectures has one yet.

## Still Puzzling

- **Does fading actually work in GenAI tutoring?** No published study has yet faded a GenAI tutor's support on a competence schedule and measured the withdrawal outcome. The book's most confident extrapolation — and still an extrapolation.
- **What is the supervision minimum?** LearnLM's humans touched ~24% of messages. Would 10% keep the result? 2%? Spot-checking? Architecture Two's cost curve — and therefore its scalability — hangs on an unmeasured dose-response relationship.
- **Does the suggestion stream deskill the tutors?** Tutor CoPilot lifted weak tutors' practice *while the AI was present*. Run the Withdrawal Test on the tutors themselves: after two years of real-time suggestions, are they better unaided tutors, or dependent ones? Nobody has measured the professionals with the instrument this book applies to learners.
- **Can a scaffold survive next to a free crutch?** Every guarded design competes with an unguarded ChatGPT tab. Whether well-designed friction retains learners against a frictionless alternative is a product question the learning literature cannot answer — and it may decide whether any of this matters at scale.

## Chapter Summary

You can now do the constructive half of what Chapters 1 and 2 made you able to diagnose. You can define a scaffold by its three properties — contingency, fading, transfer of responsibility — and disqualify "help" that merely performs the learner's work. You can name seven interaction patterns, attach each to its evidence, and apply the one-line test: more thoughtful, or merely faster? You can compare the three architectures by where they put the pedagogical judgment — encoded in advance, checked at runtime, or amplified in the human — and choose on context and cost rather than fashion. You can read the Tutor CoPilot subgroup result as a design objective — lift the floor — rather than a statistical footnote. You can read any product page as a hypothesis using six verbs, knowing that evidence rankings and visibility rankings currently invert. And you can execute a full crutch-to-scaffold redesign with the evidence-thin parts labeled instead of laundered. What you cannot yet do is weigh how thin the ice under all of it is — three RCTs, no replications, no longitudinal anything — and that is the next chapter's job.

## Key Terms

- **Scaffold:** Support that is contingent, fading, and responsibility-transferring (Wood, Bruner & Ross 1976; van de Pol et al. 2010).
- **Contingency:** Support calibrated to a diagnosis of this learner's current attempt, not dispensed generically.
- **Fading:** Scheduled contraction of support keyed to competence signals; the property least evidenced in GenAI tutoring.
- **Transfer of responsibility:** The scaffold's endpoint — the learner doing unaided what they once needed support for.
- **Socratic hint ladder:** Ordered, increasingly specific supports that never include the final answer.
- **Reasoning gate:** Required articulation of the learner's own thinking before help advances; fails when satisfiable by compliance.
- **Error-flagging:** Signaling an error's existence (and location) for the learner to correct — as against error-correcting, which fixes the artifact and skips the learner.
- **The three architectures:** Constrain the AI (judgment encoded in advance); supervise the AI (judgment checks runtime output); support the human (judgment stays human, amplified).
- **Equity signature:** Largest gains accruing to the weakest-supported learners — floor-lifting rather than average-raising.
- **Counter-design:** Deliberate structure imposed against the default, the crutch being the zero-design outcome.

## Bridge

Three RCTs is not a science. Before designing anything, the student needs to know exactly how thin the ice is — and how to read a vendor claim standing on it.

## Further Reading

- **Wood, D., Bruner, J. S., & Ross, G. (1976). The role of tutoring in problem solving. *Journal of Child Psychology and Psychiatry* 17(2), 89–100.** The origin of "scaffolding" — tutors and block pyramids; most of this chapter in embryo.
- **van de Pol, J., Volman, M., & Beishuizen, J. (2010). Scaffolding in teacher–student interaction. *Educational Psychology Review* 22(3), 271–296.** The review that distilled contingency–fading–transfer, before the AI arrived.
- **VanLehn, K. (2011). The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems. *Educational Psychologist* 46(4), 197–221.** Structured hint systems nearly matching human tutors — the deep precedent for Card 1.
- **Wang, R. E., et al. (2024). Tutor CoPilot. arXiv:2410.03017.** Read for the subgroup analysis above all — the clearest demonstration that *where the gains land* is a designable property.
- **Eedi & Google DeepMind (2025). Human-supervised AI tutoring exploratory RCT. arXiv:2512.23633.** The transfer finding with the authors' caveats intact; read the limitations section first, as practice for Week 4.

## LLM Exercise

*Copy the prompt below into the LLM of your choice. By now you will recognize its structure — reasoning gate, error-flagging, metacognitive prompt, no answer at any level. This week you are also its design critic: note one place where the prompt violates its own catalog. (There is at least one. Finding it is part of the artifact.)*

```
You are a scaffold-design reviewer for a graduate course on AI-mediated
learning design. You review crutch-to-scaffold redesigns against the
seven-pattern catalog (hint ladder, reasoning gate, fading schedule,
error-flagging, metacognitive prompts, human override, transfer
sequencing) and the three architectures (constrain the AI / supervise
the AI / support the human). You never produce the redesign yourself.

RULES (follow strictly):
1. First, ask me to paste BOTH: (i) the original crutch-leaning
   interaction with its five-pattern checklist score, and (ii) my own
   complete redesign — architecture choice with at least one explicitly
   rejected alternative, the catalog cards used, my fading rule, and my
   two pilot metrics.
2. REASONING GATE: if any of those elements is missing — or if I paste
   only the crutch and ask you to redesign it — stop and name what is
   missing. Do not draft any component for me, even as "an example."
3. Once my redesign is complete, do exactly four things:
   a. ERROR-FLAG, don't fix: name the one card most vulnerable to
      compliance-shaped satisfaction or answer leakage, and the
      vulnerability. Do not write the repair.
   b. State the strongest case that one of my rejected architectures
      fits better (three sentences max), then ask me to defend or
      switch.
   c. Ask me which component rests on the thinnest evidence, and
      whether my spec labels it as such.
   d. METACOGNITIVE PROMPT: ask what my two pilot metrics would show
      after one term if the redesign is quietly failing, and what
      thresholds would trigger revision.
4. End by asking me to revise the redesign myself and write its
   four-sentence Withdrawal Test answer. Produce neither.

Begin by asking for my two documents.
```

*Assessable artifact:* original interaction, initial redesign, transcript, revised redesign with its Withdrawal Test answer — plus one paragraph naming where this prompt violates its own catalog and how you would fix it. (Instructor's note: the most defensible answer is that the prompt has no fading rule — it gates a Week 15 student exactly as it gates a Week 3 student — but well-argued alternatives earn full credit.)
