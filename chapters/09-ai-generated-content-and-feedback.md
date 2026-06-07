# Chapter 9 — AI-Generated Content and Feedback: Where Judgment Stays Human
*Generation is fast. Judgment is the bottleneck. The bottleneck is the job.*

A corporate L&D team faces a familiar squeeze: their most experienced instructor is retiring, forty modules need refreshing, and the budget covers six studio days. The vendor pitch writes itself — an AI-generated video lecturer: script it, render it, update it forever. The pilot goes out. Quiz scores come back indistinguishable from the human-instructor versions. The dashboard says success.

The watch-time curves say something else. Engagement sags. Learners drift, skim, abandon. A 2024 study in the *International Review of Research in Open and Distributed Learning* compared AI-generated video instructors against human-instructor versions with 108 learners: **academic performance was equivalent — and engagement was significantly lower** (IRRODL 2024, n = 108). When researchers ask learners what is going on, the words that come back are striking: *distraction, discomfort, disconnectedness* [verify — confirm the quoted triad against the primary text]. The learners couldn't always say what was off. They behaved as if something was.

Here is the design question the dashboard cannot ask: if learners perform the same but trust it less and engage with it less, what exactly did the design lose — and does the loss compound? One module's worth of "equal performance, lower engagement" might be noise. Forty modules of it, across an entire program, in a relationship between learner and learning experience that runs for years — nobody has measured that, and this chapter will not pretend otherwise. What it will do is give you the boundary-drawing discipline that makes the question answerable for your own product.

<!-- → [DIAGRAM: split-screen showing two dashboard views of the same AI-generated video module — left panel: "Performance Dashboard" showing quiz scores for AI-instructor vs. human-instructor conditions, lines overlapping nearly perfectly; right panel: "Engagement Dashboard" showing watch-time curves for the same two conditions diverging significantly after the first few minutes, AI-instructor lower. Caption: "The dashboard that shows success and the dashboard that shows the warning are not the same dashboard. Equal performance at session scale leaves the compound question unanswered."] -->

---

GenAI has collapsed the cost of first drafts: lesson outlines, question banks, worked examples, scripts, scenarios, rubrics, feedback language, media assets. The speed gains are real, and they are not the interesting part.

The interesting part is what the speed did to the shape of the work. When generation was expensive, the queue in front of a learning experience was a *production* queue, and pedagogical judgment rode along inside it — the person writing the worked example was forced, line by line, to decide whether it taught. Near-zero-cost generation breaks that coupling. The queue is now a *validation* queue: is this item accurate? Aligned to the objective? Does its difficulty match its position? Do its distractors mean anything? Is its tone right for this learner now? **Speed moved forward in the pipeline; the bottleneck moved to judgment.**

The designer's value-add was never typing; it was the chain of judgments about whether an artifact produces learning. AI did not erode that role — it isolated it, stripped of the production work it used to hide inside. McTighe and Silver's argument in *Teaching for Deeper Learning* is useful ballast: learning happens when learners actively make meaning — compare, infer, connect, justify — and whether an artifact provokes meaning-making is precisely the property no generation pipeline checks for. Fluency, yes. Accuracy, mostly, with review. *Teaching power* — what distinguishes an explanation that produces understanding from one that merely contains the information — is tacit, contextual, and currently human.

The failure mode that follows from ignoring this has a body count of training budgets: **validation theater.** A team that generates forty modules and "reviews" them at a pace no genuine review could survive has not automated content production; it has automated the *appearance* of content production while quietly removing the judgment layer. The honest version budgets validation as the primary cost center — because it now is.

The misconception to retire: this is a tool-capability problem, and better models will fix the quality. Quality of generated prose keeps improving. Whether an artifact teaches *your* learners *this* objective at *this* point in the sequence is not a property the model can certify about its own output — it is a claim about learners, and it belongs to whoever can be held accountable for it.

---

The evidence on AI feedback sorts cleanly along one line, and once you see it you can classify almost any feedback task in a minute.

**AI feedback is strongest where criteria are explicit, outputs are structurally regular, and correctness can be checked against a rubric or solution.** Writing mechanics and organization, code correctness and efficiency, mathematical procedure, factual accuracy, format compliance. Lee and Moore's (2024) synthesis of the AI-feedback literature (*Online Learning* 28(3)) confirms the pattern: genuine strengths in timeliness, workload reduction, and communication volume — alongside persistent concerns about bias, transparency, privacy, and the standing need for human oversight. A 2025 review spanning 77 studies of AI-powered grading and feedback reaches the same shape of conclusion: capable on explicit criteria at scale, dependent on human oversight everywhere judgment thickens (*Discover Artificial Intelligence* [verify exact citation]).

