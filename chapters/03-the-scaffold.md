# Chapter 3 — The Scaffold: Interaction Designs That Preserve Learning
*Three architectures, seven patterns, and the one test that tells them apart.*

The strongest positive finding in AI tutoring research so far did not come from an AI working alone. It came from an AI on a leash.

In UK secondary schools, students practicing mathematics on Eedi were randomized into three support conditions: static hints, human tutors working unaided, or an AI tutor built on Google DeepMind's LearnLM, *supervised by a human tutor* who reviewed each AI message before it reached the student (Eedi & Google DeepMind 2025, arXiv:2512.23633 — the authors' own label for this is "exploratory RCT," and that label stays attached throughout this chapter). The supervision proved light-touch: tutors approved LearnLM's messages with zero or minimal edits 76.4% of the time. The AI did most of the talking. The human did something else — quality assurance on pedagogy, catching the fraction of moments where the AI's next move would have been wrong for *this* student.

On immediate outcomes, supervised-AI students performed at least as well as human-tutored students. Parity findings rarely make headlines. The headline is what happened next: facing a novel problem in the *next* topic — material the tutoring had not covered — supervised-AI students were **5.5 percentage points more likely to solve it** than students tutored by humans alone.

Read that against everything Chapters 1 and 2 taught you to fear. This is not an assisted score; the AI was gone. It is *transfer* — the most demanding endpoint, the one that measures whether learning traveled. The field that produced the −17% also produced an AI-mediated design beating human tutoring on the endpoint that matters most.

Now the puzzle, gentler than Chapter 1's but deeper. The GPT Base students had a frontier model, unrestricted, and got worse. These students had a frontier model plus a human checkpoint — and beat humans alone on transfer. And a third study this chapter covers flips the arrangement entirely — AI whispering suggestions to human tutors — where the biggest gains went to students of the weakest tutors. Three places to put the human. Three positive results. One principle underneath, which this chapter names.

