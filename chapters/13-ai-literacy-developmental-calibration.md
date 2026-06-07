# Chapter 13 — AI Literacy and Developmental Calibration: Designing the Learner's Side
*On the hidden curriculum every interface teaches, the difference between a progression logic and a made-up number, and why "appropriate reliance" is not the same thing as "correct reliance."*

A Grade 5 classroom in Hong Kong. No lecture titled "What Is Artificial Intelligence." No vocabulary quiz on *algorithm* and *training data*. Instead, a design brief: identify a real problem in your community and build an AI-powered solution to it, through a structured design cycle. Along the way, unavoidably, the students had to figure out what the AI could do, what it couldn't, when it was wrong, and whether their users would trust it. They were not studying AI. They were *responsible for* an AI, at age ten — and responsibility turned out to be a curriculum.

The SAILD study measured AI literacy across four dimensions: knowledge, skills, ethics, and attitudes. Pre/post gains were statistically significant for knowledge, ethics, and attitudes. The skills dimension was evidenced qualitatively — through documentation of students' problem-solving processes — not by a significant quantitative gain (SAILD, *Journal of Research on Technology in Education*, 2025, DOI 10.1080/15391523.2025.2449942 [verify author list]). Hold both halves of that result. The first half is the chapter's thesis demonstrated: AI literacy emerged from designed activity, not from instruction about AI. The second half is the book's discipline applied to its own favorite finding: one study, one grade level, one cultural context, pre/post with no control group. An existence proof, not an RCT — and an existence proof is all this chapter needs, because the claim it supports is not "this method works everywhere." The claim is: **the interface and the activity are always teaching the learner something about AI. The only question is whether anyone designed the lesson.**

---

Here is the reframe that makes the learner-side layer a design task rather than a curriculum-writing task: **AI literacy is not a subject your product can choose to add. It is a property your product already has.**

Every AI touchpoint teaches. A tutoring interface that delivers confident answers with no provenance teaches that AI output is final. A hint ladder that never explains why it asked what it asked teaches that the system's reasoning is none of the learner's business. A chatbot whose limits are never visible teaches that it has none. These are lessons in AI literacy — bad ones — delivered with perfect attendance, because the learner spends orders of magnitude more time inside the interface than inside any orientation module. The design question is never "should we teach AI literacy?" It is "what is our interface already teaching, and is that what we want taught?"

The practical consequence: the learner-side layer is the mirror image of the guardrail specification. The system side — the previous seven weeks of this course — says what the AI may do. The learner side says what the learner is enabled to understand, question, and control. Four recurring interaction patterns carry that layer:

**Provenance display** — which parts of this content came from a model, and what human review touched it on the way, visible at point of contact.

**Error-spotting interactions** — the AI's output is occasionally wrong, by selection or by design, and the learner is rewarded for catching it.

**Prompt examination** — the learner can see, and sometimes edit, what was actually asked of the model on their behalf.

**Restriction rationale** — "what I can't do for you, and why," written at learner level, linking each restriction to its reason.

The counter-case is so common it deserves a name: the **orientation-module fallacy**. A university deploys an AI writing assistant behind a mandatory twenty-minute "Responsible AI Use" module — definitions, policy, a quiz. Six weeks later, usage logs show the behavior Wang et al. (2024) documented among STEM students: heavy GenAI use, with over half pasting problems in wholesale and accepting the solutions (small sample, n=40 — directional [verify]). The module taught *about* AI for twenty minutes; the interface taught *how to rely on* AI for forty hours. The interface won. It always wins. Post-hoc fixes — sterner policy, a second module — fail for the same reason aspirational guardrails failed in Chapter 2: they are structural problems dressed as content problems. The fix is to move literacy into the interaction loop, where the hours are.

---

The definitional literature is genuinely unsettled. A scoping review finds AI literacy a fast-growing research topic that is nearly absent from teacher education, with definitions that sprawl across cognitive, emotional, and behavioral constructs (Sperling et al. 2024, *Computers and Education Open*). The field does not agree on what AI literacy *is*. It increasingly agrees on what it is *made of*.

Long and Magerko (2020) — the most-cited definition — frame it as competencies enabling individuals to critically evaluate AI, communicate and collaborate with it, and use it as a tool. Seventeen competencies under five questions: What is AI? What can it do? How does it work? How should it be used? How do people perceive it? Crucially, it is an HCI paper — it ships design considerations for embedding the competencies into learner-centered artifacts, which makes it this chapter's natural ancestor. Vintage warning: it predates conversational LLMs, and some competencies (recognizing AI, for instance) have shifted meaning since.

