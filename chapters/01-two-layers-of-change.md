# Chapter 1 — Two Layers of Change: AI in Design Practice and in the Learning Experience

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Distinguish AI's effect on the *practice of design* (workflow compression — faster drafting, ideation, and prototyping) from its role as a *participant in the learning experience* (tutor, evaluator, recommender, agent), and explain why the two layers demand different evidence standards.
2. **(Understand)** Explain the three-condition Bastani result — same model, opposite unassisted outcomes — and state precisely what did and did not differ between conditions, using *assisted* and *unassisted* performance correctly.
3. **(Analyze)** Examine one AI learning product you know, enumerate its AI features, and identify which layer each feature occupies using the "whose cognitive work?" diagnostic.

*Track note:* This chapter precedes the Track A/B split. Everyone does the same work this week; you will choose your design-lab project in Week 2, and Objective 3 is your scouting trip.

## Opening Case: One Table, Three Rows

In a high school in Turkey, during the 2023–24 academic year, nearly a thousand students in grades 9–11 worked through their ordinary in-class math practice sessions. The school and the researchers — a team led by Hamsa Bastani and Osbert Bastani — randomized those sessions into three conditions (Bastani et al. 2025, *PNAS* 122(26)).

The first group got **GPT Base**: an interface mimicking standard ChatGPT, running on GPT-4, unrestricted. Ask it anything; it answers.

The second group got **GPT Tutor**: the *same* GPT-4, behind a different interface, with a system prompt built to safeguard learning.

The third group was the **control**: standard practice, pencil and notes, no AI.

Here is what happened, in one table:

| Condition | Practice performance (AI available) | Subsequent exam (AI removed) |
|---|---|---|
| GPT Base | **+48%** vs. control | **−17%** vs. control |
| GPT Tutor | **+127%** vs. control | No significant deficit |
| Control | baseline | baseline |

Read it slowly, because every number is doing work.

During practice, both AI groups looked spectacular: +48 percent and +127 percent over control. If you had visited the classroom during practice — or watched the vendor demo, or read the pilot dashboard — both AI conditions would have looked like unambiguous wins, and GPT Tutor the bigger one.

Then the AI was taken away, and the students sat an ordinary unassisted exam on the same material. The GPT Tutor students did fine: statistically indistinguishable from students who never had AI at all. The GPT Base students did *worse than if the AI had never existed* — 17 percent below control. A tool that boosted their practice performance by half had quietly made them worse at mathematics.

Now the puzzle. Same model — GPT-4 in both rows. Same students, randomly assigned. Same school, same teachers, same math. Whatever damaged one group and protected the other, it was not the technology, the curriculum, or the kids.

Sit with that, because the explanations that come to mind first are wrong, and the right one is the thesis of this book. We will spend this chapter — really, this entire course — unpacking what differed between row one and row two. For now, hold three facts: it fit inside a system prompt and a conversation structure; it was invisible during practice; and it was the only thing that varied.

One administrative note, because you will encounter this study often and the internet has already garbled it: *PNAS* issued a formal correction in August 2025. The correction fixed a production error in one author's affiliation. No findings, data, or analyses changed (Bastani et al. 2025, correction 10.1073/pnas.2518204122). You will sometimes see "the study was corrected" deployed as if it meant "the study was retracted." It was not. Learning to check what a correction actually says is the first small act of evidence hygiene this book will ask of you.

## Prerequisites

You can already:

- Run a basic learning-experience design process — learner research, journey mapping, prototyping, and simple evaluation (the companion volume *Experience Design for EdTech*, or a Dirksen-level equivalent).
- Use at least one LLM product (ChatGPT, Claude, Gemini, or similar) comfortably as a *user*.
- Read a simple results table — percentages, comparison groups — without needing formal statistics. (We re-teach evidence literacy properly in Week 4.)

## Core Content

### The Two-Layer Pattern

AI is changing learning experience design in two distinct layers at once, and conflating them is the field's most common category error.

**Layer 1: AI in the practice of design.** Generative tools now accelerate the designer's own workflow — ideation, persona drafting, storyboarding, content generation, question-bank production, prototyping. In Layer 1, *the designer is the user*. The learner never talks to this AI directly, though they inherit its outputs.

