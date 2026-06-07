# Research Notes: Chapter 01 — Two Layers of Change: AI in Design Practice and in the Learning Experience
**Source:** TIKTOC.md chapter entry
**Notes file:** 01-two-layers-of-change_notes.md
**Corresponding chapter:** chapters/01-two-layers-of-change.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn the field's central pattern — AI is changing both how learning is designed and what learners experience — and meet the three-condition table that defines the course.

**Learning outcomes:**
1. (Understand) Distinguish AI's effect on the practice of design (workflow compression) from its role as a participant in the learning experience (tutor, evaluator, recommender, agent).
2. (Understand) Explain the three-condition Bastani result: same model, opposite unassisted outcomes, interaction design as the difference.
3. (Analyze) Examine one AI learning product they know and identify which layer each of its AI features occupies.

**Opening:** One table, three rows. GPT Base: +48% assisted, −17% unassisted. GPT Tutor: +127% assisted, no deficit. Control. The students are asked what differed between rows one and two. It was not the model.

**Core content:** The two-layer pattern; the central claim (interaction design, guardrails, oversight determine scaffold vs. shortcut); assisted vs. unassisted performance as different measurements; course map.

**Assessment:** Evidence Brief #1 (30 pts)

**Bridge:** Row one of the table — the −17% — has a mechanism. Two of them, in fact: one behavioral, one you can see on an EEG.

---

## A. Conceptual foundations

### The two-layer pattern: AI in design practice vs. AI in the learning experience

AI is reshaping learning experience design in two distinct layers simultaneously, and conflating them is the field's most common category error. **Layer 1** is AI changing the *practice of design* — the designer's own workflow. Generative tools accelerate ideation, persona drafting, storyboarding, content generation, question-bank production, and prototyping. The designer is the user; the learner never sees this AI directly (though they inherit its outputs). **Layer 2** is AI as a *participant in the learning experience itself* — tutor, evaluator, recommender, feedback engine, coach, and increasingly an autonomous agent that routes learners through content. Here the learner is the user, and the AI's interaction design directly shapes what cognitive work the learner does or skips.

The layers have different evidence bases, different failure modes, and different design disciplines. Layer 1 failures produce mediocre design artifacts and, over time, possibly deskilled designers (the Week 5 topic). Layer 2 failures produce damaged learning — the −17% in the opening table. A designer can be excellent at Layer 1 (prompt-fluent, fast, productive) while being entirely unequipped for Layer 2, because Layer 2 requires predicting what an interaction design does to *someone else's cognition over time*. The book's specific person — the LX designer told to "add AI" to an onboarding product — is typically hired and evaluated on Layer 1 skills and then handed a Layer 2 responsibility.

A useful diagnostic the chapter should teach: for any AI feature, ask *whose cognitive work does this AI replace or restructure?* If the answer is "the designer's," it is Layer 1 and the governing question is design quality and designer development. If the answer is "the learner's," it is Layer 2 and the governing question is the scaffold/crutch question. Some features sit in both layers (AI-generated feedback is authored via Layer 1 tooling but delivered as a Layer 2 experience), which is exactly why the layer analysis must be feature-by-feature, not product-by-product — this is learning outcome 3.

**Common misconception:** "AI in education" is one phenomenon, so competence with AI tools (Layer 1 fluency) qualifies someone to design AI-mediated learning (Layer 2). The layers are different disciplines: one is about the designer's output, the other about the learner's cognition. Vendor marketing actively encourages the conflation by selling Layer 2 products on Layer 1 virtues (speed, polish, scale).

**Worked example:** Take a vendor "AI course assistant" with four features: (a) auto-generates quiz banks from uploaded slides; (b) drafts lesson summaries for the instructor; (c) answers student questions 24/7 in a chat window; (d) recommends each student's next module. Layer analysis: (a) and (b) are Layer 1 — they compress the designer's/instructor's workflow; the design questions are accuracy, quality control, and what skill the human stops practicing. (c) and (d) are Layer 2 — they restructure the learner's cognitive work; the design questions are: does (c) give answers or hints, is there a reasoning requirement, does support fade; does (d) route equitably and visibly. A procurement review that evaluates all four features with one rubric will miss the only feature capable of producing a −17%: feature (c).