**AI feedback is weakest where evaluation depends on context, tacit disciplinary norms, or judgment about a person.** Originality and creative risk-taking. Motivationally sensitive correction. Reframing the *misconception underneath* an error rather than the error itself. Assessing reflection or metacognitive quality. Notice these aren't exotic edge cases — they are the high-leverage moments of teaching. The boundary is not "AI handles easy subjects"; it is "AI handles the dimensions of feedback that can be specified in advance, and degrades on the dimensions that must be judged in situ."

The failure case that proves the boundary from the inside predates LLMs, which is exactly what makes it diagnostic. MIT's Les Perelman and colleagues built **BABEL**, a generator producing grammatically elaborate, semantically meaningless essays, and submitted them to automated essay-scoring systems. The gibberish reliably earned top scores. The lesson is precise: an automated evaluator scores the *measurable proxies* of the construct — lexical sophistication, sentence variety, length, structure — not the construct itself. Wherever the proxy can be satisfied without the construct, the evaluator can be gamed. When you hand feedback to an automated system, you are deciding the proxies are close enough to the construct for this task, at these stakes. Sometimes they are. *Saying so out loud* is the design act.

The same proxy-versus-construct failure appears on the generation side as the **plausible-distractor problem**: ask an LLM for multiple-choice distractors and you get options that look wrong in convincing ways — but a pedagogically valuable distractor encodes a *real, known misconception*, so that choosing it tells the system something. Generated distractors that are merely plausible produce items that discriminate without diagnosing. The fix is a design pattern, not a better prompt: distractors are generated *against* a curated misconception inventory, and a human subject-matter judge confirms each one maps to a misconception a real learner actually holds.

<!-- → [DIAGRAM: two-column taxonomy — left column "Explicit criteria (AI-suitable)": writing mechanics, code correctness, procedure steps, factual accuracy, format compliance; right column "Tacit judgment (human-required)": misconception reframing, motivational sensitivity, creative risk evaluation, metacognitive quality, identity-shaping moments. Dashed center line labeled "the boundary: explicit vs. tacit, not easy vs. hard subject." Caption: "The boundary is not a quality gradient — it is a specifiability gradient. AI handles what can be written down in a rubric before the work arrives."] -->

---

The comparative evidence on AI versus teacher feedback does not support parity claims — in either direction. The honest scorecard:

Where researchers have put human and AI feedback on the same student work in front of blind raters, expert human feedback wins on the dimensions that matter most for learning — notably localization (pointing at the specific place the problem lives) and substantive criteria-linked commentary (Steiss et al. 2024, *Learning and Instruction*). AI feedback was competitive on clarity and tone, weaker on the judgment-heavy dimensions the boundary model predicts.

In randomized comparison with ESL writers, AI-generated feedback and human tutor feedback produced **no significant difference in short-term writing improvement**, and learner preferences split roughly evenly (Escalante, Pack & Barrett 2023, *International Journal of Educational Technology in Higher Education*). Short-term parity on explicit-criteria tasks is exactly where the boundary model says parity should appear.

The caution rows: comparative studies tracking what learners *keep* report a pattern worth designing around. Gains from teacher feedback show better retention than gains from AI feedback, and learners receiving AI feedback tend to make fewer and shallower revisions — accepting surface corrections without engaging the underlying issue [verify — these findings are from research notes; re-anchor against the comparative-feedback literature before print]. Both are consistent with the mechanism this whole book is built on: feedback that arrives instantly, fully formed, and frictionlessly invites the same cognitive offloading as answers-on-request tutoring. Feedback can be a crutch too.

The most consistently encouraging configuration across the comparative literature — including a 2025 scoping review of generative AI and second-language writing feedback (*RELC Journal* [verify exact citation]) — is **AI plus teacher, with distinct roles**: AI handles fast, criteria-explicit passes (mechanics, structure, rubric completeness), freeing scarce human attention for the misconception-reframing and motivational work AI does worst. On current evidence this is not a compromise but the best-performing design — note its family resemblance to Tutor CoPilot's support-the-human architecture from Chapter 3, rather than the replacement architecture the procurement pitch assumes.

