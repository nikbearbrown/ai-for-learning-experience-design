# Chapter 13 — AI Literacy and Developmental Calibration: Designing the Learner's Side

**Week 13 · Act Three — Apply · Design Lab #8 (25/30 pts)**

---

## Learning Objectives

By the end of this chapter, you will be able to:

1. **Explain** the reframe at the center of this chapter: every AI touchpoint makes implicit choices about transparency, controllability, and trust calibration — and making those choices explicit is LXD work, not an ethics add-on. *(Bloom: Understand — Tracks A and B)*
2. **Embed** AI-literacy interactions into a learning journey — error-spotting, output critique, prompt examination, provenance display — as recurring interaction patterns with triggers and frequencies, not as an orientation module. *(Bloom: Apply — Tracks A and B)*
3. **Apply** the five-tier developmental framework (protection → modeling → scaffolded exploration → collaborative inquiry → autonomous critical agency) to a target population, with its inference-based status stated and a revision trigger named. *(Bloom: Analyze — Tracks A and B)*
4. **Design** the learner-side layer for an AI integration: what the experience itself teaches the learner about the AI, calibrated to the population. *(Bloom: Create — Track A: the instructor's statistics tutor; Track B: your own project)*

---

## Opening Case: The Fifth Graders Who Learned What AI Is by Building With It

*Sourced: the SAILD study — "Students as AI Literate Designers," Journal of Research on Technology in Education (2025), DOI 10.1080/15391523.2025.2449942 [verify — confirm author list from the DOI before press]. Evidence caveats below are part of the case, not a footnote to it.*

A Grade 5 classroom in Hong Kong. No lecture titled "What Is Artificial Intelligence." No vocabulary quiz on *algorithm* and *training data*. Instead, a design brief: identify a real problem in your community and build an AI-powered solution to it, through a structured design cycle. Along the way, unavoidably, the students had to figure out what the AI could do, what it couldn't, when it was wrong, and whether their users would trust it. They were not studying AI. They were *responsible for* an AI, at age ten — and responsibility turned out to be a curriculum.

The SAILD framework (grounded in design-based learning and Gagné's instructional theory) measured AI literacy across four dimensions: knowledge, skills, ethics, and attitudes. The mixed-methods results: statistically significant pre/post gains in **knowledge, ethics, and attitudes**. The **skills** dimension was evidenced *qualitatively* — through documentation of students' problem-solving processes — not by a significant quantitative gain [contested — see pantry flag: the book's planning documents say "effective across all four dimensions," which is defensible only if the qualitative evidence is counted; this Evidence Box states the split].

Hold both halves of this case. The first half is the chapter's thesis demonstrated: AI literacy emerged from designed activity, at exactly the age where direct instruction about abstract systems is least effective. The second half is the book's discipline applied to its own favorite finding: one study, one grade level, one cultural context, pre/post with no control group. A promising existence proof, not an RCT — and an existence proof is all this chapter needs, because the claim it supports is not "SAILD works everywhere." The claim is: **the interface and the activity are always teaching the learner something about AI. The only question is whether anyone designed the lesson.** That question is yours for the rest of this chapter.

---

## Prerequisites

This chapter assumes you can:

- **Specify a transparency layer** (Chapter 11): disclosure as relational metadata, the learner-visible AI role, the single-click human escape hatch. The learner-side layer extends that spec.
- **State your agentic boundaries** (Chapter 12): what your system does unprompted, and how the learner is notified. Notification a learner cannot understand is disclosure theater — this chapter supplies the comprehension side.
- **Explain the crutch mechanism and why self-regulation fails** (Chapter 2): appropriate reliance, this chapter's target state, is the positive restatement of that closed escape hatch.

---

## Core Content

### 13.1 The Interface Is the Curriculum

Here is the reframe that makes Design Lab #8 a design task rather than a curriculum-writing task: **AI literacy is not a subject your product can choose to add. It is a property your product already has.**

Every AI touchpoint teaches. A tutoring interface that delivers confident answers with no provenance teaches that AI output is final. A hint ladder that never explains why it asked what it asked teaches that the system's reasoning is none of the learner's business. A chatbot whose limits are never visible teaches that it has none. These are lessons in AI literacy — bad ones — delivered with perfect attendance, because the learner spends orders of magnitude more time inside the interface than inside any orientation module. The design question is never "should we teach AI literacy?" It is "what is our interface already teaching, and is that what we want taught?"

This is the hidden curriculum of education research, applied to AI products — and an old observation about technology generally. Postman (1992) argued that technological change is *ecological*, not additive: a new technology reconstitutes the environment, quietly redefining what counts as knowledge, memory, and competence. An AI tutor embedded in a statistics course is not the course plus a tutor; it is a new course with a new implicit theory of what knowing statistics means — and the designer either authors that theory or inherits the default.

The practical consequence: the learner-side layer is the mirror image of your guardrail specification. The system side (Weeks 5–12) says what the AI may do. The learner side says what the learner is enabled to *understand, question, and control*. The pattern vocabulary:

- **Provenance display** — which parts of this content came from a model, and what touched it on the way (the Chapter 9 boundary spec, made learner-visible).
- **Error-spotting interactions** — the AI's output is occasionally wrong (by selection or by design), and the learner is rewarded for catching it.
- **Prompt examination** — the learner can see, and sometimes edit, what was actually asked of the model on their behalf.
- **Restriction rationale** — "what I can't do for you, and why," written at learner level, linking each restriction to its reason.

The counter-case is so common it deserves a name: **the orientation-module fallacy** *(illustrative case)*. A university deploys an AI writing assistant behind a mandatory twenty-minute "Responsible AI Use" module — definitions, policy, a quiz. Six weeks later the usage logs show exactly the behavior Wang et al. (2024) documented among STEM students: heavy GenAI use, with over half pasting problems in wholesale and taking the solutions (small sample, n=40 — directional [verify]). The module taught *about* AI for twenty minutes; the interface taught *how to rely on* AI for forty hours. The interface won. It always wins. Post-hoc fixes — sterner policy, a second module — fail for the same reason "let students self-regulate" failed in Chapter 2: aspirational responses to a structural problem. The fix is to move literacy into the interaction loop, where the hours are.

### 13.2 The Framework Landscape: Contested Definitions, Converging Structure

The definitional literature is genuinely unsettled. Sperling et al. (2024), in a scoping review in *Computers and Education Open*, find AI literacy a fast-growing research topic that is nearly absent from teacher education, with definitions that vary by audience and sprawl across cognitive, emotional, and behavioral constructs. (The book's planning documents date this review 2025; the published review is 2024 — the citation here is correct, and the discrepancy is logged.) The field does not agree on what AI literacy *is*. It increasingly agrees on what it is *made of*:

- **Long & Magerko (2020)** — the most-cited definition: competencies enabling individuals to critically evaluate AI, communicate and collaborate with it, and use it as a tool. Seventeen competencies under five questions (What is AI? What can it do? How does it work? How should it be used? How do people perceive it?). Crucially, it is an HCI paper: it ships *design considerations* for embedding the competencies into learner-centered artifacts — this chapter's natural ancestor, with a vintage warning: it predates conversational LLMs, and some competencies (recognizing AI, for instance) have shifted meaning since.
- **UNESCO (2024)** — the *AI Competency Framework for Students*: twelve competencies across four dimensions (human-centred mindset, ethics of AI, AI techniques and applications, AI system design) at three progression levels; its companion *AI Competency Framework for Teachers* is the adult-side complement this chapter returns to below.
- **OECD–European Commission (2025)** — the AILit Framework (*Empowering Learners for the Age of AI*, review draft, May 2025; final expected 2026 [verify status at press]): knowledge, skills, and attitudes across four engagement domains — engaging with, creating with, managing, and designing AI.

Across all of them, the same four-part skeleton: a **knowledge** component, a **use/skill** component, a **critical/ethical** component, and — increasingly — a **creation/design** component. Teach the skeleton as the stable core and the named frameworks as the replaceable layer; that is the same architecture this book uses for its own Pattern Cards and Evidence Boxes.

Two design notes before you use any of these. First, the frameworks specify *what*, never the interaction layer — the same principles-to-patterns gap this book named for governance frameworks generally. UNESCO's "evaluate AI output critically" is a competency; your job is the recurring interaction that builds it. Use the frameworks as audit grids, not curricula: map your interface's implicit lessons against the twelve UNESCO competencies and see which ones your product is currently teaching backwards. Second, the gap analysis almost always shows the same hole: **critique is the unserved dimension** — and critique is exactly the dimension the crutch effect runs through. A learner who prompts brilliantly but cannot judge output quality is the over-reliance profile, not the literate one.

One regulatory beat: since February 2025, Article 4 of the EU AI Act makes "a sufficient level of AI literacy" of staff and operators a legal obligation for providers and deployers of AI systems — the first time AI literacy is a legal duty rather than an educational aspiration [verify exact wording against the Act]. If your integration deploys into a European institution, the adult-side literacy design is no longer optional even on paper.

### 13.3 Literacy Through Design: What SAILD Demonstrates and What It Doesn't

The opening case earns one full concept section because it carries the chapter's causal claim: literacy can emerge from designed activity rather than direct instruction.

What makes SAILD's design-based approach plausible rather than lucky? Three mechanisms, each continuous with earlier chapters. First, **responsibility forces calibration**: a student building an AI-powered solution for real users must discover where the AI fails, because their design fails with it — Chapter 2's productive struggle, aimed at the AI itself. Second, **design externalizes the system**: a learner who must decide what their AI may and may not do has to form a model of how it works; the artifact forces the mental model. Third, **the four dimensions travel together in activity but not in lecture**: a unit can teach knowledge; only use-with-stakes exercises judgment, and only judgment-with-consequences builds attitudes. This is, not coincidentally, the architecture of the course you are sitting in.

What SAILD does *not* demonstrate, stated plainly because the Evidence Box will hold you to the same standard: it is a single study, in one cultural context, at one grade level, with a pre/post design and no comparison arm. There is **no comparative study anywhere** of literacy-through-design versus direct instruction for AI literacy. The skills dimension showed qualitative evidence only. Treat SAILD the way Chapter 2 taught you to treat the cognitive-debt EEG study: a mechanism made plausible, flagged single-source, awaiting replication.

The translation upward, for designers of adult experiences: replace orientation with **micro-design tasks**. Instead of a "how to use the tutor" screen, a Week 1 task: *write the restrictions you would impose on your own AI tutor, then compare against the actual guardrail spec*. The act of designing the restriction teaches the crutch evidence, the guardrail logic, and the tutor's real boundaries in one move — and it takes four minutes, not twenty.

### 13.4 Developmental Calibration: Progression Logic, Illustrative Numbers

AI exposure should be calibrated to developmental stage. The book's five-tier framework expresses the calibration:

| Tier | Ages | Primary LXD objective | Character of use |
|---|---|---|---|
| 0 | 3–5 | Cognitive protection | No direct student use; educators use AI to prepare offline activities |
| 1 | 6–7 | Teacher-led modeling | Brief, almost fully supervised; whole-class error-spotting |
| 2 | 8–10 | Scaffolded exploration | Bounded independent use; creative tasks with mandatory fact-checking |
| 3 | 11–13 | Collaborative inquiry + ethics | Substantially independent; dataset analysis, algorithmic-bias debate |
| 4 | 14–18 | Autonomous critical agency | Mostly independent; multi-modal projects, prompt-architecture analysis |

Now the epistemic frame, which matters as much as the table. **This framework is inference, not evidence** [contested — see pantry flag]. No study has tested these tiers. The minute-counts and supervision percentages that circulate with it (≤15, ≤30, ≤60, ≤120 minutes per day; 95/90/80/70 percent supervision) appear in this book's own source synthesis, and they have **no evidence base whatsoever** — false precision of exactly the kind Chapter 4 taught you to deconstruct in vendor copy. That is why this table omits them, and why this chapter teaches the *progression logic* as primary: protection → modeling → scaffolded exploration → collaborative inquiry → autonomous critical agency. If a stakeholder document needs numbers, label them illustrative placeholders with a review trigger.

Second layer of caution: the Piagetian substrate is itself contested [contested]. The standard critiques — development is more continuous and domain-specific than stage theory implies; cross-cultural and individual variation is large; boundaries are not sharp — mean the tiers are design heuristics, not measurement instruments. Papert's constructionist counterpoint cuts deepest: well-designed technology can *move* the concrete/formal boundary, undermining any fixed age-to-exposure mapping. Teaching this critique is not a digression; it is the book's evidence discipline applied to its own framework.

Third layer: **independent practitioner guidance converges on the same shape, more conservatively at the young end.** Common Sense Media's AI risk assessments (2024–2026) conclude that social AI companions pose unacceptable risks for under-18s; that AI toy companions are inappropriate for children five and under, with extreme caution to age 12; and a 2025 national survey finds roughly three in four US teens have used AI companions anyway [verify figures against the published assessments]. Note what converges: the *shape* (protection at the bottom, supervised criticality in the middle, bounded autonomy at the top) matches the five-tier inference, raising confidence in the progression logic while leaving every specific parameter unevidenced. And note the distinction the convergence forces: Common Sense's hard line targets **relational, engagement-optimized companion AI** — the Chapter 11 vulnerability vectors at maximum strength — not **task-bounded learning AI**, where calibrated use is defensible. The rationale for the youngest tiers draws on a wider literature about what direct, embodied experience builds that mediated experience does not (Rosen 2024) — which is why "protection" at Tier 0 is a positive design objective, not an absence of design.

The misconception to retire: **developmental calibration is not age gating.** The tiers calibrate *interaction design* — supervision ratio, criticality demands, autonomy — not just access. A 9-year-old with mandatory fact-checking tasks is getting more developmental value than a 16-year-old with unrestricted companion access. The design, not the birthday, carries the protection. And the logic generalizes past childhood: when age calibration is moot, calibrate to **expertise stage**. A novice professional needs reasoning-protection for the same structural reason a Tier 2 child needs fact-checking tasks (recall the Chapter 5 deskilling signal). Adult populations do not exempt you from this section; they relocate it.

### 13.5 Designing Appropriate Reliance, Not Maximal Use

The target learner state for everything above is **appropriate reliance**: accepting AI assistance when the AI is right *and the task warrants it*; declining or overriding when it is wrong *or when unassisted practice is the point*.

The first half of that definition comes from a mature human-factors literature on trust calibration: appropriate reliance as discriminating correct from incorrect AI advice and acting on the discrimination, bracketed by over-reliance (accepting wrong advice — amplified in low-expertise users, exactly the learner population) and algorithm aversion (rejecting right advice). The design levers are documented: friction before acceptance, explanations that invite verification rather than persuade, uncertainty display, onboarding that names over-reliance as a known failure mode (Buçinca et al. 2021; Microsoft Aether overreliance review, 2022).

The second half — *and the task warrants it* — is this book's own extension, and you should know it is ours: **in learning contexts, reliance must be calibrated to the learning objective, not just to AI accuracy** [book's framing — the decision-support literature indexes reliance to correctness; the objective-indexed extension is this book's synthesis, not an established research construct]. A learner who accepts a correct AI solution to a problem they were supposed to struggle through has relied inappropriately on a perfectly reliable system. Only the designer can encode that calibration, because only the designer knows which struggle is the point. Reasoning gates, fading schedules, and AI-free assessment windows are reliance-calibration mechanisms — and the learner-side layer's job is to make their rationale *legible*: "this is a no-AI zone because this skill is the point" is a literacy intervention.

Two evidence threads sharpen the design. Calibration comes from designed verification experiences — seeing the AI be wrong, being rewarded for catching it — not from exposure hours; fluency increases use, and comfort can *decrease* scrutiny. And the equity stake recurs: Klarin et al. (2024) find adolescents with executive-function challenges perceive AI as more useful and over-rely more — so appropriate-reliance design is an equity intervention, not a power-user feature.

---

## Mid-Chapter Checkpoint (ungraded)

Answer without looking back:

1. Your product has no AI-literacy features. What is it teaching learners about AI? (If you answered "nothing," reread 13.1 — the interface always teaches; the only variable is whether the lesson was designed.)
2. Which two pieces of the five-tier framework have different epistemic status? (Progression logic: inference corroborated in shape by independent practitioner assessment. Minute-counts and supervision percentages: no evidence base at all. If you treated the table as one claim, reread 13.4.)
3. A learner accepts a *correct* AI answer. Can that be inappropriate reliance? (Yes — if the learning objective required unassisted practice. If you said no, reread 13.5; this is the chapter's load-bearing extension.)

---

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Design-based AI curriculum → significant pre/post gains in knowledge, ethics, attitudes; skills evidenced qualitatively only | SAILD, *JRTE* (2025), DOI 10.1080/15391523.2025.2449942 [verify author list] | Pre/post literacy measures (no control) | Single study, one context, one grade level; "all four dimensions" requires counting qualitative evidence [contested — see pantry flag] |
| AI literacy definitions vary by audience and construct | Sperling et al. (2024), *Computers and Education Open* | Scoping review | Verified; 2024, not 2025 as in earlier planning documents |
| 17 competencies / 5 questions; design considerations for embedding | Long & Magerko (2020), CHI | HCI framework | Verified; pre-LLM vintage |
| Student (12×4) and teacher (5×3) competency frameworks | UNESCO (2024) | Policy framework | Verified; competencies, not interaction design |
| Knowledge/skills/attitudes across 4 engagement domains | OECD–EC AILit review draft (May 2025) | Policy framework (draft) | Draft [verify final-version status at press] |
| Five-tier developmental calibration; minute-counts and supervision ratios | Book's source synthesis | Inference from Piagetian staging | **No evidence base**; progression logic primary, numbers illustrative; Piagetian substrate contested [contested] |
| Social AI companions: unacceptable risk for minors; ~3 in 4 US teens have used them | Common Sense Media (2024–2026) | Practitioner risk assessment; survey | Convergent in shape with tier logic; not experimental [verify figures] |
| Paste-and-accept behavior in GenAI-using STEM students | Wang et al. (2024) | Self-report survey | Verified; small sample (n=40) — directional [verify] |
| Over-reliance design levers: forcing functions, friction, verification-inviting explanation | Buçinca et al. (2021), CSCW; Microsoft Aether (2022) | Experimental (decision support) | Verified; transfer to learning is this book's extension |
| Executive-function challenges → higher perceived AI usefulness → over-reliance risk | Klarin et al. (2024) | Observational | Verified via synthesis; single line |

**What remains unsettled:** whether AI literacy is a stable measurable construct or a moving target indexed to current systems; whether literacy-through-design beats direct instruction (no comparative study); any experimental evidence on age-calibrated AI exposure (none exists — this is the Chapter 13 instance of the durability gap).

---

## The Pattern Card

**PATTERN: The Learner-Side Design Layer** *(spec-ready; one block per pattern in your specification)*

| Field | Specification |
|---|---|
| **Intent** | Make the experience itself teach accurate AI literacy and calibrated reliance — knowledge, skill, critique, creation — as recurring interactions, never as a module |
| **Patterns** | (a) **Provenance display**: AI content labeled at point of contact, with what human review touched it. (b) **Planted/curated error audit**: the AI is wrong on a schedule (every learner sees ≥1 error in the first two weeks, before trust hardens); credit for catching it. (c) **Prompt examination**: "what was asked on my behalf," openable for any AI response; advanced tiers may edit. (d) **Restriction rationale**: every guardrail carries a one-line learner-level "why," linked to evidence. (e) **No-AI-zone map**: where AI is unavailable and the objective each zone protects. (f) **Reliance dashboard**: own help-request trajectory against the fading schedule. |
| **Trigger / frequency** | Each pattern carries both — a pattern without a frequency is an orientation screen in disguise |
| **Calibration rule** | Criticality demands, supervision, autonomy set by tier (or expertise stage for adults); progression logic governs, numbers illustrative; review trigger stated |
| **Fading rule** | Literacy scaffolds fade like all scaffolds: error audits stretch weekly → monthly as verification stabilizes; prompt examination moves prompted → on-demand |
| **Failure modes** | Orientation-module fallacy; disclosure theater (transparency the learner can't interpret — Ch. 11 satisfied, Ch. 13 failed); error-spotting gamed as checklist, not internalized as vigilance; calibration read as age gating |
| **Evidence status** | Reframe supported by SAILD (single study, flagged) + verified over-reliance design literature; objective-indexed reliance is the book's coinage; tier numbers evidence-free |

---

## Worked Example: The Learner-Side Layer of the DataWise Tutor

*Act Three continuing case — segment three of the instructor's integration specification for the Track A statistics tutor ("DataWise 101"), following the guardrail spec (Ch. 11) and the agentic boundaries (Ch. 12). The full specification appears whole in Chapter 15.*

**Situation.** DataWise 101 is an online introductory statistics course; its AI homework tutor carries a guardrail spec (hint ladder, reasoning gates, fading schedule, escalation rule) and bounded agentic permissions. Population: first- and second-year undergraduates, many statistics-anxious — age calibration is moot and *expertise-stage* calibration governs.

**The problem as the designer sees it.** An implicit-curriculum audit finds three bad lessons taught fluently: the hint ladder never says why it asks what it asks (lesson: the system's reasoning is not your business); the tutor is never wrong in the learner's experience, because learners never check it (lesson: AI output is final); the guardrails are invisible until bumped into, then read as refusal (lesson: the system is withholding, not protecting).

**Process — including the dead ends.** First attempt: a Week 1 "AI literacy orientation" with a video and quiz. Killed in review by this chapter's own argument — twenty minutes of module against a semester of interface. Second attempt: gamified literacy badges ("Prompt Master," "Error Hunter"). Killed by the calibration evidence: badges reward *volume* of engagement, and fluency without verification worsens the over-reliance profile. Third attempt — the one that survived — designs the literacy into the loop: (1) every hint opens with a one-line rationale ("I'm asking about the null hypothesis because your setup skipped it"); (2) a weekly **check-the-tutor** item: verify one AI worked example against the textbook, credit for catching the error — scheduled so every learner sees the tutor wrong by Week 2, before trust hardens; (3) a **"what I can't do for you and why"** panel translating each guardrail into student language with the crutch evidence cited; (4) a learner-visible **reliance dashboard** plotting own hint requests against the fading schedule; (5) the **no-AI-zone map** for the course's assessment windows, each with its one-line objective.

**Resolution.** Five interaction patterns, each with trigger and frequency, totaling under two added minutes per week — entered into the specification as the learner-side layer, cross-referenced to the Chapter 11 transparency spec it extends.

**The lesson.** The learner-side layer is not new content; it is the guardrail spec made legible, plus scheduled experiences of the AI's fallibility.

**The limit.** This design teaches calibration *inside* DataWise. Whether it transfers — whether a learner who checks this tutor also checks ChatGPT at home — is unknown, and no study yet measures it. The instrumentation built here (verification logs, dashboard trajectories) is what Chapter 14 will read.

### Track B Extension

Run the same sequence on your own project this week: (1) the implicit-curriculum audit — five things your interface teaches about AI, each classified literacy-positive or -negative; (2) reject your first orientation-module instinct in writing; (3) specify three to five learner-side patterns with triggers and frequencies; (4) state your population's calibration — tier if minors, expertise stage if adults — with inference status and review trigger named. If your project serves minors, add the companion-versus-task-bounded distinction: which features drift toward relational AI, and what bounds them?

---

## Exercises

**13.1 — Implicit-curriculum audit** *(Analyze).* Take three screenshots of a real AI learning product you did not design. List five things the interface teaches the learner about AI; classify each literacy-positive or -negative; map each to the UNESCO competency or Long & Magerko question it touches. One paragraph: the single interaction change with the largest literacy effect.

**13.2 — Pattern conversion, no module allowed** *(Apply/Create).* Take one framework competency ("evaluate AI output critically"). Design three recurring interaction patterns that build it inside an existing learning journey — Pattern Card format. The word "module" disqualifies the submission.

**13.3 — Tier placement with dissent** *(Analyze/Evaluate).* For a target population (12-year-olds in an under-resourced district, or first-year nursing students), place them in the five-tier framework and design two calibration decisions. Then the one-paragraph dissent: what the inference-based status and the Piagetian critique do to your confidence, and what observation would revise the placement.

**13.4 — Design Lab #8: The learner-side layer** *(Create — production exercise; 25 pts, Track B bonus +5).* Produce the learner-side design layer for your design-lab project: implicit-curriculum audit, three to five embedded literacy patterns (Pattern Card format), population calibration with status label and review trigger, plus the Withdrawal Test answer and Reliance Disclosure below. **Track A:** extend the instructor's DataWise layer with two patterns of your own and a rationale for one pattern you would *remove*. **Track B:** own project; bonus requires project-specific evidence (logs, learner data, a named constraint), not generic risk language.

*Assessment note.* Design Lab #8 grades four things: audit honesty (did you find your own interface's bad lessons?), pattern specificity (triggers and frequencies present), calibration discipline (status labels attached), and the Withdrawal Test answer. An orientation module submitted as a literacy design fails the lab's premise — see Section 13.1.

---

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 13 version).** *What does the learner know about working without the AI — and how does the learner-side design make that more rather than less?* Three sentences: what your design teaches about the AI's limits; which interactions rehearse unassisted judgment (error-spotting is unassisted judgment practice in disguise); what the learner could tell a peer about *when not to use* the system.

**Reliance Disclosure (Chapter 13 version).** Name (1) one place your learner-side design structurally preserves productive struggle — a no-AI zone with a legible rationale, a verification task with credit attached; and (2) one place reliance risk remains open *despite* the literacy layer — and why the interface cannot close it alone (e.g., out-of-product AI use you cannot instrument).

---

## What Would Change My Mind

The reframe — literacy through designed interaction beats literacy as taught content — rests on one design-based study, a verified over-reliance literature from decision-support contexts, and the structural argument about exposure hours. A well-powered comparative study finding that a stand-alone direct-instruction module produced equal or better reliance calibration than embedded interaction patterns — measured behaviorally (verification rates, help-request trajectories), not by quiz scores, and sustained at a delay — would force this chapter to demote the reframe from design principle to design option, and to rewrite Design Lab #8 around dosage rather than placement.

---

## Still Puzzling

1. **Is AI literacy a measurable construct at all** — or a moving target re-indexed to whatever systems exist this year? The proliferation of competing scales suggests the field doesn't know yet.
2. **Does designed error-spotting habituate?** Learners may learn the game (find the weekly planted error) without acquiring the disposition (check things nobody told you to check). No one has measured the difference.
3. **Does calibration transfer across products?** A learner appropriately reliant on your guardrailed tutor goes home to an unguardrailed chatbot. Whether in-product literacy travels is unmeasured — and it decides how much this chapter's layer actually protects.
4. **What evidence would put real numbers on the tiers?** Age-calibrated exposure has no experimental base, and it is hard to imagine the ethics board that approves one. The field may be permanently limited to observational convergence — which makes the status-label discipline permanent too.

---

## Chapter Summary

You can now: audit the implicit AI curriculum of any interface; convert framework competencies into recurring interaction patterns with triggers, frequencies, and fading rules; calibrate AI exposure by developmental tier or expertise stage while carrying the framework's inference-based status honestly; and design for appropriate reliance calibrated to the learning objective, not just to AI accuracy — this book's extension, labeled as such. Your integration now has a learner side to match its system side.

---

## Key Terms

- **Implicit AI curriculum** — what an interface teaches learners about AI through its design, independent of any instruction.
- **Orientation-module fallacy** — addressing literacy with front-loaded content while the interaction loop teaches the opposite lesson at vastly greater exposure.
- **Provenance display** — point-of-contact labeling of what is AI-generated and what human review touched it.
- **Planted-error audit** — scheduled learner encounters with AI fallibility, rewarded, timed before trust hardens.
- **Developmental calibration** — matching interaction design (supervision, criticality, autonomy) to developmental tier or expertise stage; not age gating.
- **Appropriate reliance** — accepting AI help when it is right *and* the task warrants it; declining when it is wrong *or* unassisted practice is the objective.
- **Objective-indexed reliance** — this book's extension: reliance calibrated to the learning objective, not only to AI accuracy.
- **No-AI-zone map** — learner-visible chart of where AI is unavailable and the objective each zone protects.

---

## Bridge

The integration is now fully designed — system side and learner side. One question remains, and it is the thesis: how will anyone know whether it worked when the AI is taken away?

---

## Further Reading

- **Long, D., & Magerko, B. (2020). "What Is AI Literacy? Competencies and Design Considerations." *Proc. CHI 2020*.** The foundational definition — an HCI paper with embedding guidance, not a curriculum document; read with its pre-LLM vintage in mind.
- **UNESCO (2024). *AI Competency Framework for Students* / *for Teachers*.** The audit grids: twelve student competencies and the adult-side complement your deployment depends on.
- **OECD/European Commission (2025). *Empowering Learners for the Age of AI* (AILit review draft).** The engage/create/manage/design domains as a coverage check; confirm final-version status.
- **Postman, N. (1992). *Technopoly*.** The deep background for 13.1: technological change as ecological, not additive — why your tutor is a new course, not the old course plus a feature.
- **Common Sense Media, AI Risk Assessments (2024–2026).** Independent child-development-grounded calibration that landed more conservatively than the market — convergence in shape, not numbers.

---

## LLM Exercise: Audit Your Interface's Hidden Curriculum

Copy-paste the following into an LLM. Note the structure: the model is gated from proposing patterns until you have done the audit yourself — the exercise practices the reasoning-before-help design it teaches.

> You are an AI-literacy design auditor working with a learning experience designer. We will audit what my AI-mediated learning product implicitly teaches learners about AI, then design embedded literacy patterns. Follow this protocol strictly:
>
> **Phase 1 — My audit first.** Ask me to describe (a) my product and population, (b) the learner's first AI interaction, (c) whether the learner ever sees the AI being wrong, (d) what happens when the AI declines to do something. Then require ME to list five things I believe my interface currently teaches about AI before you add anything. Do not answer for me.
>
> **Phase 2 — Your critique.** Classify each of my five lessons as literacy-positive or literacy-negative, challenge any I have flattered, and add at most three lessons I missed — citing the interface detail each rides on.
>
> **Phase 3 — Patterns, gated.** Before proposing any pattern, ask which learning objectives require unassisted practice (my no-AI zones). Then propose three embedded literacy patterns in Pattern Card format (trigger, structure, frequency, fading rule, failure mode), each tied to one negative lesson from Phase 2. Reject any pattern from me that is an orientation module in disguise, and say why.
>
> **Phase 4 — Calibration check.** Ask my population's developmental tier or expertise stage; flag any miscalibrated pattern; end by stating, one sentence each: which pattern rehearses unassisted judgment, and what reliance risk remains open that no interface pattern can close.

Deliverable for the design lab: your Phase 1 audit list, the model's Phase 2 critique with your accept/reject notes, and one Phase 3 pattern you adopted into Design Lab #8 — with one sentence on what you overruled and why.