**Source(s):** ai_lxd_definitive_synthesis.md ("The Central Pattern"); Luo et al. 2025 and Yang & Stefaniak 2025 (*Educational Technology Research and Development*) for Layer 1 practice evidence; Bastani et al. 2025 (PNAS) for Layer 2 stakes.

### Interaction design as the causal variable: the three-condition table

Bastani et al. (2025), "Generative AI without guardrails can harm learning: Evidence from high school mathematics," *PNAS* 122(26), e2422633122, is the course's foundational artifact. Field experiment (RCT) with nearly 1,000 high school math students (grades 9–11) at a high school in Turkey. Three conditions during in-class practice sessions: **GPT Base** (an interface mimicking standard ChatGPT on GPT-4, unrestricted), **GPT Tutor** (the same GPT-4 with a system prompt designed to safeguard learning), and **control** (standard practice, no AI). Results: during assisted practice, GPT Base improved performance +48% vs. control and GPT Tutor +127%. On the subsequent *unassisted* exam, GPT Base students performed **−17% worse than students who never had AI at all**, while GPT Tutor students showed no significant deficit (statistically indistinguishable from control).

The causal logic is the chapter's spine: same model (GPT-4), same students (randomized), same math content, same school. The only variable distinguishing the −17% row from the no-deficit row is the interaction design — a system prompt and conversation structure. GPT Tutor was instructed to provide hints rather than answers and was supplied with teacher-provided, problem-specific correct solutions and common student mistakes (so its hints and feedback were pedagogically grounded and less error-prone). Therefore: interaction design, not model capability, is the primary causal variable available to the designer. This is the book's thesis stated as an experimental result.

Supporting mechanism evidence within the study: students in GPT Base used the tool as an "answer machine" — logical and arithmetic errors made by GPT-4 propagated directly into student work, indicating copying without checking. Students also did not accurately perceive the harm; access felt like learning. (The behavioral and neurological mechanisms get full treatment in Chapter 2; Chapter 1 needs only the result and its design implication.)

**Administrative note for the Evidence Box:** PNAS issued a formal correction in August 2025 (PNAS, 10.1073/pnas.2518204122). The correction is trivial — a production error in Osbert Bastani's author affiliation (corrected to Department of Computer and Information Science, University of Pennsylvania). **No findings, data, or analyses were changed.** Worth stating explicitly in the book because "the study was corrected" circulates online stripped of this context, and the chapter teaches evidence hygiene by example. The study previously circulated as an SSRN working paper (abstract 4895486, 2024) under the same title, so citations to "Bastani et al. 2024" and "2025" refer to the same study.