The defensible sentence: *AI feedback is as good as or better than teacher feedback on speed, availability, and explicit criteria; behind on retention, revision depth, misconception reframing, and the relational channel — so the design question is allocation, not substitution.*

---

Return to the opening case with the full evidence in view. The IRRODL 2024 finding — equal performance, lower engagement, n = 108 — is not an isolated result. Rapid reviews of AI-generated instructional video find the same recurring signature: short-term learning outcomes that match human-made video, alongside weaker learner experience — lower engagement, reduced perceived social presence and authenticity. And learners are not reliably able to articulate the deficit; they enact it.

Three design readings, in ascending order of importance.

**Performance-parity is real and usable.** For low-stakes, procedural, high-churn content — software walkthroughs, compliance refreshers, content that expires quarterly — synthetic delivery at equal short-term performance is a defensible trade. The boundary spec exists precisely so you can take this deal where it is the right deal.

**The engagement deficit is a leading indicator, not a rounding error.** Single-session studies measure a learner watching one video; a curriculum is a relationship — dozens of hours, sustained voluntarily. Engagement predicts whether the learner *comes back*, and the perception/performance split has only been measured at the session scale. Flat performance plus sagging engagement is not "no effect"; it is an unpriced risk taken on the learner's future attention.

**Perceived authenticity is a design variable, not decoration.** Social-presence research has established for decades that learners respond to the perceived *who* behind instruction; who or what authored an experience is part of the experience. Design it deliberately: where human presence carries pedagogical or relational load — welcome and orientation, feedback on personally significant work, anything affectively sensitive — protect it and signal it as visibly human-authored. Where it doesn't, synthetic media with honest disclosure is fine. What is not fine is the default teams drift into: synthetic media *passing* as human. The moment a learner discovers undisclosed synthetic instruction, the trust cost lands on every module, including the human-made ones. **Authenticity laundering is borrowed trust at compound interest.**

And there is a genuinely positive pole in this literature, pointing the same direction as the hybrid feedback result. Hwang and Lee (2025) found students using generative AI as a **refinement partner** in digital content creation showed significantly stronger creative problem-solving than peers using conventional tools — while simultaneously voicing concerns about authorship and over-reliance. The configuration that worked kept the human as author and the AI as challenger and iterator. Partnership architectures keep outperforming replacement architectures, on both sides of the screen.

---

Everything above converges on one artifact: the boundary spec. It answers four questions in writing, per content type and per feedback type.

**What may AI generate?** (And under what grounding — retrieval against course materials, misconception inventories, style constraints.)

**What must humans validate, and how?** (Named role, real capacity, explicit criteria — accuracy, alignment, difficulty position, distractor meaning, representational audit. A validation step without budgeted time is theater.)

**What must humans author outright?** (The tacit-judgment zone: misconception-reframing feedback, motivationally sensitive correction, anything identity-shaping or affectively loaded, the relational moments that carry the course.)

**What are learners told?** (Disclosure as relational metadata: what was AI-generated, what was human-reviewed, what is human-authored — legible at the point of contact, not buried in a syllabus appendix.)

One rule governs how the lines move: **the boundary tightens as stakes rise.** High-stakes, ambiguous, affectively sensitive, or identity-shaping content shifts left — from "AI generates" toward "human validates" toward "human authors." Low-stakes, regular, criteria-explicit, fast-expiring content shifts right. The spec is not a fixed wall; it is a priced gradient, and pricing it is the designer's job.

---

The DataWise 101 tutor enters this week with Chapter 7's adaptivity decision and Chapter 8's audit commitments. The course also needs worked examples, item-bank expansion, per-problem feedback, and weekly check-in messages — and one instructor plus two TAs to validate all of it, at approximately six human hours a week. The spec is therefore not "what can AI do?" but "what can six human hours stand behind at these stakes?"

Tag the inventory first. Isomorphic practice problems: explicit criteria, low stakes, high volume. Worked examples: explicit criteria but high teaching-power sensitivity — a worked example that is correct but pedagogically inert passes accuracy review and fails the course. Per-problem feedback splits into procedural ("your test statistic is right; the df is wrong") and conceptual ("you're treating the CI as a statement about the data"). Weekly check-ins: affective, relational, low volume.