Hold the epistemic frame as you go: exploratory, industry-published (one author is the model's maker — a conflict to note, not a reason to dismiss), single context, unreplicated. The field's strongest positive finding *and* a finding on thin ice. Both stay on the table.

<!-- → [DIAGRAM: three-architecture comparison — three columns, one per architecture; row labels: "Where pedagogical judgment lives," "Who touches the learner," "Primary cost," "Best evidence source." Column 1 (Constrain the AI): "Encoded in advance / AI, constrained / Content engineering / GPT Tutor." Column 2 (Supervise the AI): "Human checkpoint at runtime / AI, reviewed / Human labor at scale / LearnLM/Eedi." Column 3 (Support the Human): "Human, amplified / Human / AI infrastructure / Tutor CoPilot." Caption: "The three architectures are not a quality ranking — they are three answers to a placement question: where does the judgment live?"] -->

---

The word "scaffolding" has been diluted in EdTech until it means roughly "any help." Recover the original meaning, because it contains the design discipline.

Wood, Bruner, and Ross (1976) coined the term watching tutors help children build a block pyramid they could not build alone. Scaffolding, in their analysis, was not doing the task for the child — it was a set of moves that kept the child doing *the parts within reach* while the tutor temporarily held the rest. The concept pairs with Vygotsky's zone of proximal development: the band of tasks a learner cannot do alone but can do with support. Help inside the band builds capability. Help that simply performs the task replaces the learner instead of developing them.

Three properties make support a scaffold rather than a crutch (van de Pol, Volman & Beishuizen 2010):

**Contingency.** Support responds to *this learner's current state* — diagnosed from their attempt, not dispensed generically. The AI that answers regardless of what the learner has tried is not contingent; it is a vending machine.

**Fading.** Support contracts as competence grows. A scaffold is temporary by definition. Nothing in construction terminology implies permanent scaffolding; the metaphor contains its own expiration date.

**Transfer of responsibility.** The endpoint is the learner doing unaided what they once needed help for. The scaffold's success is measured by its own disappearance.

Run the Chapter 1 evidence through this definition. GPT Base failed all three: not contingent (answers regardless of attempt), never faded, never transferred responsibility — it *accumulated* responsibility, every three to four moves by week twelve in the chess data. The crutch is not "too much help." It is help with the wrong *structure*. Which means the scaffold is not "less help" — it is help re-structured. And since the crutch is the default, everything in this chapter is **counter-design**: deliberate structure imposed against both learner instinct and market gradient.

One note on the metaphor: in construction, scaffolding comes down when the building stands. In most shipped AI products, nothing comes down, ever. Fading is the least implemented and least studied of the three properties — a gap that returns in every Evidence Box from here to the end of this book.

Before approving any AI help feature, ask the three-property question: contingent on what diagnosis? Fading on what schedule? Transferring responsibility by when? A feature with no answers to any of those questions is a crutch wearing the word "scaffold."

---

Seven named patterns recur across the studies that produced no-deficit or positive results. Each gets a specification card later in this chapter. Each gets the one-line test stated now: **does the AI make the learner's next action more thoughtful, or merely faster?** Every pattern below passes. Every crutch pattern from Chapter 2 fails.

**The Socratic hint ladder** delivers increasingly specific supports — orientation, relevant principle, partial worked step, targeted correction — that never reach the final answer. The answer *never given* is as much a design decision as the hints that are. The evidence behind this pattern runs deep: decades of structured-hint intelligent tutoring systems approaching human-tutor effectiveness (VanLehn 2011: ITS d≈0.76 vs. human d≈0.79). GPT Tutor's hints-not-answers policy is the modern instantiation of a mechanism with a twenty-year causal record.

**The reasoning-before-help gate** requires the learner to articulate something — current approach, point of stuckness, what they've tried — before help advances. The gate raises the immediate cost of asking and gives the AI the diagnostic material that contingency requires. The hazard, and it is easy to miss: a gate satisfiable by compliance. Typing "I don't know" or pasting the problem statement satisfies the letter of the gate and none of its logic.

**Support fading** contracts help on a schedule keyed to competence signals — ladders shortening after consecutive unassisted successes, gates tightening as mastery rises. Flagged plainly here: fading is canonical in the scaffolding and ITS literatures and under-studied in GenAI tutoring specifically. This chapter designs it anyway, labeled as evidence-informed extrapolation, because a scaffold that never fades fails the definition.

**Error-flagging for self-correction** signals that an error exists — and ideally where — without performing the correction: "Check your assumption in step 2." This preserves the error-driven processing that produces learning. Contrast error-*correcting*, which hands back a clean artifact and an unchanged learner — the dissociation Fan et al. (2025) documented: better artifact, unchanged understanding.

**Metacognitive prompts** build in designed self-monitoring moments: "Before the next hint — how confident are you in your setup, and why?" The evidence base is the self-regulation literature. The failure mode is prompt spam — ritualized questions learners click through, training dismissal of the very habit being built.

**Human override and escalation** provides a designed path by which a human enters the loop: the learner can request one, the AI must summon one at defined thresholds, and a human can countermand the AI's output. This is the pattern LearnLM's entire result is built on. It is also the one pattern in the catalog that never fades.

**Transfer-oriented sequencing** aims the interaction beyond the current problem: post-solution classification prompts ("what kind of problem is this?"), varied surface features across the practice set, explicit bridges to the next topic. The LearnLM transfer endpoint is the existence proof that AI-mediated designs can win at transfer. The interleaving literature predicts why — surface variation forces the discrimination that blocked practice quietly skips.

---

The three positive RCTs are not three products to copy. They are three architectures — three answers to where the pedagogical judgment lives.

**Architecture One — Constrain the AI.** In GPT Tutor, the judgment lived inside the design, encoded in advance. Read it as a design artifact and you find three components: an interaction policy (hints, never full answers — enforced by instruction); a content layer (teachers wrote, per problem, the correct solution and the common student misconceptions, supplied to the model so its hints were pedagogically grounded rather than freely generated); and an interface frame presenting the AI as practice support, not an answer service. The deflationary reading — "so it was just a system prompt" — gets the economics backwards. The prompt was the delivery mechanism; the payload was per-problem pedagogical labor. Constraining the AI is cheap at the interface and expensive in content engineering.

When it fits: bounded, structured domains with a known problem set; products that must scale without human staffing; teams that have or can buy the content work. When it doesn't: open-ended domains where problems can't be enumerated; contexts where nobody will maintain the content layer as the curriculum drifts — an unmaintained constraint layer decays toward GPT Base one edge case at a time.

**Architecture Two — Supervise the AI.** In the Eedi trial, the judgment lived in a human checkpoint at runtime. The AI generated each tutoring message; a human reviewed it before the student saw it; 76.4% sailed through with zero or minimal edits, and the rest got fixed or replaced. Notice what 76.4% tells a designer — it is an efficiency claim and a necessity claim in the same number. One message in four needed human touch. A supervision layer that rubber-stamps everything is Architecture One with worse latency; one that catches the right fraction is what produced the field's best transfer result.

Why might supervised AI beat unaided humans rather than merely match them? The trial can't fully say (exploratory), but the design-relevant hypothesis is capacity reallocation: the AI supplies tireless, instant, reasonably good first-draft pedagogy; the human spends scarce attention only where needed. Neither alone has both properties.

When it fits: live tutoring and support operations that already employ humans; high-stakes interactions where wrong AI moves are costly; organizations that want AI capability now and a growing evaluation dataset simultaneously — every supervisory edit is a labeled example of the AI being wrong. When it doesn't: fully self-serve products with no human workforce; latency-critical interactions. The open question it carries: students in the trial were not explicitly told whether their tutor's messages were AI-drafted — defensible methodologically, but a production system owes the learner disclosure.

**Architecture Three — Support the Human.** In Tutor CoPilot, the judgment stayed with the human, amplified. Human tutors conducting live virtual math tutoring received real-time AI suggestions for their next pedagogical move (Wang et al. 2024, arXiv:2410.03017; roughly 900 tutors and 1,800 K–12 students [verify exact ns against the paper]). The students never talked to an AI at all. Students of AI-supported tutors improved topic mastery by 4 percentage points overall. The number that should reorganize design priorities is the subgroup result: **students of the lowest-rated tutors gained 9 points** — and the behavioral trace showed why: AI-supported tutors asked more guiding questions and gave fewer direct answers. The AI was not teaching students. It was nudging human practice toward the high-questioning, low-telling profile expert tutors already have, in real time, at the moment of need.

This is the **equity signature**, and it deserves its name. Most interventions help the already-advantaged most — better tutors use new tools better, so gaps widen even as averages rise. Tutor CoPilot inverted that: the weakest link gained most, because the AI supplied exactly the expertise the weakest tutors lacked. *Lifting the floor of human practice* is a different design objective from raising the average, and it is the one with equity built into its geometry. Note also which crutch question this architecture sidesteps: the learner's cognitive work is untouched — the AI restructures the *tutor's* practice. The crutch question doesn't vanish; it migrates to the professional. Does the suggestion stream deskill tutors over time? Nobody has measured that yet, and it is the chapter's most important open question.

When it fits: any context where humans deliver the learning interaction — tutoring operations, TAs, instructors, workplace coaches — especially at scale with variable human quality. When it doesn't: self-serve products with no human in the interaction. There, the floor you can lift is the AI's own pedagogy, which routes you back to Architectures One and Two.

<!-- → [CHART: dot-plot showing three positive findings — x-axis: endpoint type (Assisted / Unassisted / Transfer); y-axis: effect vs. baseline; three dots per endpoint or "N/A" where not measured. GPT Tutor: large dot at Assisted, zero dot at Unassisted (parity), no Transfer data. LearnLM: dot at Immediate, +5.5pp dot at Transfer. Tutor CoPilot: +4pp Unassisted (learner), +9pp subgroup Unassisted. Color-coded by architecture. Caption: "The three architectures don't just differ in who holds the judgment — they've been tested at different endpoints. Transfer is where the supervised AI result stands alone."] -->

---

You will be asked, constantly, about products: "Should we do what Khanmigo does?" Learn to read products as design artifacts encoding hypotheses, not as evidence.

**Khanmigo** encodes the constrain-the-AI hypothesis in a consumer product: by design it withholds direct answers and uses guiding questions — patterns 1 and 2, visible in the product flow. **Carnegie Learning's MATHia** descends from twenty-plus years of cognitive-tutor research and carries the field's most mature causal evidence — the What Works Clearinghouse rates Cognitive Tutor Algebra I "potentially positive," with a commonly cited weighted effect around +0.04 at scale [verify — WWC's own language is "mixed effects," and Pane et al. report null year-1 / ≈+0.20 year-2; check the WWC record before citing the figure]. **Duolingo Max** wraps explanation and role-play in an engagement-optimized consumer app, with the strongest *consumer* evidence base — much of it Duolingo's own published research, a provenance flag you now know how to apply.

Here is the trap: **the most market-visible systems are not the best-evidenced, and the best-evidenced is barely market-visible.** Rank these products by evidence and you produce roughly the reverse of their public profile.

Read any product page with six verbs: what does the system *permit, forbid, require, reveal, log, and hand off?* Those six extract the interaction design — the testable hypothesis — from the outcome language around it. "Students learn 2× faster" tells you nothing. A visible reasoning gate tells you a great deal, including exactly what to test.

Treat every vendor description as a design document with the evidence section missing. Write the missing section as your test plan.

---

The DataWise 101 homework chat earned a 5/5 on the Crutch-Default Checklist in Week 2. The steering committee has accepted the diagnosis and asked the obvious next question: *so what should it do instead?* The constraint: convert the crutch without making the tutor so unhelpful that students abandon it for an unguarded ChatGPT tab one keystroke away. A scaffold nobody uses scaffolds nobody.

First attempt: prompt-level virtue. Add "never give direct answers; guide the student Socratically" to the system prompt. Two failures surface in the first hour of testing. The freely generated hints are sometimes statistically wrong — and Chapter 1's evidence says wrong hints get transcribed faithfully. Worse, the hints leak: asked the same question four different ways, the "guidance" accumulates into a complete solution. The designer has rediscovered why GPT Tutor's authors built a content layer: an interaction policy without grounded content is a polite answer machine.

Second attempt: pick an architecture properly. Supervise the AI? DataWise has no tutor workforce — the economics fail. Support the human? The TAs staff office hours, not the 2 a.m. sessions where the homework chat lives — right architecture for the TAs, wrong one for the chat. Constrain the AI it is — which turns out to be a *content engineering commitment*, not a prompt edit. DataWise 101 has a bounded, stable problem set, the condition under which Architecture One fits. For each assigned set the instructor authors the solution path and the three most common misconceptions (the sampling-distribution/standard-error confusion first among them). Real labor; budgeted honestly as the project's main cost and load-bearing wall.

Third pass: assemble from patterns, and catch a near-miss. The gate is built first — help requires the student to state their approach or stuck-point. The first build accepts anything typed in the box. This is the exact compliance-shaped gate the designer flagged in someone else's product one week earlier. Rebuilt: input must reference the problem's actual content or the gate re-asks. Then the hint ladder, four levels, grounded in the authored content, rate-limited against mining. Error-flagging: flag and locate, never fix. Metacognitive prompts at two moments only — the first draft's six cut as prompt spam. Escalation: persistent confusion posts to the TA queue with the conversation attached. Transfer sequencing: a post-solution classification question, plus a flag that problem set 4's items are surface-identical and need variation. Fading: ladders shorten after two unassisted successes per skill — labeled in the spec as the component built on extrapolated evidence.

The memo ships with the spec, the re-score (5/5 → 1/5), the architecture rationale, the content-engineering budget line, and two pilot metrics: the reliance trajectory (help requests per problem over time — must flatten or fall) and a delayed, tutor-unavailable problem set against a no-tutor comparison section — the unassisted endpoint, which is the only endpoint that decides anything.

The scaffold is assembled, not prompted: architecture chosen on context, patterns composed from the catalog, content engineered to ground them, the evidence-thin component labeled rather than hidden.

The limit of the design: it protects the homework chat and does nothing about the unguarded ChatGPT tab. If the gate's friction drives students there, the redesign has exported the crutch rather than cured it. Architecture One's protection is only as good as its content layer's coverage, and the moment the course adds problems faster than the instructor authors support, the tutor's edges decay toward GPT Base. The cost curve, not the interaction design, is where it eventually fails.

<!-- → [TABLE: pattern cards — seven rows, one per pattern; columns: Pattern name, Trigger, Core structure, Fading rule, Primary failure mode. Rows: Hint Ladder / Reasoning Gate / Fading Schedule / Error-Flagging / Metacognitive Prompts / Human Override / Transfer Sequencing. Each cell one-line. Caption: "The catalog is specification-ready: each row answers the three-property question. A feature spec that can't fill every column for the relevant card has not been specified."] -->

---

## Evidence Box

<!-- → [TABLE: evidence summary — columns: Finding, Source, Endpoint type, Status.] -->

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| GPT Tutor (hints-only + teacher-authored content): +127% assisted, **no unassisted deficit**; GPT Base: +48% / −17% | Bastani et al. 2025, *PNAS* 122(26) e2422633122 | Assisted + unassisted | **Verified, published RCT.** Single context (one school, Turkey, HS math); decisive on design-dependence, not effect-size generalization |
| Human-supervised LearnLM: parity on immediate outcomes; **+5.5 pp on novel problems in next topic**; 76.4% AI messages approved with zero/minimal edits | Eedi & Google DeepMind 2025, arXiv:2512.23633 | Immediate + **transfer** | **EXPLORATORY — authors' own label; industry-published** (model maker is co-author — provenance flag). Strongest positive finding in the field AND unreplicated; hold both |
| AI suggestions to live human tutors: +4 pp topic mastery overall; **+9 pp for students of lowest-rated tutors**; tutors shifted toward guiding questions | Wang et al. 2024 (Tutor CoPilot), arXiv:2410.03017; ~900 tutors / ~1,800 students [verify ns] | Topic mastery (unassisted for the learner — AI never touched the student) | **Verified RCT** (confirm final publication venue before citing in print). The field's clearest equity-positive result |
| Structured-hint ITS tutoring approaches human tutoring (d≈0.76 vs. d≈0.79) | VanLehn 2011, *Educational Psychologist* | Mostly unassisted post-tests | **Verified; pre-GenAI.** Deep precedent for the hint-ladder pattern |
| Scaffolding = contingency + fading + transfer of responsibility | Wood, Bruner & Ross 1976; van de Pol et al. 2010 | Conceptual/observational foundation | **Settled construct**; fading's GenAI instantiation remains extrapolation |
| Cognitive Tutor Algebra I at scale: WWC "potentially positive"; commonly cited ≈+0.04 | What Works Clearinghouse; Pane et al. | Unassisted course outcomes at scale | **PARTIALLY VERIFIED** [verify WWC record — "mixed effects"; Pane et al.: null year 1, ≈+0.20 year 2]. Cited as the maturity benchmark, not a verdict |

**What remains unsettled:** whether any of the three results replicates across domains, ages, and cultures (each is a single study); whether fading works in GenAI tutoring at all (no direct test yet); what the supervised-AI result becomes without supervision; whether AI suggestion streams deskill the tutors they support over years. Three RCTs is a foundation, not a science.

---

## What Would Change My Mind

The chapter's central claim — that a nameable catalog of interaction patterns, deployed through one of three architectures, reliably preserves learning where unstructured AI help damages it — would require revision if the pattern-outcome link failed under direct test. The decisive finding: a well-powered RCT in which a faithfully implemented scaffold design (genuine reasoning gates, grounded hint ladders, no answer leakage — implementation verified by interaction logs, not vendor assertion) still produced a GPT-Base-style unassisted deficit against no-AI controls. One such result in a new domain would bound the catalog's generality; two would break the chapter's spine and relocate the problem from interaction design to something deeper — perhaps the mere availability of AI mediation, regardless of structure. A softer trigger: if the LearnLM transfer advantage and the Tutor CoPilot equity signature both fail replication while only the Bastani no-deficit result survives, the claim must shrink from "scaffolds can beat human-only support" to "scaffolds avoid harm" — a weaker sales pitch and a more honest book. Replications are the watch item; none of the three architectures has one yet.

---

## Still Puzzling

- **Does fading actually work in GenAI tutoring?** No published study has yet faded a GenAI tutor's support on a competence schedule and measured the withdrawal outcome. The book's most confident extrapolation — and still an extrapolation.
- **What is the supervision minimum?** LearnLM's humans touched roughly 24% of messages. Would 10% keep the result? 2%? Spot-checking? Architecture Two's cost curve — and therefore its scalability — hangs on an unmeasured dose-response relationship.
- **Does the suggestion stream deskill the tutors?** Tutor CoPilot lifted weak tutors' practice while the AI was present. Run the Withdrawal Test on the tutors themselves: after two years of real-time suggestions, are they better unaided tutors, or dependent ones? Nobody has measured the professionals with the instrument this book applies to learners.
- **Can a scaffold survive next to a free crutch?** Every guarded design competes with an unguarded ChatGPT tab. Whether well-designed friction retains learners against a frictionless alternative is a product question the learning literature cannot answer — and it may decide whether any of this matters at scale.

---

## Exercises

**Warm-up**

1. *(Recall — three scaffold properties)* Name the three properties that distinguish a scaffold from a crutch. For each, give the one-sentence explanation of what GPT Base did instead — and why that made things worse rather than merely neutral.
*Difficulty: low. Tests: contingency / fading / transfer of responsibility applied to the Chapter 1 evidence, not just as abstract definitions.*

2. *(Recall — one-line test)* The chapter offers one test that distinguishes every scaffold pattern from every crutch pattern. State it precisely, then apply it to error-flagging and error-correcting — which passes, which fails, and why.
*Difficulty: low. Tests: the "more thoughtful or merely faster" test applied to the most easily confused pattern pair.*

3. *(Recall — compliance-shaped gates)* Explain the reasoning-gate failure mode called "compliance-shaped satisfaction." Give two examples — one from the DataWise worked example and one you construct — of a gate that looks like a reasoning requirement but can be cleared without reasoning.
*Difficulty: low. Tests: the gate failure mode, which is the pattern most often mis-implemented in shipped products.*

**Application**

4. *(Apply — architecture choice)* Three scenarios: (a) a 10,000-learner self-serve coding course with no human staff; (b) a corporate onboarding program with 40 variable-quality facilitators; (c) a graduate seminar with one overloaded TA. For each: recommend an architecture, state the condition that drives the choice, name one thing the architecture cannot do in that context, and specify the unassisted endpoint that would test it. One page total.
*Difficulty: moderate. Tests: architecture selection on context and cost, not fashion; honest naming of each architecture's limits.*

5. *(Apply — pattern assembly)* A learner in an online statistics course types: "What's the answer to problem 3?" into the homework chat. Using at least three catalog patterns in sequence, write the interaction the scaffold-designed AI should conduct — including the exact trigger for each pattern and the point at which the interaction correctly ends without the learner having received the answer. Then name the evidence-thin component in your design and label it as such.
*Difficulty: moderate. Tests: catalog patterns composed in a realistic sequence; the labeling discipline that distinguishes evidence-grounded from extrapolated components.*

6. *(Apply — six-verb product read)* Read any publicly available AI tutoring product description using the six verbs: permit, forbid, require, reveal, log, hand off. Produce a six-row table — one verb per row, one-sentence finding per row — and write the two-sentence test plan the product's hypothesis implies. Do not evaluate the product's effectiveness; evaluate its testability.
*Difficulty: moderate. Tests: extracting a design hypothesis from outcome language; the permit/forbid/require/reveal/log/hand-off framework applied to a real product.*

**Synthesis**

7. *(Synthesize — the equity signature)* The Tutor CoPilot 9-point subgroup result is described as more important than the 4-point average. Write a 200-word argument for that claim — including what it means for *designing* the intervention, not just for evaluating it — and a 100-word counterargument. Then name the single piece of data from your own organizational context that would settle which framing matters more.
*Difficulty: moderate-high. Tests: the distinction between floor-lifting and average-raising as design objectives; willingness to argue both sides before choosing.*

8. *(Synthesize — the Withdrawal Test)* Design a complete scaffold for one AI-mediated interaction in your domain — any domain — specifying all seven catalog patterns relevant to it and explicitly noting which patterns don't apply and why. Then run the Withdrawal Test: walk one named learner persona through their final week with the AI removed on day one. For each scaffold pattern in your design, trace the capability it should have built. If a pattern maps to no capability, name it as a design failure, not a measurement gap.
*Difficulty: high. Tests: full scaffold specification; the Withdrawal Test as a design criterion, not only an evaluation tool.*

**Challenge**

9. *(Challenge — the cost curve)* The DataWise worked example ends with: "The cost curve, not the interaction design, is where it eventually fails." Specify the exact failure mode — which metric, at which threshold, triggered by which cause — and design the cheapest architectural response that preserves the scaffold's protection as the content layer decays. Your response must name the tradeoff it accepts.
*Difficulty: high. Tests: seeing Architecture One's structural vulnerability not as a design flaw but as a maintenance economics problem; designing for degradation rather than assuming permanence.*

---

## LLM Exercise

*Copy the prompt below into the LLM of your choice. By now you will recognize its structure — reasoning gate, error-flagging, metacognitive prompt, no answer at any level. This week you are also its design critic: note one place where the prompt violates its own catalog. There is at least one. Finding it is part of the artifact.*

---

You are a scaffold-design reviewer for a graduate course on AI-mediated learning design. You review crutch-to-scaffold redesigns against the seven-pattern catalog (hint ladder, reasoning gate, fading schedule, error-flagging, metacognitive prompts, human override, transfer sequencing) and the three architectures (constrain the AI / supervise the AI / support the human). You never produce the redesign yourself.

RULES (follow strictly):
1. First, ask me to paste BOTH: (i) the original crutch-leaning interaction with its five-pattern checklist score, and (ii) my own complete redesign — architecture choice with at least one explicitly rejected alternative, the catalog patterns used, my fading rule, and my two pilot metrics.
2. REASONING GATE: if any of those elements is missing — or if I paste only the crutch and ask you to redesign it — stop and name what is missing. Do not draft any component for me, even as "an example."
3. Once my redesign is complete, do exactly four things:
   a. ERROR-FLAG, don't fix: name the one pattern most vulnerable to compliance-shaped satisfaction or answer leakage, and the vulnerability. Do not write the repair.
   b. State the strongest case that one of my rejected architectures fits better (three sentences max), then ask me to defend or switch.
   c. Ask me which component rests on the thinnest evidence, and whether my spec labels it as such.
   d. METACOGNITIVE PROMPT: ask what my two pilot metrics would show after one term if the redesign is quietly failing, and what thresholds would trigger revision.
4. End by asking me to revise the redesign myself and write its four-sentence Withdrawal Test answer. Produce neither.

Begin by asking for my two documents.

---

*Assessable artifact:* original interaction, initial redesign, transcript, revised redesign with its Withdrawal Test answer — plus one paragraph naming where this prompt violates its own catalog and how you would fix it. (The most defensible answer is that the prompt has no fading rule — it gates a Week 15 student exactly as it gates a Week 3 student — but well-argued alternatives earn full credit.)

---

## Further Reading

- **Wood, D., Bruner, J. S., & Ross, G. (1976). The role of tutoring in problem solving. *Journal of Child Psychology and Psychiatry* 17(2).** The origin of "scaffolding" — tutors and block pyramids; most of this chapter in embryo.
- **van de Pol, J., Volman, M., & Beishuizen, J. (2010). Scaffolding in teacher–student interaction. *Educational Psychology Review* 22(3).** The review that distilled contingency-fading-transfer before the AI arrived.
- **VanLehn, K. (2011). The relative effectiveness of human tutoring, intelligent tutoring systems, and other tutoring systems. *Educational Psychologist* 46(4).** Structured hint systems nearly matching human tutors — the deep precedent for the hint-ladder pattern.
- **Wang, R. E., et al. (2024). Tutor CoPilot. arXiv:2410.03017.** Read for the subgroup analysis above all — the clearest demonstration that *where the gains land* is a designable property.
- **Eedi & Google DeepMind (2025). Human-supervised AI tutoring exploratory RCT. arXiv:2512.23633.** The transfer finding with the authors' caveats intact; read the limitations section first, as practice for the next chapter.