**Layer 2: AI in the learning experience.** Here the AI is a participant in the experience itself — tutor, evaluator, feedback engine, recommender, coach, and increasingly an autonomous agent that routes learners through content. In Layer 2, *the learner is the user*, and the AI's interaction design directly shapes what cognitive work the learner does or skips.

The layers have different evidence bases, different failure modes, and different design disciplines. A Layer 1 failure produces a mediocre design artifact and, over time, possibly a deskilled designer (Chapter 5's territory). A Layer 2 failure produces damaged learning — the −17% in the opening table. And here is the professionally uncomfortable part: a designer can be excellent at Layer 1 — prompt-fluent, fast, productive — while being entirely unequipped for Layer 2, because Layer 2 requires something Layer 1 never asks of you: predicting what an interaction design does to *someone else's cognition over time*.

This book's specific reader — the LX designer eighteen months into the job, told last quarter to "add an AI tutor" — was almost certainly hired and evaluated on Layer 1 skills, then handed a Layer 2 responsibility. Vendor marketing actively encourages the confusion, selling Layer 2 products on Layer 1 virtues: speed, polish, scale, demo quality. None of those virtues can produce, or rule out, a −17%.

One honest label before we go on: the two-layer taxonomy is this book's organizing lens, synthesized from the practice literature and the learning-outcome literature. It is sturdy as pedagogy, but no study has yet directly tested, for instance, whether Layer 1 fluency predicts Layer 2 design errors. We flag our own constructs by the same standard we will apply to vendors.

**Design pattern:** every AI feature you evaluate gets a layer assignment *before* it gets an opinion. The assignment determines which questions you are allowed to answer with which evidence.

### The Diagnostic: Whose Cognitive Work?

How do you assign a layer? Not by product, and not by marketing category — by feature, with one question:

> **Whose cognitive work does this AI replace or restructure?**

If the answer is "the designer's," the feature is Layer 1, and the governing questions are output quality, accuracy verification, and what skill the human stops practicing. If the answer is "the learner's," the feature is Layer 2, and the governing question is the one this course exists to teach: scaffold or crutch — does the design preserve the cognitive work that produces learning, or quietly perform it on the learner's behalf?

Consider a typical vendor "AI course assistant" with four features: (a) auto-generates quiz banks from uploaded slides; (b) drafts lesson summaries for the instructor; (c) answers student questions 24/7 in a chat window; (d) recommends each student's next module. Features (a) and (b) are Layer 1 — they compress the instructor's workflow, and the design questions are accuracy and quality control. Features (c) and (d) are Layer 2 — they restructure the learner's cognitive work, and the design questions are: does (c) give answers or hints? Is there a reasoning requirement? Does support fade? Does (d) route equitably and visibly?

A procurement review that evaluates all four features with one rubric will miss the only feature in the list capable of producing a Bastani-style deficit: feature (c).

Note that some features sit in *both* layers. AI-generated feedback is authored through Layer 1 tooling but delivered as a Layer 2 experience; an auto-built quiz bank is a Layer 1 convenience whose distractors, if they encode misconceptions, become a Layer 2 hazard. This is exactly why the analysis must be feature-by-feature, never product-by-product. Products do not have layers. Features do.

**Design pattern:** the Two-Layer Audit (this chapter's Pattern Card) — enumerate features, ask the question, assign the layer, and route each feature to its proper evidence standard.

### Same Model, Opposite Outcomes: Interaction Design as the Causal Variable

Now return to the table and resolve the puzzle as far as Week 1 evidence allows.

The candidate explanations students reach for first, and why each fails:

- *"GPT Tutor was a better or fine-tuned model."* No. Both conditions ran GPT-4. Same model.
- *"The GPT Tutor students were stronger students."* No. Randomized assignment; with ~1,000 students, the groups were statistically equivalent.
- *"GPT Base students just got lazy."* Closer — but laziness doesn't explain why a design change eliminated the harm. (Chapter 2 will show the behavior is rational, not lazy, which matters because it changes the remedy.)

What actually differed: **a system prompt and a conversation structure.** GPT Tutor was instructed to give hints rather than answers, and — this is the detail everyone skips — it was supplied with teacher-written, problem-specific correct solutions and common student mistakes, so its hints and feedback were pedagogically grounded and far less error-prone (Bastani et al. 2025). The safeguard was not a magic string. It was *pedagogical labor encoded into a prompt*: teachers did real design work per problem, and the interface enforced an interaction policy on top of it.

The causal logic is the spine of this course. Model held constant; students randomized; content identical. The only variable distinguishing the −17% row from the no-deficit row is the interaction design. Therefore: **interaction design — not model capability — is the primary causal variable available to the designer.** That is the book's thesis stated as an experimental result.

The study also left a mechanism trail. GPT Base students used the tool as an answer machine: when GPT-4 made logical and arithmetic errors, those errors propagated *verbatim* into student work. The students were transcribing, not processing. And in surveys, they did not perceive the harm — access felt like learning. We hold the full mechanism story for Chapter 2; for now, what matters is that the harm was real, design-caused, and invisible from inside the experience.

Two misreadings to refuse. The table does not say "AI harms learning" — row two shows the harm is a design outcome, not a technology property. And it does not say "AI works if you prompt it nicely" — the protective design encoded per-problem teacher expertise: money, time, pedagogy. The table holds you in an uncomfortable middle: neither *AI works* nor *AI harms* survives contact with it. What survives is *design decides* — a heavier sentence than it appears, because it means the responsibility cannot be delegated to the model vendor, and (as Chapter 2 will show) cannot be delegated to the learner either.

One scope caution, stated now and repeated in the Evidence Box: this is one school, one country, one subject, one term. Its internal validity is excellent — randomization, scale, preregistration, publication in *PNAS* — so it is decisive about *design-dependence*. It is not a warrant for the specific effect sizes generalizing to your context. Chapter 4 builds the full discipline for holding both thoughts.

**Design pattern:** when evaluating any AI learning feature, ask first what its *interaction policy* is — what it gives, what it withholds, what it requires of the learner before helping — before asking anything about its model.

### Assisted vs. Unassisted: Two Different Measurements

The table only makes sense once you accept that "performance" names two different constructs.

**Assisted performance** is what the learner-plus-tool system can produce right now, with the tool present. **Unassisted performance** is what the learner has durably acquired — what survives the tool's withdrawal. The GPT Base row proves these can move in *opposite directions in the same condition* (+48% and −17%), which means neither is a proxy for the other. Ever.

This distinction did not arrive with AI, and anchoring it in the older literature inoculates you against "this is just an AI panic" dismissals. Soderstrom and Bjork (2015) reviewed decades of evidence that performance during acquisition is an unreliable — often *inversely* related — index of long-term learning. Conditions that inflate training performance (massed practice, predictable sequences, abundant feedback, worked solutions on demand) routinely depress retention and transfer; conditions that depress training performance (spacing, interleaving, retrieval demands) improve them. An always-available answer engine is the most powerful performance-inflater ever shipped to learners. Bastani's result is a new instance of an old, settled principle — which is precisely why the field should have predicted it, and mostly didn't.

The design implication runs through everything this course will ask you to produce: every evaluation, every vendor claim, every pilot report must be tagged by **endpoint type** — assisted, unassisted, transfer (novel problems), retention (delayed measurement). A "+40% improvement" claim is meaningless until you know which column it came from. The demo, the dashboard, and the satisfaction survey all measure the assisted column. The exam, the job, and the rest of the learner's life happen in the unassisted one.

This is also your first encounter with the course's signature mechanic. The **Withdrawal Test** — *what can the learner do when the AI is taken away, and how does the design make that more rather than less?* — is the assisted/unassisted distinction operationalized as a grading rule. Every design-lab assignment you submit in this course must answer it. A design with no withdrawal answer is a crutch with good intentions.

**Design pattern:** tag every outcome claim with its endpoint type before letting it influence a decision. "The demo measures the wrong column" is a complete and professionally useful sentence.

### Engagement Is Not Learning: The Four Pillars

There is a third seductive measurement, and it deserves its own ambush warning: engagement.

Hirsh-Pasek, Zosh, Golinkoff, and colleagues (2015) established four pillars under which durable learning occurs: learners must be (1) **actively involved** — minds-on, not just hands-on; (2) **engaged with the learning material** — not with features around it; (3) finding the material **meaningful**; and (4) **socially interactive** around the content. The pillars' critical move is splitting *engagement with the content* from *activity that looks engaged*. An app can produce intense behavioral engagement — taps, streaks, session length — that attaches to reward mechanics rather than the to-be-learned material.

Apply that to conversational AI and the prediction writes itself: a chatbot that answers instantly, praises warmly, and never frustrates will produce spectacular engagement telemetry while removing the active, effortful processing that pillar one requires. The GPT Base condition is the four-pillars prediction come true: maximal engagement, negative learning. The most satisfying condition in the study was the most harmful one — which is Prior Misconception #3 ("high engagement means it's working") refuted by the same table that refuted "better model means better learning."

A principled rubric for separating engagement evidence from learning evidence already exists and predates the GenAI wave: the EdTech Evidence Evaluation Routine (EVER), published in *npj Science of Learning* (2023), operationalizes the pillars as an evaluation checklist — what outcome was actually measured, under what comparison, and whether the evidence demonstrates learning rather than activity [verify — confirm exact author list and Hirsh-Pasek's role on the EVER paper itself; the 2015 four-pillars paper is the safe anchor]. This book's endpoint-type discipline is the AI-era extension of the same move.

**Design pattern:** for any dashboard, ask of each metric: which pillar, if any, does this measure — and where is the unassisted endpoint? A dashboard with no unassisted column is an engagement report, whatever its title says.

### Layer 1 Right Now: The Adoption Snapshot

To take the two layers seriously you need an honest picture of Layer 1, because Layer 1 is no longer optional or emerging — which is exactly why the Layer 2 discipline is urgent.

The adoption question is effectively closed. A Synthesia-commissioned survey of L&D professionals (fielded late 2025) reports 87% already using AI at work, only 2% with no adoption plans — and note the conflict of interest as you read it: Synthesia sells AI video, so vendor-commissioned statistics get cited here as triangulation, never as standalone claims. An independent 2025 survey of 144 instructional designers found 83% using ChatGPT, with efficiency the top-ranked benefit and accuracy verification the top-ranked challenge (via AACE Review). These converge with the peer-reviewed practice studies: Luo et al. (2025) on ideation, low-stakes drafting, and process streamlining, with quality, privacy, and authorship concerns; Yang and Stefaniak (2025) [verify] on content generation and problem-solving, attitudes split optimistic/wary/pessimistic; Kumar et al. (2024) [verify] on designers guiding faculty use and institutional policy.

The pattern worth naming: **workflow compression is the established Layer 1 effect.** The floor of novice output rises and production accelerates — in Moore et al. (2025), novice designers' AI-assisted microlessons scored higher on quality for half of assignments and never lower on average. Design *judgment*, meanwhile, has not been automated, and deskilling remains a documented warning signal rather than a proven causal harm. Both halves of that sentence matter; Chapter 5 gives Layer 1 its full week.

For now the takeaway is locational: you are already *in* Layer 1 — 83 to 87 percent of your field is. This course's question is whether you are equipped for Layer 2, where the habits of speed and polish that make you good at Layer 1 are the precise habits that build crutches.

**Design pattern:** when a team mandate says "we're AI-first now," sort the deliverables. Draft generation and storyboard variants are Layer 1 calls a lead can make on productivity evidence. The feedback messages that ship to learners and the auto-generated quiz banks are crossing points where Layer 2 evidence standards must take over — mark them explicitly.

## Mid-Chapter Checkpoint

*Ungraded. Answer from memory, then check yourself against the sections above.*

1. A vendor's case study reports "+40% improvement" for its AI tutor. Name the two questions you must ask before this number can mean anything. (One is about measurement conditions; one is about comparison.)
2. In the Bastani study, what exactly differed between GPT Base and GPT Tutor? List what was held constant.
3. Classify by layer: (a) an AI that drafts your course's learning objectives; (b) an AI that answers learners' questions during practice; (c) an AI that generates the feedback message a learner sees after a quiz.

*If you hesitated on (3c):* good — it sits in both layers, and the hesitation means you're doing the analysis feature-by-feature. If you answered (1) with "what was the sample size?", you're not wrong, but you skipped the bigger trap: ask first whether the 40% was measured *with the AI present or absent*, and against what comparison group. Reread "Assisted vs. Unassisted" before the worked example.

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Same GPT-4: unguarded use −17% unassisted vs. control; guardrailed use no deficit; +48%/+127% assisted | Bastani et al. 2025, *PNAS* 122(26) e2422633122; RCT, ~1,000 students, grades 9–11, Turkey | Assisted AND unassisted, same study | **Verified, published.** Aug 2025 correction is affiliation-only; no findings changed. Single context (one school, one country, one subject, one term) — decisive on design-dependence; effect sizes not generalizable as constants |
| Performance during acquisition is an unreliable, often inverse, index of durable learning | Soderstrom & Bjork 2015, *Perspectives on Psychological Science* 10(2) | Acquisition vs. retention/transfer | **Verified; settled pre-AI cognitive science** (integrative review of decades of evidence) |
| Durable learning requires active, engaged, meaningful, socially interactive processing — engagement with mechanics ≠ engagement with content | Hirsh-Pasek et al. 2015, *PSPI* 16(1); EVER routine, *npj Science of Learning* 2023 [verify EVER author list] | Framework + evaluation rubric | **Verified (2015 paper); EVER verified as pillar-based**, authorship detail unconfirmed |
| Layer 1 adoption mainstream: 87% of L&D using AI; 83% of 144 surveyed IDs using ChatGPT | Synthesia AI in L&D Report 2026 (**vendor-commissioned — flagged**); AACE Review 2025 survey | Practice adoption (no learning endpoint) | Triangulated practice indicators only; not standalone evidence |
| AI assistance raised novice designers' microlesson quality; never lower on average | Moore et al. 2025 (AIED), n=27 | Layer 1 output quality (assisted) | Verified small study; single context |
| LAUSD "Ed" chatbot / AllHere collapse: flagship Layer 2 procurement evaluated on Layer 1 virtues; vendor insolvent within months | The 74, LA Times, EdWeek reporting, 2024 [verify contract figures — accounts vary $3M–$6M] | None (procurement failure case) | Reported failure case; details vary across accounts |

**What remains unsettled:** whether the three-condition result generalizes across domains and ages (one strong data point, not a law); whether Layer 1 compression produces deskilling (warning signal, not causal finding); and everything longitudinal — no study anywhere yet measures what years of AI-mediated learning do to a learner. The field has roughly 20 high-quality causal studies in 800+ papers (Stanford SCALE; full treatment in Chapter 4). Practice is years ahead of evidence. This book says so on page one, and this is page one.

## Pattern Card: The Two-Layer Audit

**Name:** Two-Layer Audit

**Trigger:** Any time an AI feature is proposed, procured, demoed, or inherited — before any quality judgment, and always before purchase.

**Structure:**
1. Enumerate the product's AI features individually. Refuse product-level labels ("AI-powered learning platform" is not a feature).
2. For each feature, ask: *whose cognitive work does this replace or restructure?*
3. Assign: **Layer 1** (designer's/instructor's work) → evaluate on output quality, accuracy verification, skill-maintenance risk. **Layer 2** (learner's work) → evaluate on the scaffold/crutch questions: answers or hints? reasoning required before help? does support fade? what does the unassisted column show? **Both** → split the feature and run both evaluations.
4. For every Layer 2 feature, demand or design the missing measurement: a delayed, AI-unavailable performance task against a no-AI comparison.
5. Output: a feature table with layer, governing questions, evidence available, evidence missing.

**Fading rule:** None — this audit does not fade. It is a permanent fixture of professional practice, run on every new feature and re-run when a feature's behavior changes (model swap, prompt change, new autonomy).

**Failure mode:** Auditing at product level instead of feature level — which lets one impressive Layer 1 feature (beautiful auto-generated content) launder an unexamined Layer 2 feature (an answer-on-demand chat) through procurement. This is, at scale, what the LAUSD "Ed" failure looked like: a Layer 2 product bought on demo polish, feature breadth, and speed, with no unassisted-outcome evidence and no evaluation plan, from a vendor that collapsed within months of launch [verify contract details].

## Worked Example: The DataWise 101 Proposal

**Situation.** You are the LX designer for *DataWise 101*, an introductory statistics online course (this is the course's Track A standard case — the same intro-stats course that anchors the companion volume; the scenario details here are illustrative). Enrollment is healthy, completion is mediocre, and the steering committee has approved budget for "an AI homework-help tutor." A vendor demo went well. Your director forwards the deck with one line: "Looks great — anything we're missing?"

**The problem as the designer sees it.** The deck claims "+40% improvement in problem-solving performance" and "satisfaction in the top decile." The demo was genuinely impressive: the tutor answered a tricky sampling-distribution question fluently, warmly, instantly. The designer's instinct says yes; the designer has also just read about a GPT tutor that made students 17% worse. Which fact describes this product?

**Process — including the dead ends.** First attempt: evaluate the product. The designer rereads the deck looking for a verdict-shaped answer — is this a *good* AI tutor? Dead end: the deck describes one product, but the audit question only works on features. Second attempt: check evidence quality. The designer asks the vendor for the study behind the +40%. It arrives: an internal pilot, measured on in-product problem sets, no comparison group. Better instinct, still a dead end as stated — the designer now knows the evidence is weak but can't say *what kind* of weak, or what to ask for instead.

Third attempt: run the Two-Layer Audit. Enumerate features: (a) auto-generates practice problem variants for instructors; (b) drafts weekly recap emails; (c) a 24/7 chat that helps with homework problems; (d) a "readiness score" recommending when students attempt the quiz. Layer assignment: (a), (b) Layer 1 — governing questions are accuracy and instructor skill-maintenance; nothing here can produce a −17%. (c) Layer 2, dead center — it restructures the learner's cognitive work on exactly the tasks the course grades. (d) Layer 2 — it routes learner behavior. Then the endpoint tagging: the +40% was measured *with the tutor present*, on *in-product* tasks, with *no control group*. An assisted number of unknown comparison — structurally, the +48% from the Bastani table, the column that cannot distinguish scaffold from crutch.

**Resolution.** The designer writes a one-page memo: the claim as stated cannot distinguish a GPT Base from a GPT Tutor; feature (c) is the only feature capable of either outcome; and the cheapest decisive measurement is a delayed, tutor-unavailable problem set given to pilot users and a matched non-pilot section. The memo does not say "don't buy." It says "we cannot yet tell what we'd be buying, and here is the one measurement that would tell us." The director, who expected a thumbs-up, gets a question — and a plan.

**The lesson (one sentence).** The audit's power is that it converts "is this AI good?" — unanswerable — into "which features touch the learner's cognition, and what does the unassisted column show?" — answerable, and cheaply.

**The limit.** The Two-Layer Audit diagnoses *which questions to ask*; it cannot answer them. It will tell you that feature (c) needs an unassisted endpoint, but not how to design the interaction so the endpoint comes out well — that requires the mechanism (Chapter 2) and the scaffold catalog (Chapter 3). And in a context where you have no leverage to demand measurement — a done-deal procurement — the audit produces clarity without power, which is better than neither, but be honest about which one you hold.

## Exercises

**1. Explain the table (Understand — feeds Evidence Brief #1).** In 200 words or fewer, explain the three-condition result to a non-technical stakeholder. You must use *assisted* and *unassisted* correctly, state what did and did not differ between conditions, and end with the one question the stakeholder should now ask about any AI tutor pitch. No jargon beyond those two terms.

**2. Layer audit (Analyze — production exercise).** Choose one real AI learning product you know (or your employer's). Produce the Pattern Card output: an enumerated feature table with layer assignments, the "whose cognitive work?" justification for each, and a flag on every feature that could in principle produce a Bastani-style unassisted deficit. Minimum four features. This artifact is your scouting trip for the Week 2 project selection — bring it.

**3. Dashboard rewrite (Analyze).** The DataWise 101 tutor's pilot dashboard shows: daily active users up 22%, average session 24 minutes, satisfaction 4.7/5, 88% of hint requests resolved without human escalation. For each metric, state which of the four pillars (if any) it measures and what it cannot tell you. Then rewrite the dashboard: one pillar-aligned metric per pillar, plus one unassisted-performance metric, each with a one-line collection method.

**4. The procurement memo (Evaluate — stretch).** In 300 words, tell a decision-maker why a vendor's "+40% improvement" claim cannot distinguish scaffold from crutch, and specify the single cheapest measurement that would. Write it to be read in ninety seconds by someone who liked the demo.

*Assessment note:* Evidence Brief #1 (30 pts) is due this week. Format: one page on the Bastani study — finding, endpoint types, what varied and what was held constant, verification status (including what the August 2025 correction did and did not change), and the study's generalization limits. Exercise 1 is its core paragraph; the Evidence Box above is its model register.

## Withdrawal Test + Reliance Disclosure

**The Withdrawal Test (Chapter 1 template).** This week's version is diagnostic, applied to a product rather than your own design: *for each Layer 2 feature you audited, what would its learners be able to do if the feature were removed tomorrow — and does any evidence the product offers actually bear on that question?* Write one sentence per feature. If your honest answer is "the product offers no evidence either way," write that — it is the most common true answer in 2026, and saying it plainly is the skill.

**The Reliance Disclosure (Chapter 1 template).** Name (a) one decision in your Exercise 2 audit where evidence constrained you — a feature you wanted to praise or condemn but couldn't, because the available evidence was the wrong endpoint type; and (b) one reliance risk your audit leaves open — a feature whose crutch potential you flagged but cannot yet assess, and what data would close it. Two sentences each. You will write a disclosure like this every week; this is the small honest habit the whole course is built on.

## What Would Change My Mind

The chapter's central claim — interaction design, not model capability, is the primary causal variable available to the designer — would require revision if a well-powered randomized study showed that *unguarded* frontier-model access produced no unassisted deficit (or a benefit) relative to no-AI controls, across more than one domain and population: that is, if model improvement alone turned GPT Base into GPT Tutor. A reasoning-class model that reliably refuses to hand over answers, teaches Socratically by default, and produces no withdrawal deficit without any designed interaction policy would relocate the causal lever from the designer back toward the vendor, and this book's thesis — and its course — would need rebuilding around model selection rather than interaction design. No such result exists as of this writing; the closest tests still show the harm tracking the interaction policy, not the model generation. Watch for replications of the three-condition design with newer models — that is exactly the experiment that would tell us.

## Still Puzzling

- **Why didn't GPT Tutor *beat* control on the unassisted exam?** It boosted assisted practice by 127% and then merely matched the no-AI group. Is no-deficit the ceiling for guardrailed AI tutoring, or an artifact of one design, one term, one test? The LearnLM transfer finding (Chapter 3) hints the ceiling is higher — but only hints.
- **Does Layer 1 fluency actively *mislead* Layer 2 judgment?** Designers fluent in AI tools may overtrust AI features for learners — the habits transfer but the evidence standards don't. Plausible, untested, and uncomfortably close to home.
- **What would the table look like at week 40 instead of week 4?** Nobody knows. There is no longitudinal evidence anywhere in this field, and every chapter of this book is written inside that gap.

## Chapter Summary

You can now do four things you could not do at the start of the week. You can split any "AI in education" conversation into its two layers and refuse to let evidence from one stand in for the other. You can read the three-condition table slowly and correctly — same model, randomized students, interaction design as the only live variable — and state what it does and does not license you to conclude. You can tag any outcome claim by endpoint type (assisted, unassisted, transfer, retention) and explain, to a stakeholder in under a minute, why a demo measures the wrong column. And you can run the Two-Layer Audit on a real product, producing a feature table that routes each feature to its proper evidence standard and names the missing measurement. What you cannot yet do is explain *why* row one of the table happened — that is next week — or design row two on purpose — that is the week after.

## Key Terms

- **Layer 1 (AI in design practice):** AI used by the designer to compress their own workflow; the learner inherits outputs but never interacts with this AI.
- **Layer 2 (AI in the learning experience):** AI the learner interacts with directly — tutor, evaluator, recommender, agent — whose interaction design shapes the learner's cognitive work.
- **Assisted performance:** What the learner plus the tool can produce while the tool is present.
- **Unassisted performance:** What the learner can do after the tool is withdrawn — the index of durable learning.
- **Endpoint type:** The measurement condition behind any outcome claim: assisted, unassisted, transfer, or retention.
- **Interaction policy:** What an AI feature gives, withholds, and requires of the learner before helping — the design layer the Bastani study isolated as causal.
- **The Withdrawal Test:** The course's signature question: what can the learner do when the AI is taken away, and how does the design make that more rather than less?
- **Workflow compression:** The established Layer 1 effect — faster production and a higher floor for novice output, without automated design judgment.
- **Four pillars:** Active, engaged, meaningful, socially interactive — the conditions under which durable learning occurs (Hirsh-Pasek et al. 2015).

## Bridge

Row one of the table — the −17% — has a mechanism. Two of them, in fact: one behavioral, one you can see on an EEG.

## Further Reading

- **Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI without guardrails can harm learning: Evidence from high school mathematics. *PNAS* 122(26), e2422633122.** Read the original, not the coverage — note especially the error-propagation evidence and the students' perception data.
- **Soderstrom, N. C., & Bjork, R. A. (2015). Learning versus performance: An integrative review. *Perspectives on Psychological Science* 10(2), 176–199.** The pre-AI foundation for everything this book says about endpoint types; if the assisted/unassisted distinction felt new, this shows it is decades old.
- **Hirsh-Pasek, K., Zosh, J. M., Golinkoff, R. M., Gray, J. H., Robb, M. B., & Kaufman, J. (2015). Putting education in "educational" apps. *Psychological Science in the Public Interest* 16(1), 3–34.** The four pillars in full, with the engagement-vs-learning split that EdTech dashboards still ignore.
- **Horvath, J. C., *The Digital Delusion*.** A pre-GenAI prosecution of EdTech efficacy claims; read alongside the implementation-gap counterargument (the rebuttal essay in this book's research pantry) for the calibrated middle this course occupies — skepticism about claims, not technophobia about tools.
- **Mitchell, M., *Artificial Intelligence: A Guide for Thinking Humans*.** What GPT-4-class systems actually are and aren't — useful inoculation against attributing the three-condition table to model mysticism.

## LLM Exercise

*Copy the prompt below into the LLM of your choice. Note what it does: it refuses to work until you have done the cognitively load-bearing step yourself. That refusal is not pedantry — it is this course's first scaffold pattern, modeled. (You'll meet its name, the reasoning gate, in Chapter 3.)*

```
You are an evidence-discipline coach for a graduate course on AI-mediated
learning design. Your job is to stress-test my Two-Layer Audit of an AI
learning product — NOT to write it for me.

RULES (follow strictly):
1. First, ask me to paste my own audit: the product name, an enumerated
   list of its AI features, my layer assignment for each (Layer 1 /
   Layer 2 / both), my "whose cognitive work?" justification for each,
   and my flag on any feature that could produce an unassisted deficit.
2. If I have not pasted a complete audit — if any feature lacks a layer
   assignment or a justification — do not proceed. Tell me exactly what
   is missing and stop. Do not fill gaps for me, even if I ask.
3. Once my audit is complete, do exactly three things:
   a. Challenge my single weakest layer assignment with one pointed
      question about whose cognition the feature actually touches.
   b. Identify one feature where I accepted an assisted-performance or
      engagement claim where an unassisted endpoint is required, and ask
      me what measurement would settle it.
   c. Ask me one question about a feature that may sit in BOTH layers
      that my audit treats as sitting in one.
4. End by asking me to revise the audit myself. Do not produce a revised
   audit. Do not summarize what the revision should say.

Begin by asking for my audit.
```

*Assessable artifact:* your original audit, the transcript of the challenge, and your revised audit, submitted together. The grade attaches to the *delta* — what the challenge exposed and how your revision answered it — not to the polish of the first draft.
