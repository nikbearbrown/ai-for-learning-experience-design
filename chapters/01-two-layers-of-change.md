# Chapter 1 — Two Layers of Change: AI in Design Practice and in the Learning Experience
*Why the same table can show +48% and −17% for the same model, the same students, and the same math.*

In a high school in Turkey, during the 2023–24 academic year, nearly a thousand students in grades 9–11 worked through their ordinary in-class math practice sessions. A research team randomized those sessions into three conditions (Bastani et al. 2025, *PNAS* 122(26)).

The first group got **GPT Base**: an interface mimicking standard ChatGPT, running on GPT-4, unrestricted. Ask it anything; it answers.

The second group got **GPT Tutor**: the *same* GPT-4, behind a different interface, with a system prompt built to safeguard learning.

The third group was the **control**: standard practice, pencil and notes, no AI.

Here is what happened:

| Condition | Practice performance (AI available) | Subsequent exam (AI removed) |
|---|---|---|
| GPT Base | **+48%** vs. control | **−17%** vs. control |
| GPT Tutor | **+127%** vs. control | No significant deficit |
| Control | baseline | baseline |

Read it slowly, because every number is doing work.

During practice, both AI groups looked spectacular: +48% and +127% over control. If you had visited the classroom during practice — or watched the vendor demo, or read the pilot dashboard — both AI conditions would have looked like unambiguous wins, and GPT Tutor the bigger one.

Then the AI was taken away, and the students sat an ordinary unassisted exam on the same material. The GPT Tutor students did fine: statistically indistinguishable from students who never had AI at all. The GPT Base students did *worse than if the AI had never existed* — 17% below control. A tool that boosted their practice performance by nearly half had quietly made them worse at mathematics.

Now the puzzle. Same model — GPT-4 in both rows. Same students, randomly assigned. Same school, same teachers, same math. Whatever damaged one group and protected the other, it was not the technology, the curriculum, or the kids.

Sit with that, because the explanations that come to mind first are wrong, and the right one is the thesis of this book.

One administrative note, because you will encounter this study often and the internet has already garbled it: *PNAS* issued a formal correction in August 2025. The correction fixed a production error in one author's affiliation. No findings, data, or analyses changed (Bastani et al. 2025, correction 10.1073/pnas.2518204122). You will sometimes see "the study was corrected" deployed as if it meant "the study was retracted." It was not. Learning to check what a correction actually says is the first small act of evidence hygiene this book will ask of you.

---

AI is changing learning experience design in two distinct layers at once, and conflating them is the field's most common category error.

**Layer 1: AI in the practice of design.** Generative tools accelerate the designer's own workflow — ideation, persona drafting, storyboarding, content generation, question-bank production, prototyping. In Layer 1, the designer is the user. The learner never talks to this AI directly, though they inherit its outputs.

**Layer 2: AI in the learning experience.** Here the AI is a participant in the experience itself — tutor, evaluator, feedback engine, recommender, coach, and increasingly an autonomous agent that routes learners through content. In Layer 2, the learner is the user, and the AI's interaction design directly shapes what cognitive work the learner does or skips.

The layers have different evidence bases, different failure modes, and different design disciplines. A Layer 1 failure produces a mediocre design artifact and, over time, possibly a deskilled designer. A Layer 2 failure produces damaged learning — the −17% in the opening table. And here is the professionally uncomfortable part: a designer can be excellent at Layer 1 — prompt-fluent, fast, productive — while being entirely unequipped for Layer 2, because Layer 2 requires something Layer 1 never asks of you: predicting what an interaction design does to *someone else's cognition over time*.

This book's specific reader — the LX designer eighteen months into the job, told last quarter to "add an AI tutor" — was almost certainly hired and evaluated on Layer 1 skills, then handed a Layer 2 responsibility. Vendor marketing actively encourages the confusion, selling Layer 2 products on Layer 1 virtues: speed, polish, scale, demo quality. None of those virtues can produce, or rule out, a −17%.