First dead end: letting the LLM diagnose and reframe misconceptions in free conversation. Piloted internally, it produced reframings that were fluent, plausible, and wrong in untrackable ways. Declined. Second dead end: full human authorship of all feedback. The arithmetic kills it — six hours a week buys either hand-authored feedback for a fraction of learners or validated coverage for all of them. Purity that doesn't scale is inequity with better intentions. Third dead end: AI-generated distractors accepted on plausibility. Review caught the section 9.2 problem live — convincing wrong answers mapping to no misconception any student actually holds. Rebuilt against the misconception inventory: the LLM generates *candidates per named misconception*; a human confirms the mapping.

The resolved boundary table, abridged:

Isomorphic practice problems: **AI generates**, grounded in the seed bank; **TA validates** on accuracy, difficulty position, and representational audit, sampled at 30% after term one; **learner is told** "Practice items AI-generated, instructor-reviewed." Distractors: **AI generates candidates** per named misconception; **instructor confirms** the misconception mapping, 100%; misconception inventory itself is human-authored. Worked examples: **AI drafts first versions**; instructor **authors final versions** — teaching-power judgment is tacit; **learner is told** "Instructor-authored." Procedural feedback: **AI generates**, template-grounded, spot-checked weekly; **learner is told** "Automated check, instructor-reviewed system." Conceptual and misconception-reframing feedback: AI **selects from an instructor-authored reframing bank** matched by tagged error; **instructor owns and authors the bank**; **learner is told** "Written by your instructor, delivered automatically." Weekly check-ins and anything responding to learner affect: **instructor/TA always, no AI**; implicit and true.

Escalation rule: two consecutive conceptual-feedback deliveries on the same skill without resolution triggers a TA notification with the conversation attached. Disclosure lives at point of contact, one line, plain words.

<!-- → [TABLE: boundary spec — columns: Artifact, AI Generates, Human Validates (role + criteria), Human Authors, Learner Is Told. Rows as described above: practice problems, distractors, worked examples, procedural feedback, conceptual feedback, weekly check-ins. Footer row: "Escalation: two consecutive conceptual feedback failures → TA flag with transcript." Caption: "The spec converts 'what can AI do?' — unanswerable — into 'what can our validation capacity stand behind at these stakes?' — budgetable and auditable."] -->

The lesson: the spec converts "what can AI do?" — unanswerable and the wrong question — into "what can our human judgment capacity stand behind at these stakes?" — answerable, budgetable, and auditable.

The limit: this spec works because intro statistics has a mappable misconception inventory and mostly explicit criteria. Point the same protocol at a design-critique course and the human-authors column swallows nearly everything — at which point the honest output is approximately no AI-generated feedback, and the spec should say so without embarrassment.

---

## Evidence Box

<!-- → [TABLE: evidence summary — columns: Finding, Source, Endpoint type, Status.] -->

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| AI-generated video lecturers: equal academic performance, significantly lower engagement (n = 108); "distraction, discomfort, disconnectedness" | IRRODL 2024 | Short-term performance + engagement | **Verified study; triad [verify against primary text]** |
| AI feedback strong on timeliness/workload/explicit criteria; persistent oversight, bias, transparency concerns | Lee & Moore 2024, *Online Learning* 28(3) | Systematic review | **Verified** |
| AI grading capable on explicit criteria at scale; human oversight required where judgment thickens | 77-study review, *Discover Artificial Intelligence* 2025 | Review | **Direction verified; [verify exact citation]** |
| Expert human feedback beats AI on localization and criteria-linked substance | Steiss et al. 2024, *Learning and Instruction* | Blind-rated feedback quality | **Verified** |
| AI vs. human tutor feedback: no significant short-term ESL writing difference; preferences split | Escalante, Pack & Barrett 2023, *IJETHE* | Short-term learning outcome | **Verified** |
| Retention favors teacher feedback; AI feedback associated with fewer/shallower revisions | Comparative-feedback literature per research notes | Retention; revision behavior | **[verify — anchors not re-confirmed this pass; re-anchor before print]** |
| Hybrid AI + teacher feedback most consistently favorable configuration | 2025 L2 feedback scoping review, *RELC Journal*; converging reviews | Review-level | **Direction verified; [verify exact citation]** |
| GenAI as refinement partner → stronger creative problem-solving; authorship/over-reliance concerns | Hwang & Lee 2025 | Performance + self-report | **[verify — pin citation before print]** |
| BABEL gibberish essays earned top automated essay scores (e-rater era) | Perelman et al., BABEL project | Adversarial demonstration | **Verified; pre-LLM — diagnostic, not current-product claim** |