**Common misconception:** "A better model means better learning" (Prior Misconception #1 in TikTOC). The table refutes it directly: model held constant, outcomes inverted. Corollary misconception: the −17% means "AI harms learning" — also wrong; the same table's second row shows the harm is a design outcome, not a technology property. The chapter must hold students in the uncomfortable middle: neither "AI works" nor "AI harms" survives the table.

**Worked example:** Walk the table as the Week 1 opening exercise. Ask students to explain rows 1 vs. 2 before revealing the design difference. Typical wrong answers to anticipate and use: "GPT Tutor was a newer/fine-tuned model" (no — same GPT-4); "GPT Tutor students were better students" (no — randomized); "GPT Base students just got lazy" (closer, but laziness doesn't explain why the design change fixed it — Chapter 2 shows shortcut-seeking is rational, not lazy). Then the reveal: the difference fits in a system prompt. End with the transfer question: "Your company's AI tutor demo showed a 40% improvement during use. Which column of this table is that number from, and what would the other column show?"

**Source(s):** Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI without guardrails can harm learning: Evidence from high school mathematics. *PNAS* 122(26) e2422633122. https://www.pnas.org/doi/10.1073/pnas.2422633122 ; correction at https://www.pnas.org/doi/10.1073/pnas.2518204122 ; Knowledge at Wharton, "Without Guardrails, Generative AI Can Harm Education."

### Assisted vs. unassisted performance: two different measurements

The table only makes sense once students see that "performance" is two different constructs. **Assisted performance** measures what the learner + tool system can produce right now. **Unassisted performance** measures what the learner has durably acquired — what survives the tool's withdrawal. These can move in opposite directions in the same condition (GPT Base: +48% and −17%), so neither is a proxy for the other.

This distinction predates AI and has a deep literature the chapter should anchor to, because it inoculates against "this is just an AI panic" dismissals. Soderstrom & Bjork (2015, *Perspectives on Psychological Science*, "Learning Versus Performance: An Integrative Review") catalog decades of evidence that performance during acquisition is an unreliable — often inversely related — index of long-term learning: conditions that inflate training performance (massed practice, predictable sequences, abundant feedback, worked solutions on demand) routinely depress retention and transfer, while conditions that depress training performance (spacing, interleaving, retrieval demands) improve them. An always-available answer engine is the most powerful performance-inflater ever shipped to learners. The AI-specific result (Bastani) is a new instance of an old, settled principle — which is precisely why the field should have predicted it.

Design implication that the whole course builds on: every evaluation, every vendor claim, and every pilot report must be tagged by *endpoint type* — assisted, unassisted, transfer, retention. The book's signature mechanic (the Withdrawal Test: "what can the learner do when the AI is taken away?") is this distinction operationalized as a grading rule. Chapter 1 introduces the vocabulary; Chapter 14 builds the full evaluation doctrine.

**Common misconception:** "High engagement and high in-product scores mean the product is working" (Prior Misconception #3). Engagement and assisted scores are the two most-reported EdTech metrics and the two least informative about durable learning. The +48%/−17% pair is the canonical counterexample: the most satisfying condition was the most harmful one.

**Worked example:** The learner-profile scenario, run as a diagnosis: a designer's AI onboarding tutor pilot reports 92% satisfaction and +35% on in-module checks. Ask students to design the one additional measurement that would distinguish "scaffold" from "crutch": a delayed, AI-unavailable performance task on the same competencies (plus ideally a near-transfer task). Then ask what result pattern would look like GPT Base (in-module gain, unassisted deficit vs. a no-AI comparison group) and what would look like GPT Tutor (in-module gain, no unassisted deficit). Students discover they cannot answer the scaffold/crutch question from the pilot data as reported — which is the Week 1 version of the course's central skill.

**Source(s):** Soderstrom, N. C., & Bjork, R. A. (2015). Learning versus performance: An integrative review. *Perspectives on Psychological Science* 10(2), 176–199; Bastani et al. 2025 (PNAS); ai_lxd_definitive_synthesis.md Principle 3 ("Engagement is not learning; performance with AI is not performance").

### Engagement is not learning: the four pillars and the EVER routine

Kathy Hirsh-Pasek and colleagues provide the science-of-learning frame for why engagement metrics mislead. Hirsh-Pasek, Zosh, Golinkoff, Gray, Robb & Kaufman (2015, *Psychological Science in the Public Interest*, "Putting Education in 'Educational' Apps: Lessons From the Science of Learning") established the **four pillars**: durable learning occurs when learners are (1) **actively involved** (minds-on, not just hands-on), (2) **engaged with the learning material** (not distracted by features), (3) finding the material **meaningful** (connected to prior knowledge and real contexts), and (4) **socially interactive** (high-quality interaction around the content). The pillars' critical move is splitting "engagement" from "activity that looks engaged": an app can produce intense behavioral engagement (taps, streaks, session length) while the engagement attaches to reward mechanics rather than the to-be-learned content. Applied to conversational AI: a chatbot that answers instantly, praises warmly, and never frustrates produces spectacular engagement telemetry while removing the active, effortful processing the first pillar requires.

The **EVER routine** — EdTech Evidence Evaluation Routine (npj *Science of Learning*, 2023) — operationalizes the pillars as an evaluation checklist for EdTech claims: it asks evaluators to check whether a product's evidence actually demonstrates learning under the pillars, what outcome was measured, and against what comparison. For Chapter 1 the load-bearing idea is that *a principled rubric for separating engagement evidence from learning evidence already exists* and was built before the GenAI wave; the book's endpoint-type discipline (assisted/unassisted/transfer) is the AI-era extension of the same move. **VERIFICATION NOTE:** the EVER paper is verified (npj Science of Learning, 2023, "Applying the science of learning to EdTech evidence evaluations using the EdTech Evidence Evaluation Routine (EVER)"; PubMed 37673873) and is built explicitly on Hirsh-Pasek's four-pillars framework; the exact author list should be pulled before drafting — Hirsh-Pasek's authorship role on the EVER paper itself (vs. the 2015 pillars paper) needs confirming. The TikTOC's shorthand "EVER framework (Hirsh-Pasek)" is directionally right but should be cited precisely in the chapter.

**Common misconception:** Engagement is treated as a leading indicator of learning ("they love it, so it must be working"). The pillars show engagement is a *necessary-but-radically-insufficient* condition, and the wrong kind of engagement (with mechanics, with the AI's affect, with frictionless answer flow) is actively anti-correlated with the effortful processing learning requires. The Bastani GPT Base condition is the四 pillars' prediction come true: maximal engagement, negative learning.

**Worked example:** Score the Track A statistics tutor's hypothetical pilot dashboard against the four pillars. Dashboard shows: daily active users up, average session 24 min, 4.7/5 satisfaction, 88% of hint requests resolved without escalation. Pillar analysis: none of these measure active cognitive involvement with statistics (pillar 1) — "hint requests resolved" may measure answer delivery; session length may measure dependence, not engagement with content (pillar 2); nothing measures meaningfulness or social interaction. The exercise output: rewrite the dashboard with one pillar-aligned metric per pillar, plus one unassisted-performance metric. (This previews Evidence Brief #1.)

**Source(s):** Hirsh-Pasek, K., Zosh, J. M., Golinkoff, R. M., Gray, J. H., Robb, M. B., & Kaufman, J. (2015). Putting education in "educational" apps. *Psychological Science in the Public Interest* 16(1), 3–34; EVER: npj *Science of Learning* (2023), https://www.nature.com/articles/s41539-023-00186-7 (PubMed 37673873); Meyer, M., Zosh, J. M., et al. (2021, *Journal of Children and Media*) applied the pillars to app-store content analysis (PubMed 35282402) — useful precedent for "audit a product against the pillars" exercises.

### The state of Layer 1: what design practice adoption actually looks like (2025–2026)

To teach the two layers, the chapter needs an honest snapshot of Layer 1 adoption — establishing that AI in design practice is no longer optional or emerging, which is exactly why the Layer 2 discipline is urgent. Current verified markers: a Synthesia-commissioned survey of L&D professionals (fielded October–November 2025, published as the "AI in Learning & Development Report 2026") reports **87% already using AI** in their work, only 2% with no adoption plans, 36% using AI in defined workflows, and 9% scaling it organization-wide. A 2025 survey of 144 instructional designers (reported via AACE Review, "Generative AI for Instructional Design: Changes, Chances, Challenges") found **83% using ChatGPT**, with efficiency the top-ranked benefit and 67% reporting moderate-to-significant time savings; gains concentrated in content drafting, feedback, and ideation; top challenges were verifying accuracy, ethical risk, prompt formulation, and weak personalization. These triangulate with the peer-reviewed practice studies in the synthesis: Luo et al. (2025, ETR&D — ideation, low-stakes drafts, process streamlining, with quality/privacy/authorship concerns), Yang & Stefaniak (2025, ETR&D — content generation, writing improvement, problem-solving; attitudes split optimistic/wary/pessimistic), and Kumar et al. (2024, *Online Learning* — designers also guiding faculty use and institutional policy).

The pattern to name: **workflow compression is the established Layer 1 effect** — the floor of novice output rises and production accelerates (Moore et al. 2025, AIED: novice designers' AI-assisted microlessons scored higher on quality for half of assignments, never lower on average) — while design *judgment* has not been automated and deskilling remains a documented warning signal rather than a proven causal harm. Chapter 1 should plant this asymmetry and explicitly defer it: Layer 1 gets its full chapter at Week 5. Vendor-survey provenance (Synthesia sells AI video) must be flagged as a conflict-of-interest teaching moment — the book's Week 4 vendor-claim discipline, previewed.

**Common misconception:** "AI adoption in design practice is hype; most designers aren't really using it." By late 2025 the adoption question is closed (87%, 83% across independent surveys); the open questions are quality, skill development, and governance. The reverse misconception also appears: "everyone uses it, therefore using it well is solved." Adoption ≠ competence; the surveys themselves report accuracy verification as the top unsolved challenge.

**Worked example:** A design team lead announces "we're an AI-first team now" and mandates GenAI in all deliverables. Layer analysis exercise: which parts of this mandate are Layer 1 decisions the lead is entitled to make on productivity evidence (draft generation, storyboard variants) — and which parts quietly cross into Layer 2 (the AI-generated feedback messages that ship to learners, the auto-generated quiz banks whose distractors encode misconceptions)? Students produce a two-column sort of the team's deliverables and mark the crossing points where Layer 2 evidence standards must take over.

**Source(s):** Synthesia, AI in Learning & Development Report 2026 (survey Oct–Nov 2025), https://www.synthesia.io/reports/ai-in-learning-and-development-report-2026 (vendor-commissioned — flag); AACE Review, "Generative AI for Instructional Design: Changes, Chances, Challenges" (2025 survey, n=144); Luo et al. 2025, Yang & Stefaniak 2025 (ETR&D); Kumar et al. 2024 (*Online Learning*); Moore et al. 2025 (AIED) — all per ai_lxd_definitive_synthesis.md §1.

---

## B. Domain examples and cases

### Case 1: The Bastani three-condition RCT as the course's defining case (K-12 mathematics)

Use the study itself as Case 1, told as a design story rather than a methods report: a school deploys "AI tutoring"; the deployment is actually two different *designs* of the same model; the design difference is invisible in the demo, invisible in the assisted scores, and decisive on the exam. Concrete details for narrative texture: Turkish high school, grades 9–11, ~1,000 students, in-class practice sessions on math; GPT Tutor's safeguards were teacher-built (correct solutions and common-mistake feedback supplied per problem) — i.e., the scaffold was *pedagogical labor encoded into a prompt*, not a model upgrade. Students copied GPT Base's arithmetic errors into their own work — the smoking gun that they weren't processing. **Source:** Bastani et al. 2025, PNAS 122(26) e2422633122; Wharton coverage ("Without Guardrails, Generative AI Can Harm Education," Knowledge at Wharton).

### Case 2: The eighteen-months-in designer (corporate L&D — the learner-profile scenario, labeled illustrative)

The TikTOC Part 2 "specific person": an LX designer told to integrate an AI tutor into onboarding; impressive vendor demo, high pilot satisfaction — and then they read about the −17%. Run as the chapter's connective case: which facts describe their product? Answer: *they cannot tell from the data they have*, because demo quality and satisfaction are Layer 1-style and engagement-style evidence about a Layer 2 feature. The case ends with the question the course answers, not the answer. **Label: illustrative case** (per Part 10 sourcing rule).

### Case 3: Layer 1 in the wild — instructional design adoption surveys (design-team practice)

The 2025–2026 adoption snapshot (87% L&D adoption per Synthesia 2026 report; 83% of 144 surveyed IDs using ChatGPT per AACE-reviewed survey; Luo/Yang & Stefaniak/Kumar peer-reviewed pattern) as a short documentary case of Layer 1: what compression looks like, what concerns practitioners themselves report (accuracy verification, authorship, privacy), and the split into optimistic/wary/pessimistic camps. Purpose: students locate *themselves* in Layer 1 before the course asks them to take responsibility for Layer 2. **Sources:** as in §A.5.

### Failure case: LAUSD's "Ed" chatbot and the AllHere collapse (K-12, layer confusion at procurement scale)

Los Angeles Unified School District launched "Ed," an AI student advisor/chatbot built by startup AllHere, announced with national fanfare in March 2024 at a reported ~$6M contract; by June 2024 AllHere's CEO had departed and the company furloughed most staff and collapsed into insolvency, leaving the district's flagship AI integration unsupported, with subsequent reporting raising concerns about overstated capabilities and student-data handling. Use as the Layer-confusion failure: the procurement evaluated a Layer 2 product (an AI participant in students' learning and advising) largely on Layer 1-style virtues — demo polish, feature breadth, speed to market — with no unassisted-outcome evidence and no evaluation plan. The design lesson is not "vendor risk exists" but "no one in the room was equipped to ask the Layer 2 questions." **Source basis:** widely reported June–July 2024 (The 74's investigative reporting broke the AllHere collapse; LA Times and EdWeek covered the contract and shutdown). **FLAG:** verify current status of Ed/LAUSD contract details and exact figures before drafting; reporting evolved through 2024–2025 and precise contract value varies by source ($3M initial vs. ~$6M total appears in different accounts).

---

## C. Connections and dependencies

**Prerequisites:** Core LXD toolkit from the companion volume (*Experience Design for EdTech*) or Dirksen-level equivalent: learner research, journey mapping, prototyping, basic evaluation. Hands-on familiarity with at least one LLM product as a user. No statistics beyond reading a percentage-difference table (the chapter should model how to read the table slowly). Week 1 includes the "toolkit map" for readers entering cold (Risk 2 mitigation).

**Unlocks:** Everything. The two-layer distinction is the book's organizing taxonomy (Layer 1 → Chapter 5; Layer 2 → Chapters 6–13). The three-condition table is re-read in Chapter 2 (mechanism), Chapter 3 (the GPT Tutor design read as artifact), Chapter 4 (endpoint types and evidence weighing), Chapter 6 (the spec that produced row 2), and Chapter 14 (the Withdrawal Test as evaluation doctrine). Assisted/unassisted vocabulary is load-bearing for the midterm diagnostic and every Evidence Brief.

**Adjacent chapter connections:** There is no Chapter 0; Chapter 1's backward connection is to the companion volume (the Week 1 toolkit map states what is assumed, not taught). Forward to **Chapter 2 (The Crutch Effect)**: Chapter 1 establishes *that* the −17% happened and that design caused it; Chapter 2 supplies the two mechanisms — behavioral (shortcut-seeking is rational; the chess-academy finding) and neurological (cognitive debt) — that explain *why* the unguarded design produced it. The bridge line is already written in the TikTOC ("Row one of the table — the −17% — has a mechanism. Two of them, in fact"). Chapter 1 should deliberately leave the mechanism question open and visible.

---

## D. Current state of the field

**Settled:**
- The two-layer pattern itself — descriptive, corroborated across practice studies and learning-outcome studies (synthesis "Central Pattern").
- Performance-during-acquisition ≠ learning (Soderstrom & Bjork 2015 and decades behind it) — settled cognitive science, pre-dating AI.
- Layer 1 adoption is mainstream among L&D/ID practitioners (multiple independent 2025–2026 surveys converge: ~83–87%).
- Within its single study, the Bastani result is methodologically strong: randomized, ~1,000 students, preregistered field experiment, published PNAS, only trivially corrected.

**Contested or emerging:**
- Generalization of the three-condition result beyond high school mathematics in one Turkish school — one strong data point, not a law; cross-domain/age replication is open research question #1 in the synthesis.
- Whether Layer 1 workflow compression produces deskilling (warning signal, not causal finding — Chapter 5 territory; don't overclaim in Chapter 1).
- The evidence base overall: ~20 high-quality causal studies out of 800+ papers (Stanford SCALE; independently corroborated by Han et al. 2025 and a 2026 meta-review of reviews). Practice is years ahead of evidence — the book says so "on page one," i.e., in this chapter.
- No longitudinal evidence anywhere (the durability gap) — what four years of AI-mediated learning does to a learner is unknown.

**Key references:**
1. Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö., & Mariman, R. (2025). Generative AI without guardrails can harm learning: Evidence from high school mathematics. *PNAS* 122(26), e2422633122 (+ Aug 2025 affiliation correction, 10.1073/pnas.2518204122).
2. Soderstrom, N. C., & Bjork, R. A. (2015). Learning versus performance: An integrative review. *Perspectives on Psychological Science* 10(2), 176–199.
3. Hirsh-Pasek, K., et al. (2015). Putting education in "educational" apps. *Psychological Science in the Public Interest* 16(1), 3–34; with the EVER routine, npj *Science of Learning* (2023).
4. Luo et al. (2025) & Yang & Stefaniak (2025), *Educational Technology Research and Development* — instructional designers' actual GenAI practice.
5. Stanford SCALE evidence-state finding (~20 high-quality causal studies in 800+ papers), corroborated by Han et al. 2025 systematic review — full treatment in Chapter 4.

**Recent developments (last 3 years):** 2023 — EVER routine published; GPT-4-era tutoring products launch (Khanmigo, Duolingo Max). 2024 — Bastani working paper circulates (SSRN); Tutor CoPilot RCT (first human-AI live-tutoring RCT); LAUSD/AllHere failure. 2025 — Bastani published in PNAS (June) + correction (Aug); LearnLM/Eedi exploratory RCT (Nov); ID adoption surveys cross 80%+; Kosmyna "cognitive debt" preprint becomes a public flashpoint. Early 2026 — Bastani chess-academy follow-up enters public discussion (Wharton coverage, March 2026); meta-reviews consolidate the "thin causal evidence" consensus. The arc to teach: 2023–2026 moved the field from "no causal evidence" to "a small, sharp causal core" — which is what makes a design discipline newly possible.

---

## E. Teaching considerations

**Where students get stuck:**
- Reading the table: many students initially read +48% and −17% as contradictory data rather than as two different measurements of two different constructs. Slow down on endpoint types before the reveal.
- The "it was the prompt?!" deflation: when students learn the difference was a system prompt, some downgrade the finding ("so just write a better prompt"). Counter immediately: the prompt encoded *teacher-built pedagogical content* (per-problem solutions and misconception feedback) plus an interaction policy (hints, not answers) — i.e., design labor, not a magic string. Chapter 6 reads the full spec.
- Layer assignment of hybrid features (AI-generated feedback, auto-built quizzes): students want features to live in one layer. Teach the feature-by-feature, "whose cognition?" test instead.
- Working professionals may experience the chapter as an attack on their existing product or workflow. The thesis relocates blame from people to designs — say so explicitly (Risk 10: the book is neither pro- nor anti-AI; it relocates the question to design).

**Analogies and framings that work:**
- **Power tools vs. training wheels installed backwards:** Layer 1 AI is a power tool for the builder; Layer 2 AI is part of the gym equipment the learner trains on — and a gym machine that lifts the weight for you produces great "session stats" and no muscle. (Anticipates but does not replace the scaffold/crutch frame.)
- **The pharmacology framing:** same molecule, different delivery mechanisms, opposite clinical outcomes — dosage and delivery are design. Makes "same model, opposite outcomes" intuitive and sets up "guardrails as formulation."
- **Two columns, two questions:** assisted = "what can the learner+AI do together today?"; unassisted = "what is left when the AI is gone?" The Withdrawal Test as a one-line mantra from Week 1.
- **"The demo measures the wrong column"** — durable, quotable, and operational for procurement-minded professionals.

**Exercises that build the target skill:**
1. *(Understand — Bloom: Understand)* Explain-the-table: write a ≤200-word explanation of the three-condition result for a non-technical stakeholder, correctly using "assisted" and "unassisted," and stating what did and did not differ between conditions. (Feeds Evidence Brief #1.)
2. *(Analyze)* Layer audit: pick one AI learning product you know; enumerate its AI features; assign each to Layer 1, Layer 2, or both, with the "whose cognitive work?" justification; mark which features could in principle produce a Bastani-style unassisted deficit. (Learning outcome 3; primes Week 2's reliance-risk mapping.)
3. *(Analyze)* Dashboard rewrite: given the Track A tutor's engagement-metrics dashboard, identify which metrics are pillar-aligned learning evidence vs. engagement evidence, and add the missing unassisted endpoint. (Four pillars + endpoint types.)
4. *(Evaluate — stretch)* The procurement memo: 300 words to a decision-maker on why the vendor's "+40% improvement" claim cannot distinguish scaffold from crutch, and the single cheapest measurement that would. (Previews Week 4 and the midterm diagnostic.)

---

## F. Library files relevant to this chapter

- **_lib_The_Digital_Delusion_-_Jared_Cooney_Horvath.md** — EdTech efficacy critique with the "0.40 hinge point" effect-size frame; useful for the chapter's evidence-skepticism register and as a pre-AI precedent for "engagement metrics mislead."
- **_lib_The Digital Delusion Counter.md** — Bear Brown's rebuttal essay; gives the chapter its balanced register (skepticism without technophobia) and supports the Risk 10 positioning (neither pro- nor anti-AI).
- **_lib_EdTech.md** — EdTech landscape research report; background for the adoption-state section and the procurement/vendor ecosystem the LAUSD failure case sits in.
- **_lib_Technopoly.md** — Postman's tech-culture critique; one well-chosen frame (technologies redistribute cognitive work and authority) supports the two-layer framing's deeper claim without turning the chapter into media ecology.
- **_lib_AI_A_Guide_for_Thinking_Humans.md** — Mitchell's AI capability honesty; grounds the "same model" point (what GPT-4 is and isn't) so students don't attribute the table to model mysticism.
- **ai_lxd_definitive_synthesis.md** — primary grounding source: Central Pattern, §1 (design practice), §2 (the three RCTs), Principle 1 and Principle 3.
- **experience_design_edtech_merged_synthesis.md** — the companion volume's synthesis; source for the Week 1 "toolkit map" of assumed LXD capabilities.

---

## G. Gaps and flags

- **FLAG (single-context result):** The three-condition table comes from one school, one country, one subject, one term. The book's thesis treats it as decisive about *design-dependence*, which is fair (internal validity is strong), but Chapter 1 must not imply the effect sizes generalize numerically. Cross-reference Chapter 4's evidence-state discipline.
- **FLAG (correction framing):** State the August 2025 PNAS correction explicitly and accurately (affiliation-only, findings unchanged). Omitting it invites "they hid the correction"; overweighting it invites "the study was retracted" myths. Both circulate.
- **FLAG (EVER authorship):** EVER routine (npj Sci. Learning 2023) is verified and pillar-based, but confirm the exact author list and Hirsh-Pasek's role on that specific paper before citing as "Hirsh-Pasek's EVER framework." The 2015 PSPI four-pillars paper is the safe Hirsh-Pasek anchor.
- **FLAG (vendor-sourced statistics):** The 87% adoption figure is from a Synthesia-commissioned survey; the 83%/144-ID survey is reported via AACE Review. Use as triangulated practice indicators, never as standalone claims; model the conflict-of-interest disclosure the book teaches in Week 4.
- **FLAG (LAUSD case):** Verify Ed/AllHere details (contract value, timeline, current status) against The 74 / LA Times reporting before drafting; figures vary across accounts. If verification is shaky at drafting time, the case still works labeled "reported failure case" with the layer-analysis lesson intact.
- **GAP:** No verified study yet directly tests the *two-layer confusion* itself (e.g., whether Layer 1 fluency predicts Layer 2 design errors). The layer taxonomy is the book's synthesis framing — sturdy as pedagogy, but label it as the book's organizing lens, not a cited empirical construct.
- **GAP:** The chess-academy follow-up and Kosmyna mechanisms are deliberately *not* covered here (Chapter 2's material); the Chapter 1 draft must resist front-loading them beyond the bridge sentence, or Week 2's prediction exercise ("most predict wrong") is spoiled.