UNESCO's (2024) AI Competency Framework for Students specifies twelve competencies across four dimensions — human-centred mindset, ethics of AI, AI techniques and applications, AI system design — at three progression levels, with a companion teacher framework. The OECD–European Commission (2025) AILit draft adds a fourth engagement domain — designing AI — and structures competencies across knowledge, skills, and attitudes (draft, final expected 2026 [verify status at press]).

Across all of them the same four-part skeleton: knowledge, use/skill, critical/ethical, creation/design. Teach the skeleton as the stable core and the named frameworks as the replaceable layer. And use them as **audit grids**, not curricula: map your interface's implicit lessons against the twelve UNESCO competencies and see which ones your product is currently teaching backwards. The gap analysis almost always shows the same hole: **critique is the unserved dimension** — and critique is exactly the dimension the crutch effect runs through. A learner who prompts brilliantly but cannot judge output quality is the over-reliance profile, not the literate one.

One regulatory beat: since February 2025, Article 4 of the EU AI Act makes a sufficient level of AI literacy of staff and operators a legal obligation for providers and deployers of AI systems — the first time AI literacy is a legal duty rather than an educational aspiration [verify exact wording against the Act]. If your integration deploys into a European institution, the adult-side literacy design is no longer optional even on paper.

---

Why does literacy-through-design work, where instruction about AI often doesn't? Three mechanisms, each continuous with earlier chapters.

Responsibility forces calibration: a student building an AI-powered solution for real users must discover where the AI fails, because their design fails with it. This is Chapter 2's productive struggle, aimed at the AI itself rather than at the content. Design externalizes the system: a learner who must decide what their AI may and may not do has to form a model of how it works, because the artifact forces the mental model. And the four literacy dimensions travel together in activity but not in lecture: a unit can teach knowledge; only use-with-stakes exercises judgment, and only judgment-with-consequences builds attitudes.

What SAILD does *not* demonstrate, stated plainly: it is a single study, one cultural context, one grade level, pre/post design, no comparison arm. There is no comparative study anywhere of literacy-through-design versus direct instruction for AI literacy. The skills dimension showed qualitative evidence only. Treat SAILD the way Chapter 2 taught you to treat promising single-source findings: a mechanism made plausible, flagged, awaiting replication.

The translation upward for designers of adult experiences: replace orientation with **micro-design tasks**. Instead of a "how to use the tutor" screen, a Week 1 task: *write the restrictions you would impose on your own AI tutor, then compare against the actual guardrail spec*. The act of designing the restriction teaches the crutch evidence, the guardrail logic, and the tutor's real boundaries in one move — and it takes four minutes, not twenty.

<!-- → [TABLE: Implicit-curriculum audit template — columns: Interface touchpoint, What it currently teaches, Literacy classification (positive/negative), UNESCO competency it touches, Pattern that repairs a negative lesson — rows populated with five examples from a generic AI tutor: confident answer delivery, never-wrong experience, invisible guardrails, hint-on-demand, no provenance — designed to model the audit structure for the studio assignment] -->

---

AI exposure should be calibrated to developmental stage. The five-tier framework expresses the calibration logic:

| Tier | Ages | Primary objective | Character of use |
|---|---|---|---|
| 0 | 3–5 | Cognitive protection | No direct student use; educators use AI to prepare offline activities |
| 1 | 6–7 | Teacher-led modeling | Brief, almost fully supervised; whole-class error-spotting |
| 2 | 8–10 | Scaffolded exploration | Bounded independent use; creative tasks with mandatory fact-checking |
| 3 | 11–13 | Collaborative inquiry + ethics | Substantially independent; dataset analysis, algorithmic-bias debate |
| 4 | 14–18 | Autonomous critical agency | Mostly independent; multi-modal projects, prompt-architecture analysis |

Now the epistemic frame, which matters as much as the table: **this framework is inference, not evidence** [contested — see pantry flag]. No study has tested these tiers. The minute-counts and supervision percentages that circulate with it — ≤15, ≤30, ≤60, ≤120 minutes per day; 95/90/80/70 percent supervision — appear in planning documents and have **no evidence base whatsoever**. That is why this table omits them. False precision of exactly the kind Chapter 4 taught you to deconstruct in vendor copy does not improve by appearing in a textbook. The **progression logic** is primary: protection → modeling → scaffolded exploration → collaborative inquiry → autonomous critical agency. If a stakeholder document needs numbers, label them illustrative placeholders with a review trigger.

Second layer: the Piagetian substrate is itself contested. The standard critiques — development is more continuous and domain-specific than stage theory implies, cross-cultural and individual variation is large, boundaries are not sharp — mean the tiers are design heuristics, not measurement instruments. Papert's constructionist counterpoint cuts deepest: well-designed technology can move the concrete/formal boundary, undermining any fixed age-to-exposure mapping. Teaching this critique is not a digression; it is the book's evidence discipline applied to its own framework.