**What remains unsettled:** whether the engagement deficit compounds over a full curriculum; whether revision-depth effects persist as learners habituate to AI feedback; everything in ill-structured creative domains.

---

## What Would Change My Mind

This chapter holds the boundary line — explicit criteria to AI, tacit judgment to humans — and treats the engagement deficit of synthetic instruction as an unpriced risk. Two findings would move it. On feedback: randomized studies showing AI-delivered *misconception-reframing* feedback producing revision depth and delayed-retention outcomes matching expert teacher feedback, in more than one domain, with unassisted performance as the endpoint — that would shift the conceptual-feedback row from "human authors" toward "AI drafts, human validates," and substantially shrink the chapter's protected zone. On content: longitudinal evidence that the perception/performance split *dissipates* — that learners habituate to disclosed synthetic instruction with no attrition, trust, or effort cost over a full program — would downgrade perceived authenticity from a load-bearing design variable to a transitional preference. Neither finding exists as of this writing. Both are measurable. The next edition will report whichever way they fall.

---

## Still Puzzling

- **Does the engagement deficit compound?** Session-scale studies cannot say what forty modules of "equal performance, lower engagement" do to a learner's relationship with an institution. Nobody has run the study.
- **Is the revision-depth problem intrinsic to instant feedback, or a design artifact?** The crutch literature says friction helps. Can feedback that withholds the fix behind a reasoning gate recover revision depth? The feedback-specific evidence is thin.
- **Where does the misconception inventory come from at scale?** The boundary spec leans on curated misconception banks, which exist for statistics and school mathematics and almost nowhere else. Building them at scale may be the field's next decade of unglamorous load-bearing work.
- **What is the procedure for moving a boundary row?** As models improve, the explicit/tacit line will be probed annually. What evidence is required, and whose sign-off, so that boundary creep becomes boundary revision?

---

## Exercises

**Warm-up**

1. *(Recall — the pipeline shift)* State the pipeline shift in one sentence. Then name the failure mode that results when teams generate at speed without restructuring around the new bottleneck — give it the name this chapter uses — and describe the one observable sign that a team has already fallen into it.
*Difficulty: low. Tests: pipeline shift as a structural change, not just a speed gain; validation theater as a named and diagnosable failure mode.*

2. *(Recall — the BABEL lesson)* What did BABEL prove about automated evaluation, and what is the generation-side twin of that failure? Your answer should name the design pattern — not just the problem — that closes the generation-side version.
*Difficulty: low. Tests: proxy-versus-construct gap applied to both evaluation and generation; the misconception-inventory fix as the specific pattern.*

3. *(Recall — the defensible sentence)* A vendor claims "our AI feedback performs as well as instructors." Write the conditional sentence that is actually defensible given this chapter's evidence — specifying which endpoints support the claim and which endpoints don't, and why the difference matters for a designer making an adoption decision.
*Difficulty: low. Tests: endpoint literacy applied to a realistic vendor claim; the AI/human feedback evidence scored honestly without either dismissal or endorsement.*

**Application**

4. *(Apply — distractor audit)* Generate (or take provided) AI distractors for three statistics items covering sampling distributions. For each distractor, determine: does it encode a real misconception, merely plausible wrongness, or accidental correctness? Rewrite the weakest distractor against a named misconception from any course misconception inventory you can access, and state exactly what a learner's choice of the revised distractor would tell an adaptive system that the original version could not.
*Difficulty: moderate. Tests: the plausible-distractor problem in a realistic content domain; the distractor-as-diagnostic-signal design requirement.*

5. *(Apply — boundary classification)* Take six feedback moments from a tutoring interaction (use your own spec from Chapter 6, or the DataWise 101 example). Classify each on the explicit-criteria / tacit-judgment boundary, citing evidence from sections 9.2–9.3 for each placement. Flag any moment where the classification changes with stakes — and explain why stakes move the line.
*Difficulty: moderate. Tests: boundary classification applied to real feedback moments; stakes as a variable that shifts placement, not a separate dimension.*

6. *(Apply — the four-column table)* Build the boundary spec for one specific segment of a learning experience of your choosing — not the full course, just one content type and two feedback moments. Populate all four columns: AI generates, human validates (named role + criteria), human authors, learner is told. Then write the validation budget in hours and check whether your stated capacity can actually cover the "human validates" column. If it cannot, show which row must move left.
*Difficulty: moderate. Tests: the boundary spec as a budgeting tool, not a permissions checklist; the reconciliation between stated validation standards and real capacity.*