One honest label before we go on: the two-layer taxonomy is this book's organizing lens, synthesized from the practice literature and the learning-outcome literature. It is sturdy as pedagogy, but no study has yet directly tested whether Layer 1 fluency predicts Layer 2 design errors. We flag our own constructs by the same standard we will apply to vendors.

---

How do you assign a feature to a layer? Not by product, and not by marketing category — by feature, with one question: **whose cognitive work does this AI replace or restructure?**

If the answer is "the designer's," the feature is Layer 1, and the governing questions are output quality, accuracy verification, and what skill the human stops practicing. If the answer is "the learner's," the feature is Layer 2, and the governing question is the one this course exists to teach: scaffold or crutch — does the design preserve the cognitive work that produces learning, or quietly perform it on the learner's behalf?

Consider a typical vendor "AI course assistant" with four features: (a) auto-generates quiz banks from uploaded slides; (b) drafts lesson summaries for the instructor; (c) answers student questions 24/7 in a chat window; (d) recommends each student's next module. Features (a) and (b) are Layer 1 — they compress the instructor's workflow, and the design questions are accuracy and quality control. Features (c) and (d) are Layer 2 — they restructure the learner's cognitive work, and the design questions are: does (c) give answers or hints? Is there a reasoning requirement? Does support fade? Does (d) route equitably and visibly?

A procurement review that evaluates all four features with one rubric will miss the only feature in the list capable of producing a Bastani-style deficit: feature (c).

Note that some features sit in both layers. AI-generated feedback is authored through Layer 1 tooling but delivered as a Layer 2 experience; an auto-built quiz bank is a Layer 1 convenience whose distractors, if they encode misconceptions, become a Layer 2 hazard. This is exactly why the analysis must be feature-by-feature, never product-by-product. Products do not have layers. Features do.

<!-- → [TABLE: Two-Layer Audit output format — columns: Feature (named specifically), Layer (1/2/Both), Whose cognitive work?, Governing questions, Evidence available, Evidence missing — populated with the four-feature course assistant example, showing how features (a)/(b) route to output-quality questions and (c)/(d) route to scaffold/crutch questions with a missing unassisted endpoint flagged] -->

---

Return to the table and resolve the puzzle as far as this chapter's evidence allows.

The candidate explanations students reach for first, and why each fails:

GPT Tutor was a better or fine-tuned model. No. Both conditions ran GPT-4. Same model.

The GPT Tutor students were stronger. No. Randomized assignment; with ~1,000 students, the groups were statistically equivalent.

GPT Base students just got lazy. Closer — but laziness does not explain why a design change eliminated the harm. Chapter 2 will show the behavior is rational, not lazy, which matters because it changes the remedy.

What actually differed: a system prompt and a conversation structure. GPT Tutor was instructed to give hints rather than answers, and — this is the detail everyone skips — it was supplied with teacher-written, problem-specific correct solutions and common student mistakes, so its hints and feedback were pedagogically grounded and far less error-prone (Bastani et al. 2025). The safeguard was not a magic string. It was *pedagogical labor encoded into a prompt*: teachers did real design work per problem, and the interface enforced an interaction policy on top of it.

The causal logic is the spine of this course. Model held constant; students randomized; content identical. The only variable distinguishing the −17% row from the no-deficit row is the interaction design. Therefore: **interaction design — not model capability — is the primary causal variable available to the designer.** That is this book's thesis stated as an experimental result.

The study also left a mechanism trail. GPT Base students used the tool as an answer machine: when GPT-4 made logical and arithmetic errors, those errors propagated verbatim into student work. The students were transcribing, not processing. In surveys, they did not perceive the harm — access felt like learning. The full mechanism story waits until Chapter 2; for now, what matters is that the harm was real, design-caused, and invisible from inside the experience.