Third layer: independent practitioner guidance converges on the same *shape*, more conservatively at the young end. Common Sense Media's AI risk assessments (2024–2026) conclude that social AI companions pose unacceptable risks for under-18s and are inappropriate for children five and under, with extreme caution to age 12, while roughly three in four US teens have used AI companions anyway [verify figures against the published assessments]. The convergence raises confidence in the progression logic while leaving every specific parameter unevidenced. Note the distinction the convergence forces: Common Sense's hard line targets **relational, engagement-optimized companion AI** — the vulnerability vectors at maximum strength — not **task-bounded learning AI**, where calibrated use is defensible. The rationale for the youngest tiers draws on what direct, embodied experience builds that mediated experience does not — which is why "protection" at Tier 0 is a positive design objective, not an absence of design.

The misconception to retire: **developmental calibration is not age gating.** The tiers calibrate interaction design — supervision ratio, criticality demands, autonomy — not just access. A 9-year-old with mandatory fact-checking tasks is getting more developmental value than a 16-year-old with unrestricted companion access. The design, not the birthday, carries the protection. And the logic generalizes past childhood: when age calibration is moot, calibrate to expertise stage. A novice professional needs reasoning-protection for the same structural reason a Tier 2 child needs fact-checking tasks. Adult populations do not exempt you from this section; they relocate it.

---

The target learner state for everything above is **appropriate reliance**: accepting AI assistance when the AI is right *and the task warrants it*; declining or overriding when it is wrong *or when unassisted practice is the point*.

The first half of that definition comes from a mature human-factors literature on trust calibration: appropriate reliance as discriminating correct from incorrect AI advice and acting on the discrimination, bracketed by over-reliance (accepting wrong advice — amplified in low-expertise users, exactly the learner population) and algorithm aversion (rejecting right advice). The design levers are documented: friction before acceptance, explanations that invite verification rather than persuade, uncertainty display, onboarding that names over-reliance as a known failure mode (Buçinca et al. 2021; Microsoft Aether overreliance review, 2022).

The second half — *and the task warrants it* — is this book's own extension, and you should know it is ours: **in learning contexts, reliance must be calibrated to the learning objective, not just to AI accuracy** [book's framing — the decision-support literature indexes reliance to correctness; the objective-indexed extension is this book's synthesis, not an established research construct]. A learner who accepts a correct AI solution to a problem they were supposed to struggle through has relied inappropriately on a perfectly reliable system. Only the designer can encode that calibration, because only the designer knows which struggle is the point. Reasoning gates, fading schedules, and AI-free assessment windows are reliance-calibration mechanisms — and the learner-side layer's job is to make their rationale legible: "this is a no-AI zone because this skill is the point" is a literacy intervention.

Two evidence threads sharpen the design. Calibration comes from designed verification experiences — seeing the AI be wrong, being rewarded for catching it — not from exposure hours alone; fluency increases use and comfort can *decrease* scrutiny. And Klarin et al. (2024) find adolescents with executive-function challenges perceive AI as more useful and over-rely more — so appropriate-reliance design is an equity intervention, not a power-user feature.

<!-- → [TABLE: Learner-side pattern specifications — columns: Pattern, Intent, Trigger, Frequency, Fading rule, Failure mode — rows: provenance display, planted-error audit, prompt examination, restriction rationale, no-AI-zone map, reliance dashboard — designed to serve as the studio assignment template with one full row completed as an example] -->

---

Translate the framework into the DataWise 101 case.