**Synthesis**

7. *(Synthesize — the authenticity tradeoff)* A program director argues: "If short-term performance is equal, the engagement difference doesn't justify the cost of human video production." Write a 200-word response using the three readings from section 9.4 — performance-parity, engagement as leading indicator, and authenticity as design variable — to give the argument its strongest countercase, a genuine rebuttal, and a criterion that would let a team make the call defensibly rather than by default.
*Difficulty: moderate-high. Tests: the perception/performance split read as a multi-layered design signal; the distinction between a settled finding and an unpriced risk.*

8. *(Synthesize — the validation pipeline)* The chapter argues that validation theater is the primary failure mode of AI-accelerated content production. Design a minimal viable validation pipeline for a team with two hours of human review time per week and a content inventory of 60 AI-generated practice items, 20 AI-drafted worked examples, and automated feedback on 400 learner submissions per week. Your pipeline must specify: what gets sampled vs. what gets reviewed fully, on what criteria, by what role — and which item in the inventory poses the highest risk if validation fails. Justify the triage explicitly.
*Difficulty: high. Tests: validation as a resource-allocation problem; high-stakes vs. low-stakes row differentiation under real constraints.*

**Challenge**

9. *(Challenge — boundary creep)* The chapter names boundary creep — high-stakes rows drifting right under deadline pressure — as a failure mode. Design a governance mechanism that makes boundary creep *visible* as it happens: what signal would indicate a row had moved without a formal re-pricing decision, what audit would catch it, and who would be accountable for the catch. Your mechanism must be lightweight enough that a team of three could run it without a dedicated oversight role.
*Difficulty: high. Tests: treating the boundary spec as a living document with drift risk, not a one-time deliverable; governance design as part of the content pipeline, not separate from it.*

---

## LLM Exercise

Copy-paste into the LLM of your choice. It requires your own boundary spec and refuses to proceed without it — and as you run it, notice which of its review moves you could not have specified in advance. That experience is data about the boundary.

---

You are a boundary-spec reviewer for AI-generated content and feedback in learning products. I will paste my content/feedback boundary spec — the four-column table (AI generates / human validates / human authors / learner is told) plus validation budget, disclosure copy, and escalation triggers.

**If no spec is pasted below, do not generate an example spec or a template. Ask me for my spec and stop.**

Once you have it, proceed gated, one step at a time, waiting for my answer:

1. Before reviewing, ask me: "Which row of your table would suffer boundary creep first under deadline pressure, and what would the first symptom be?" Do not continue until I answer in my own words.
2. Then audit my validation budget: total the human hours my table implies and compare against my stated capacity. If they don't reconcile, show the arithmetic and ask which rows move left or get cut.
3. Then attack one placement: pick the row whose explicit/tacit classification is most contestable, argue the opposite placement using the retention and revision-depth evidence, and require me to defend or move it.
4. Then test my disclosure copy against a skeptical learner: quote it back and ask me what that learner now believes about who made their feedback — and whether it's true.
5. Only after steps 1–4: verdict — the spec's strongest boundary, its weakest, and the single revision with the largest learning payoff.

Do not rewrite my spec. Questions and critique only; the revision is mine.

My spec:
[PASTE YOUR BOUNDARY SPEC HERE]

---

*Deliverable: the transcript, your revised spec with revisions tracked, and a 150-word reflection on which step in the review was hardest to answer and what that reveals about where your boundary was drawn by habit rather than evidence.*

---

## Further Reading

- **Lee & Moore (2024). *Online Learning*, 28(3).** The systematic review behind the chapter's strength/weakness map — read it for the oversight findings the abstract undersells.
- **Steiss et al. (2024). "Comparing the quality of human and ChatGPT feedback." *Learning and Instruction*.** The cleanest head-to-head quality comparison; note exactly which dimensions humans win and why they are the learning-bearing ones.
- **Escalante, Pack & Barrett (2023). *IJETHE*.** Short-term outcome parity with split learner preferences — the study to cite when someone claims AI feedback is useless or that it has made teachers redundant.
- **McTighe & Silver, *Teaching for Deeper Learning*.** The meaning-making framework behind "teaching power"; the lens that turns content validation from proofreading into pedagogy.
- **Perelman's BABEL project coverage (MIT).** The adversarial demonstration that automated evaluation scores proxies, not constructs — pre-LLM, which is precisely why it still teaches.