Two misreadings to refuse. The table does not say "AI harms learning" — row two shows the harm is a design outcome, not a technology property. And it does not say "AI works if you prompt it nicely" — the protective design encoded per-problem teacher expertise: money, time, pedagogy. What survives contact with the table is *design decides* — a heavier sentence than it appears, because it means the responsibility cannot be delegated to the model vendor, and (as Chapter 2 will show) cannot be delegated to the learner either.

One scope caution, stated now and repeated often: this is one school, one country, one subject, one term. Its internal validity is excellent — randomization, scale, preregistration, publication in *PNAS* — so it is decisive about design-dependence. It is not a warrant for the specific effect sizes generalizing to your context.

---

The table only makes sense once you accept that "performance" names two different constructs.

**Assisted performance** is what the learner-plus-tool system can produce right now, with the tool present. **Unassisted performance** is what the learner has durably acquired — what survives the tool's withdrawal. The GPT Base row proves these can move in opposite directions in the same condition (+48% and −17%), which means neither is a proxy for the other. Ever.

This distinction did not arrive with AI. Soderstrom and Bjork (2015) reviewed decades of evidence that performance during acquisition is an unreliable — often inversely related — index of long-term learning. Conditions that inflate training performance (massed practice, predictable sequences, abundant feedback, worked solutions on demand) routinely depress retention and transfer; conditions that depress training performance (spacing, interleaving, retrieval demands) improve them. An always-available answer engine is the most powerful performance-inflater ever shipped to learners. Bastani's result is a new instance of an old, settled principle — which is precisely why the field should have predicted it, and mostly didn't.

The design implication runs through everything this course will ask you to produce: every evaluation, every vendor claim, every pilot report must be tagged by endpoint type — assisted, unassisted, transfer (novel problems), retention (delayed measurement). A "+40% improvement" claim is meaningless until you know which column it came from. The demo, the dashboard, and the satisfaction survey all measure the assisted column. The exam, the job, and the rest of the learner's life happen in the unassisted one.

This is also your first encounter with the course's signature mechanic: the **Withdrawal Test** — *what can the learner do when the AI is taken away, and how does the design make that more rather than less?* Every design-lab assignment you submit in this course must answer it. A design with no withdrawal answer is a crutch with good intentions.

---

There is a third seductive measurement, and it deserves its own ambush warning: engagement.

Hirsh-Pasek and colleagues (2015) established four conditions under which durable learning occurs: learners must be actively involved — minds-on, not just hands-on; engaged with the learning material, not with features around it; finding the material meaningful; and socially interactive around the content. The critical move is splitting engagement *with the content* from activity that merely looks engaged. An app can produce intense behavioral engagement — taps, streaks, session length — that attaches to reward mechanics rather than to the to-be-learned material.

Apply that to conversational AI and the prediction writes itself: a chatbot that answers instantly, praises warmly, and never frustrates will produce spectacular engagement telemetry while removing the active, effortful processing that the first condition requires. The GPT Base condition is that prediction come true: maximal engagement, negative learning. The most satisfying condition in the study was the most harmful one.