The implicit-curriculum audit reveals three bad lessons taught fluently: the hint ladder never says why it asks what it asks (lesson: the system's reasoning is not your business); the tutor is never wrong in the learner's experience, because learners never check it (lesson: AI output is final); the guardrails are invisible until bumped into, then read as refusal (lesson: the system is withholding, not protecting).

First attempt: a Week 1 "AI literacy orientation" with a video and quiz. Killed by this chapter's own argument — twenty minutes of module against a semester of interface.

Second attempt: gamified literacy badges — "Prompt Master," "Error Hunter." Killed by the calibration evidence: badges reward *volume* of engagement, and fluency without verification worsens the over-reliance profile.

Third attempt survived: literacy designed into the loop. Every hint opens with a one-line rationale — "I'm asking about the null hypothesis because your setup skipped it." A weekly check-the-tutor item: verify one AI worked example against the textbook, credit for catching the error, scheduled so every learner sees the tutor wrong by Week 2, before trust hardens. A "what I can't do for you and why" panel translating each guardrail into student language with the crutch evidence cited. A learner-visible reliance dashboard plotting own hint requests against the fading schedule. A no-AI-zone map for the course's assessment windows, each with its one-line objective.

Five interaction patterns, each with trigger and frequency, totaling under two added minutes per week — entered into the specification as the learner-side layer.

The lesson: the learner-side layer is not new content. It is the guardrail spec made legible, plus scheduled experiences of the AI's fallibility.

The limit: this design teaches calibration *inside* DataWise. Whether it transfers — whether a learner who checks this tutor also checks ChatGPT at home — is unknown, and no study yet measures it. The instrumentation built here (verification logs, dashboard trajectories) is what the next chapter reads.

---

## Exercises

**Warm-up**

1. *(Recall — implicit curriculum)* Your product has no AI-literacy features. What is it teaching learners about AI? List three specific lessons the interface delivers through its default behavior — not through any content — and classify each as literacy-positive or literacy-negative.

2. *(Recall — epistemic status)* Which two pieces of the five-tier framework have different epistemic status? State the distinction in one sentence each, and explain why the table in this chapter omits supervision-percentage numbers that circulate in other versions of the same framework.

**Application**

3. *(Apply — implicit-curriculum audit)* Take three screenshots of a real AI learning product you did not design. List five things the interface teaches the learner about AI; classify each literacy-positive or literacy-negative; map each to the UNESCO competency or Long–Magerko question it touches. One paragraph: the single interaction change with the largest literacy effect.

4. *(Apply — pattern conversion, no module allowed)* Take one UNESCO framework competency ("evaluate AI output critically"). Design three recurring interaction patterns that build it inside an existing learning journey — Pattern Card format (trigger, structure, frequency, fading rule, failure mode). The word "module" in any pattern disqualifies the submission.

5. *(Apply — calibration)* For a target population of your choosing — 12-year-olds in an under-resourced district, or first-year nursing students — place them in the five-tier framework and design two specific calibration decisions (not access decisions). Then write the one-paragraph dissent: what the inference-based status and the Piagetian critique do to your confidence, and what observation would revise the placement.

**Synthesis**

6. *(Synthesize — learner-side layer)* Produce the learner-side design layer for a learning product you are designing or know well: (a) the implicit-curriculum audit — five lessons currently taught, classified; (b) three to five embedded literacy patterns in Pattern Card format; (c) population calibration with inference-status label and review trigger named; (d) the Withdrawal Test answer: what the learner knows about working without the AI, which interactions rehearse unassisted judgment, and what the learner could tell a peer about when *not* to use the system; (e) the Reliance Disclosure: one place the design structurally preserves productive struggle, one place reliance risk remains open that no interface pattern can close.

7. *(Synthesize — objective-indexed reliance)* Construct three scenarios in which a learner accepts a *correct* AI answer but is relying inappropriately — the task warranted unassisted practice, and the correct answer did the most damage. For each: name the learning objective being bypassed, the design feature that would have closed the bypass, and whether the learner would have experienced the bypass as a problem.

**Challenge**

8. *(Challenge — transfer)* The chapter states that no study yet measures whether in-product AI literacy calibration transfers to out-of-product AI use. Design the study that would measure it: population, measurement instruments, comparison conditions, timeline, and the specific behavioral indicator (not a survey score) that would tell you calibration transferred. Then state the one thing about the study design that would make it hard to fund, and what a lower-cost alternative would sacrifice.

---

## LLM Exercise

*This prompt gates the model from proposing patterns until you have completed the audit yourself — practicing the reasoning-before-help design it teaches.*

Copy the following into an LLM.

---

You are an AI-literacy design auditor working with a learning experience designer. We will audit what my AI-mediated learning product implicitly teaches learners about AI, then design embedded literacy patterns. Follow this protocol strictly:

**Phase 1 — My audit first.** Ask me to describe (a) my product and population, (b) the learner's first AI interaction, (c) whether the learner ever sees the AI being wrong, (d) what happens when the AI declines to do something. Then require ME to list five things I believe my interface currently teaches about AI before you add anything. Do not answer for me.

**Phase 2 — Your critique.** Classify each of my five lessons as literacy-positive or literacy-negative, challenge any I have flattered, and add at most three lessons I missed — citing the interface detail each rides on.

**Phase 3 — Patterns, gated.** Before proposing any pattern, ask which learning objectives require unassisted practice (my no-AI zones). Then propose three embedded literacy patterns in Pattern Card format (trigger, structure, frequency, fading rule, failure mode), each tied to one negative lesson from Phase 2. Reject any pattern from me that is an orientation module in disguise, and say why.

**Phase 4 — Calibration check.** Ask my population's developmental tier or expertise stage; flag any miscalibrated pattern; end by stating, one sentence each: which pattern rehearses unassisted judgment, and what reliance risk remains open that no interface pattern can close.

---

*Deliverable: your Phase 1 audit list, the model's Phase 2 critique with your accept/reject notes, and one Phase 3 pattern you adopted — with one sentence on what you overruled and why.*