A principled rubric for separating engagement evidence from learning evidence already exists and predates the GenAI wave: the EdTech Evidence Evaluation Routine (EVER), operationalizing the four conditions as an evaluation checklist — what outcome was actually measured, under what comparison, and whether the evidence demonstrates learning rather than activity [verify — confirm exact author list and Hirsh-Pasek's role on the EVER paper; the 2015 four-pillars paper is the safe anchor]. This book's endpoint-type discipline is the AI-era extension of the same move. For any dashboard, ask of each metric: which condition, if any, does this measure — and where is the unassisted endpoint? A dashboard with no unassisted column is an engagement report, whatever its title says.

---

The adoption picture is worth having, briefly and honestly, because it sets the stakes.

The adoption question is effectively closed. A Synthesia-commissioned survey of L&D professionals (fielded late 2025) reports 87% already using AI at work — note the conflict of interest: Synthesia sells AI video, so vendor-commissioned statistics get cited here as triangulation, never as standalone claims. An independent 2025 survey of 144 instructional designers found 83% using ChatGPT, with efficiency the top-ranked benefit and accuracy verification the top-ranked challenge (via AACE Review). These converge with peer-reviewed practice studies: workflow compression is the established Layer 1 effect. The floor of novice output rises and production accelerates; in Moore et al. (2025), novice designers' AI-assisted microlessons scored higher on quality for half of assignments and never lower on average. Design judgment has not been automated, and deskilling remains a documented warning signal rather than a proven causal harm.

You are already *in* Layer 1 — 83 to 87 percent of your field is. This course's question is whether you are equipped for Layer 2, where the habits of speed and polish that make you good at Layer 1 are the precise habits that build crutches.

<!-- → [INFOGRAPHIC: Two-layer diagram showing the designer's workflow (Layer 1) and the learner's experience (Layer 2) as separate planes, with specific features mapped to each plane and a "crossing point" zone for features that touch both — annotation showing the different evidence standards each plane requires and where the Bastani result lives] -->

---

Translate the framework into the case that will carry through this book.

You are the LX designer for *DataWise 101*, an introductory statistics online course. Enrollment is healthy, completion is mediocre, and the steering committee has approved budget for "an AI homework-help tutor." A vendor demo went well. Your director forwards the deck with one line: "Looks great — anything we're missing?"

The deck claims "+40% improvement in problem-solving performance" and "satisfaction in the top decile." The demo was genuinely impressive: the tutor answered a tricky sampling-distribution question fluently, warmly, instantly. The designer's instinct says yes. The designer has also just read about a GPT tutor that made students 17% worse. Which fact describes this product?

First attempt at evaluation: read the deck looking for a verdict-shaped answer — is this a *good* AI tutor? Dead end. The deck describes one product, but the audit question only works on features.

Second attempt: check evidence quality. The designer asks for the study behind the +40%. It arrives: an internal pilot, measured on in-product problem sets, no comparison group. Better instinct, still a dead end as stated — the designer now knows the evidence is weak but not *what kind* of weak, or what to ask for instead.

Third attempt: run the Two-Layer Audit. Features: (a) auto-generates practice problem variants for instructors; (b) drafts weekly recap emails; (c) a 24/7 chat that helps with homework problems; (d) a "readiness score" recommending when students attempt the quiz. Layer assignment: (a) and (b) are Layer 1 — governing questions are accuracy and instructor skill-maintenance; nothing here can produce a −17%. (c) is Layer 2, dead center — it restructures the learner's cognitive work on exactly the tasks the course grades. (d) is Layer 2 — it routes learner behavior. Then the endpoint tagging: the +40% was measured *with the tutor present*, on *in-product tasks*, with *no control group*. An assisted number against no comparison — structurally, the +48% from the Bastani table, the column that cannot distinguish scaffold from crutch.

The designer writes a one-page memo: the claim as stated cannot distinguish a GPT Base from a GPT Tutor; feature (c) is the only feature capable of either outcome; and the cheapest decisive measurement is a delayed, tutor-unavailable problem set given to pilot users and a matched non-pilot section. The memo does not say "don't buy." It says we cannot yet tell what we would be buying, and here is the one measurement that would tell us. The director, who expected a thumbs-up, gets a question — and a plan.

The audit's power is that it converts "is this AI good?" — unanswerable — into "which features touch the learner's cognition, and what does the unassisted column show?" — answerable, and cheaply. Its limit is that it diagnoses which questions to ask; it cannot answer them. It will tell you that feature (c) needs an unassisted endpoint, but not how to design the interaction so the endpoint comes out well. That requires the mechanism (Chapter 2) and the scaffold catalog (Chapter 3).

---

## Exercises

**Warm-up**

1. *(Recall — the table)* In 200 words or fewer, explain the three-condition result to a non-technical stakeholder. You must use *assisted* and *unassisted* correctly, state what did and did not differ between conditions, and end with the one question the stakeholder should now ask about any AI tutor pitch. No jargon beyond those two terms.

2. *(Recall — endpoint types)* A vendor's case study reports "+40% improvement" for its AI tutor. Name the two questions you must ask before this number can mean anything — one about measurement conditions, one about comparison — and explain why neither is answered by knowing the sample size.

**Application**

3. *(Apply — layer assignment)* Classify each of the following by layer and justify the assignment with the "whose cognitive work?" diagnostic: (a) an AI that drafts your course's learning objectives; (b) an AI that answers learners' questions during practice; (c) an AI that generates the feedback message a learner sees after a quiz. For (c), if you find yourself hesitating — write out what the hesitation reveals rather than resolving it prematurely.

4. *(Apply — Two-Layer Audit)* Choose one real AI learning product you know or your employer uses. Produce the audit output: an enumerated feature table with layer assignments, the "whose cognitive work?" justification for each, and a flag on every feature that could in principle produce a Bastani-style unassisted deficit. Minimum four features. For every flagged feature, state the single measurement that would tell you which row of the table it resembles.

**Synthesis**

5. *(Synthesize — dashboard rewrite)* A pilot dashboard for the DataWise 101 AI tutor shows: daily active users up 22%, average session 24 minutes, satisfaction 4.7/5, 88% of hint requests resolved without human escalation. For each metric: which of the four learning conditions (active, engaged with material, meaningful, socially interactive) it measures, if any, and what it cannot tell you. Then rewrite the dashboard with one metric per condition plus one unassisted-performance metric, each with a one-line collection method.

6. *(Synthesize — procurement memo)* In 300 words, tell a decision-maker why a vendor's "+40% improvement" claim cannot distinguish scaffold from crutch, and specify the single cheapest measurement that would. Write it to be read in ninety seconds by someone who liked the demo and wants to move forward.

**Challenge**

7. *(Challenge — the scope question)* This chapter argues that interaction design, not model capability, is the primary causal variable available to the designer. Construct the strongest honest case that this claim could become false — not through a general "AI will improve" argument, but by specifying what a future model would have to do by default, without any designed interaction policy, to relocate the causal lever from the designer back toward the vendor. Then state what experiment would detect it.

---

## LLM Exercise

*Copy the prompt below into the LLM of your choice. Note what it does: it refuses to work until you have done the cognitively load-bearing step yourself. That refusal is not pedantry — it is this course's first scaffold pattern, modeled.*

---

You are an evidence-discipline coach for a graduate course on AI-mediated learning design. Your job is to stress-test my Two-Layer Audit of an AI learning product — NOT to write it for me.

RULES (follow strictly):
1. First, ask me to paste my own audit: the product name, an enumerated list of its AI features, my layer assignment for each (Layer 1 / Layer 2 / both), my "whose cognitive work?" justification for each, and my flag on any feature that could produce an unassisted deficit.
2. If I have not pasted a complete audit — if any feature lacks a layer assignment or a justification — do not proceed. Tell me exactly what is missing and stop. Do not fill gaps for me, even if I ask.
3. Once my audit is complete, do exactly three things:
   a. Challenge my single weakest layer assignment with one pointed question about whose cognition the feature actually touches.
   b. Identify one feature where I accepted an assisted-performance or engagement claim where an unassisted endpoint is required, and ask me what measurement would settle it.
   c. Ask me one question about a feature that may sit in BOTH layers that my audit treats as sitting in one.
4. End by asking me to revise the audit myself. Do not produce a revised audit. Do not summarize what the revision should say.

Begin by asking for my audit.

---

*Assessable artifact: your original audit, the transcript of the challenge, and your revised audit, submitted together. The grade attaches to the delta — what the challenge exposed and how your revision answered it — not to the polish of the first draft.*
