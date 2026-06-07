# Research Notes: Chapter 13 — AI Literacy and Developmental Calibration: Designing the Learner's Side
**Source:** TIKTOC.md chapter entry
**Notes file:** 13-ai-literacy-developmental-calibration_notes.md
**Corresponding chapter:** chapters/13-ai-literacy-developmental-calibration.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn to treat AI literacy as a design dimension of every AI-mediated experience — not a separate subject — and to calibrate AI exposure to developmental stage.

**Learning outcomes:**
1. (Understand) Explain the reframe: every AI touchpoint makes implicit choices about transparency, controllability, and trust calibration — making them explicit is LXD work, not an ethics add-on.
2. (Apply) Embed AI-literacy interactions into a learning journey: error-spotting, output critique, prompt examination — as recurring interaction patterns, not a module.
3. (Analyze) Apply the developmental five-tier framework (ages 3–18, protection → modeling → scaffolded exploration → collaborative inquiry → autonomous critical agency) to a target population, noting its inference-based status.
4. (Create / Track B) Design the learner-side layer for their own project: what the learner is taught about the AI by the experience itself.

**Opening:** A fifth-grade classroom where students design an AI-powered solution and, along the way, learn what AI is — the SAILD finding: literacy through design, effective across all four dimensions, no lecture in sight.

**Core content:** AI literacy frameworks (contested definitions, converging structure); SAILD; the five-tier developmental table; UNESCO teacher competencies as the adult-side complement; designing appropriate reliance rather than maximal use.

**Assessment:** Design Lab #8 (25/30 pts)

**Bridge:** The integration is fully designed — system side and learner side. One question remains, and it is the thesis: how will anyone know whether it worked when the AI is taken away?

---

## A. Conceptual foundations

### 1. The reframe: AI literacy as an experience dimension, not a curriculum subject

The chapter's load-bearing move is a relocation of AI literacy from "a thing schools teach in a unit" to "a property every AI-mediated experience already has, whether anyone designed it or not." Every AI touchpoint in a learning product implicitly teaches the learner something about AI: whether it can be trusted, whether it can be questioned, whether its output is final, whether the learner is allowed to see how it works. A tutoring interface that delivers confident answers with no provenance is teaching AI literacy — bad AI literacy. The design question is therefore not "should we add an AI literacy module?" but "what is our interface already teaching, and is that what we want taught?"

This connects directly to the book's Weeks 11–12 material: the transparency layer (disclosure as relational metadata, the escape hatch) and agentic notification design ARE AI-literacy interventions delivered through the experience itself. The chapter makes that connection explicit: the learner-side layer is the mirror image of the guardrail spec. The system side says what the AI may do; the learner side says what the learner is enabled to understand, question, and control.

The practical pattern set this implies (and that the design lab requires): recurring error-spotting interactions (the AI's output is occasionally wrong by design or by selection, and the learner is rewarded for catching it); output-critique prompts (the learner rates or red-lines AI output before accepting it); prompt examination (the learner sees and can edit what was actually asked of the model); provenance displays (which parts of this content were AI-generated). These are interaction patterns with frequencies and triggers, not a one-time orientation screen.

**Common misconception:** "AI literacy is the school's/instructor's job, not the product's." The designer cannot delegate it: the interface teaches whether or not the curriculum does, and learners spend orders of magnitude more time inside the interface than inside any orientation module. (Parallel structure to Chapter 2's closing of the self-regulation escape hatch: literacy, like guardrails, cannot be aspirational.)

**Worked example:** Take the Track A statistics tutor. Implicit curriculum audit: (a) the hint ladder never shows the learner why a hint was chosen → add a one-line "I'm asking this because…" rationale (transparency-as-literacy); (b) the tutor is never wrong in the learner's experience → add a weekly "check the tutor" item where the learner must verify one AI-generated worked example against the textbook, with credit for catching planted or naturally occurring errors; (c) learners never see the system prompt's restrictions → add a "what I can't do for you and why" panel, written at student level, linking the restriction to the crutch evidence. Each addition is an interaction pattern with a trigger and a frequency, not a module.

**Source(s):** ai_lxd_definitive_synthesis.md §6 ("AI literacy as experience design — not a separate subject"; Design Principle 5); Bhat & Long DIS '24 (transparency as relational metadata, via Ch. 11); WGU Labs interface findings (via Ch. 11).

### 2. Contested definitions, converging structure: the framework landscape

The definitional literature is genuinely unsettled but converging in shape. The chapter should teach the convergence without pretending the contest is over.

- **Long & Magerko (2020, CHI)** — the field's most-cited definition: AI literacy is "a set of competencies that enables individuals to critically evaluate AI technologies; communicate and collaborate effectively with AI; and use AI as a tool online, at home, and in the workplace." They organize 17 competencies under five questions: What is AI? What can AI do? How does AI work? How should AI be used? How do people perceive AI? Crucially for this book, the paper also offers *design considerations* for embedding these competencies into learner-centered AI artifacts — it is an HCI paper, not a curriculum paper, which makes it the chapter's natural ancestor. Note its pre-LLM vintage (2020): it predates generative AI's conversational ubiquity, and several of its competencies (e.g., recognizing AI) have shifted meaning since.
- **UNESCO AI Competency Framework for Students (2024)** — 12 competencies across four dimensions: human-centred mindset, ethics of AI, AI techniques and applications, AI system design — each at three progression levels (Understand, Apply, Create). Released at Digital Learning Week, September 2024, alongside the companion **AI Competency Framework for Teachers** (five dimensions — human-centred mindset, ethics of AI, AI foundations and applications, AI pedagogy, AI for professional development — at three mastery levels: acquire, deepen, create). The teacher framework is the chapter's "adult-side complement": the learner-side design fails if the humans supervising it are less AI-literate than the interface assumes.
- **OECD–European Commission AILit Framework** (*Empowering Learners for the Age of AI*, Review Draft, May 2025; developed with Code.org support and an international expert group) — targets primary and secondary education; structures AI literacy as knowledge, skills, and attitudes, organized around four domains of engagement (engaging with AI, creating with AI, managing AI, designing AI). Released as a public review draft with stakeholder consultation through 2025; final version expected 2026. The book's synthesis references the May 2025 review draft — the chapter must check the final-version status at press time.
- **Sperling et al. — the contested-definitions finding:** Sperling, Stenberg, McGrath, Åkerfeldt, Heintz & Stenliden, "In search of artificial intelligence (AI) literacy in teacher education: A scoping review," *Computers and Education Open* (2024). Finds AI literacy a fast-growing research topic that is nearly absent in teacher education, with definitions that vary by audience (teachers vs. students vs. professionals) and span cognitive, emotional, and behavioral constructs. NOTE: the book's TOC and synthesis say "Sperling et al. 2025"; the scoping review is 2024 — see flag in Section G.

The convergent structure across all frameworks: a knowledge component (what AI is and how it works), a use/skill component (working effectively with AI), a critical/ethical component (evaluating, questioning, recognizing limits and harms), and increasingly a creation/design component (building with AI). The chapter can teach this four-part skeleton as the stable core and the specific frameworks as the replaceable layer — same architecture as the book's Pattern Card / Evidence Box separation.

**Common misconception:** "AI literacy = knowing how to prompt." Prompting skill is the smallest and fastest-aging slice; every major framework weights critical evaluation and ethical reasoning more heavily than operation. A learner who prompts brilliantly but cannot judge output quality is the over-reliance profile, not the literate profile.

**Worked example:** Map one design-lab project's learner-side features against the four-part skeleton: which interactions build knowledge (provenance panel), which build skill (prompt examination), which build critique (error-spotting), which build creation (learner configures their own hint-ladder aggressiveness). The gap analysis usually shows critique is the unserved dimension — which is exactly the dimension the crutch effect runs through.

**Source(s):** Long, D. & Magerko, B. (2020). "What is AI Literacy? Competencies and Design Considerations." *Proc. CHI 2020*, 1–16. https://dl.acm.org/doi/10.1145/3313831.3376727 · UNESCO (2024), *AI competency framework for students* and *AI competency framework for teachers*, https://www.unesco.org/en/articles/ai-competency-framework-students · OECD/EC (2025), *Empowering Learners for the Age of AI*, review draft May 2025, https://ailiteracyframework.org · Sperling et al. (2024), *Computers and Education Open* (see flag) · ai_lxd_definitive_synthesis.md §6.

### 3. Literacy through design: SAILD and design-based learning

**SAILD — "Students as AI Literate Designers"** (Journal of Research on Technology in Education, published online January 21, 2025; DOI: 10.1080/15391523.2025.2449942). A pedagogical framework grounded in design-based learning (and, per the synthesis, Gagné's instructional theory) in which young learners acquire AI literacy by designing AI-powered solutions to real-world problems rather than receiving AI literacy as taught content. The evaluation: a mixed-methods study with Grade 5 students in Hong Kong, measuring four AI literacy dimensions — knowledge, skills, ethics, attitudes. Quantitative findings: significant pre/post gains in AI knowledge, ethics, and attitudes; qualitative findings document students' problem-solving processes using AI skills.

PRECISION NOTE for the Evidence Box: the synthesis (and the TOC opening, "effective across all four dimensions") slightly overstates the quantitative result — the published abstract reports significant pre/post differences in knowledge, ethics, and attitudes, with the *skills* dimension evidenced qualitatively through the problem-solving process data rather than by a significant quantitative gain. The chapter opening can stand ("effective across all four dimensions" is defensible if the qualitative evidence is counted) but the Evidence Box should state the split honestly. Also flag: single study, one grade level, one cultural context (Hong Kong), no control group reported in the abstract (pre/post design) — this is a promising design-based finding, not an RCT.

Why SAILD matters to this chapter's argument: it is the strongest available evidence that the *reframe works* — that literacy emerges from designed activity rather than direct instruction. It converts the chapter's thesis from assertion to demonstrated possibility, at exactly the age band (Tier 2–3, concrete operational) where direct instruction about abstract systems is least effective. It also models the book's own pedagogy: students learn AI-mediated design by doing AI-mediated design.

**Common misconception:** "Elementary students are too young for AI literacy; protect first, teach later." SAILD's Grade 5 evidence and the framework landscape both support age-calibrated *active* engagement rather than blanket deferral — protection is the Tier 0 strategy, not the K–12 strategy.

**Worked example:** Translate SAILD upward to the Track A stats course (adult learners): instead of a "how to use the tutor" orientation, learners complete a Week 1 micro-design task — write the system prompt restrictions they would impose on their own tutor, then compare against the actual guardrail spec. The act of designing the restriction teaches the crutch evidence, the guardrail logic, and the tutor's actual boundaries in one move.

**Source(s):** Su, J. et al. (2025... author list to verify at drafting — see flag G-4), "Students as AI literate designers: a pedagogical framework for learning and teaching AI literacy in elementary education," *JRTE*, https://www.tandfonline.com/doi/full/10.1080/15391523.2025.2449942 · ai_lxd_definitive_synthesis.md §6.

### 4. Developmental calibration: the five-tier framework and its epistemic status

The book's five-tier table (synthesis §6) calibrates AI exposure by Piagetian stage:

| Tier | Ages | Stage | Primary LXD objective | Guideline |
|---|---|---|---|---|
| 0 | 3–5 | Sensorimotor/Pre-operational | Cognitive protection | Zero direct student use; educators use AI to prepare offline activities |
| 1 | 6–7 | Transition to concrete operational | Teacher-led modeling | ≤15 min/day; >95% supervised; whole-class error-spotting |
| 2 | 8–10 | Concrete operational | Scaffolded exploration | ≤30 min/day; ~90% independent; creative tasks with mandatory fact-checking |
| 3 | 11–13 | Early formal operational | Collaborative inquiry + ethics | ≤60 min/day; ~80% independent; dataset analysis + algorithmic bias debate |
| 4 | 14–18 | Advanced formal operational | Autonomous critical agency | ≤120 min/day; ~70% independent; multi-modal projects + prompt architecture analysis |

The chapter MUST teach this with its status label attached (TOC Part 11: "Inference-based — taught with status label; Open Question 5 on placement"). Three layers of epistemic caution to build in:

(a) **The framework itself is inference, not evidence.** No study has tested these tiers, the time limits, or the supervision ratios. They are a designer's synthesis of Piagetian staging plus precautionary logic. The specific numbers (15/30/60/120 minutes) have the false precision problem the book penalizes elsewhere; the chapter should present the *progression logic* (protection → modeling → scaffolded exploration → collaborative inquiry → autonomous critical agency) as the durable content and the numbers as illustrative placeholders.

(b) **The Piagetian substrate is itself contested.** Standard critiques: development is more continuous and domain-specific than stage theory implies; Piaget underestimated infants and overestimated adolescents; cross-cultural and individual variation is large; stage boundaries are not sharp. A 2015 critical review (Marcovitch et al.-adjacent literature; see e.g. "Developmental stages, Piagetian stages in particular: A critical review," *New Ideas in Psychology*) and the broader neo-Piagetian literature support using stages as design heuristics, not measurement instruments. Papert's constructionist counterpoint is useful here: technology can *move* the concrete/formal boundary, which cuts against any fixed age-to-exposure mapping. Teaching the critique is not a digression — it is the book's evidence-discipline applied to its own framework.

(c) **Convergent practitioner guidance exists and is more conservative at the young end.** Common Sense Media's AI Risk Assessments (2024–2026): social AI companions (Character.AI, Replika, Nomi, etc.) pose "unacceptable risks" for under-18s and should not be used by minors; AI toy companions — none for children 5 and under, extreme caution ages 6–12 (research with child-development experts, announced late 2025/early 2026); major chatbots (ChatGPT, Claude, Gemini, Meta AI) assessed as unsafe for teen *mental-health support* use without significant modification; and a 2025 national survey finding roughly three in four US teens have used AI companions. The convergence point for the chapter: independent practitioner risk assessment lands on the same shape as the five-tier inference — protection at the bottom, supervised criticality in the middle, bounded autonomy at the top — which raises confidence in the progression logic while leaving the specific parameters unevidenced. Distinguish *relational/companion* AI (where Common Sense says "no minors") from *task-bounded learning* AI (where calibrated use is defensible): the chapter's Week 11 vulnerability-vector material explains why companion AI is categorically riskier.

**Common misconception:** "Developmental calibration = age gating." The tiers calibrate *interaction design* (supervision ratio, criticality demands, autonomy), not just access. A 9-year-old with mandatory fact-checking tasks is getting more developmental value than a 16-year-old with unrestricted companion access — the design, not the birthday, carries the protection.

**Worked example:** A district adopting an AI reading assistant for grades 3–8 (Tiers 2–3). Calibration decisions: grades 3–5 — assistant reads with the student and asks comprehension questions, never summarizes the text for them (protecting the productive struggle of decoding/comprehension); error-spotting built in as a game ("the assistant makes one mistake per session — find it"); grades 6–8 — students additionally examine why the assistant recommended a passage (recommendation transparency as early algorithmic literacy), with a structured bias-debate unit using the assistant's own logs. Same product, two interaction designs, one developmental rationale — and a stated review trigger: revisit when actual evidence on age-calibrated AI exposure lands.

**Source(s):** ai_lxd_definitive_synthesis.md §6 (five-tier table; inference-based label) · TikTOC.md Part 11 (contested-claims table) and Part 16 (Open Question 5) · Common Sense Media AI Risk Assessments: https://www.commonsensemedia.org/ai-ratings/ai-risk-assessments (social AI companions assessment; AI toys assessment Jan 2026; teen companion survey 2025) · Piagetian critique literature (e.g., *New Ideas in Psychology* critical review; Psychology Today 2025 "Rethinking Piaget in a Tech-Driven Childhood" as accessible framing — prefer the academic source in the chapter).

### 5. Designing appropriate reliance, not maximal use

The chapter's target state for the learner is **appropriate reliance**: accepting AI assistance when the AI is right and the task warrants it; declining or overriding when it is wrong or when unassisted practice is the point. This imports a mature HCI/human-factors literature (automation trust calibration → AI reliance): appropriate reliance is defined as the human's ability to discriminate correct from incorrect AI advice and act on that discrimination; calibrated trust is the attitudinal twin (trust that matches actual system capability). Two failure modes bracket it: over-reliance (accepting wrong advice — amplified in low-expertise users, exactly the learner population) and under-reliance/algorithm aversion (rejecting right advice). Microsoft's Aether overreliance literature review (2022) and the cognitive-forcing-functions literature (e.g., Buçinca et al. 2021, "To Trust or to Think," CSCW — checked: real, widely cited) supply the design levers: friction before acceptance, explanations that invite verification rather than persuade, uncertainty display, and onboarding that names over-reliance as a known failure mode.

The chapter's twist on this literature — and the bridge to the book's thesis — is that in *learning* contexts, appropriate reliance has a second dimension the decision-support literature lacks: even *correct* AI assistance can be the wrong choice if the learning objective requires unassisted practice. A learner who accepts a correct AI solution to a problem they were supposed to struggle through has relied inappropriately on a perfectly reliable system. So the design target is not just "trust calibrated to accuracy" but "reliance calibrated to learning objective" — which only the designer, not the model, can encode. This is why appropriate reliance is a *designed* property: reasoning gates, fading schedules, and AI-free assessment windows are reliance-calibration mechanisms, and the learner-side layer should make their rationale legible ("this is a no-AI zone because this skill is the point").

Supporting evidence threads: students with higher self-efficacy and need for cognition show better-calibrated reliance (recent higher-ed studies); trust generalizes inappropriately after early positive experiences (each uncritically accepted suggestion reinforces the next); Klarin et al. 2024 (via synthesis §5) — adolescents with executive-function challenges perceive AI as more useful and are more over-reliance-prone, making appropriate-reliance design an equity intervention, not a power-user feature.

**Common misconception:** "More AI fluency → more appropriate reliance." Fluency increases use, and comfort can decrease scrutiny; calibration comes from designed verification experiences (seeing the AI be wrong, being rewarded for catching it), not from exposure hours.

**Worked example:** Reliance-calibration features for the Track A tutor: (1) confidence-tiered responses — when the tutor's answer-checking is uncertain it says so, and the learner earns credit for resolving the uncertainty; (2) the planted-error audit from Concept 1, scheduled to ensure every learner sees the tutor wrong at least once in weeks 1–2 (early calibration before trust hardens); (3) a visible "no-AI zone" map of the course with one-line rationales; (4) a reliance dashboard the learner sees: their own help-request trajectory against the fading schedule — self-monitoring data, which also feeds Chapter 14's reliance-trajectory metrics.

**Source(s):** Microsoft Aether, "Overreliance on AI: Literature Review" (2022), https://www.microsoft.com/en-us/research/wp-content/uploads/2022/06/Aether-Overreliance-on-AI-Review-Final-6.21.22.pdf · appropriate-reliance literature (e.g., *International Journal of Human–Computer Interaction* 2024 "Psychological Traits and Appropriate Reliance"; Buçinca et al. 2021 CSCW) · Klarin et al. 2024 via ai_lxd_definitive_synthesis.md §5 · synthesis §2 (chess-academy: self-regulated help-seeking fails).

---

## B. Domain examples and cases

### Case 1 — SAILD in a Hong Kong Grade 5 classroom (the chapter opening)
As specified in the TOC opening. Students design AI-powered solutions for real-world problems over a structured design cycle; AI literacy outcomes measured across knowledge, skills, ethics, attitudes. Significant quantitative gains in knowledge, ethics, attitudes; skills evidenced qualitatively. Use as the existence proof for literacy-through-design; carry the precision note from Concept 3 into the Evidence Box. **Source:** JRTE 2025, DOI 10.1080/15391523.2025.2449942.

### Case 2 — The framework convergence as a designer's resource (UNESCO 2024 / OECD-EC AILit 2025)
A designer asked to "add AI literacy" in 2026 faces at least three official frameworks. The case walks through using them as design checklists rather than curricula: UNESCO's 12 student competencies × 3 levels as an audit grid for what an interface implicitly teaches; the AILit draft's engage/create/manage/design domains as a coverage check for interaction patterns; UNESCO's teacher framework as the deployment-readiness check for the adult side. Teaching point: frameworks specify WHAT, never the interaction layer — the same principles-to-patterns gap the book names for governance frameworks generally (Part 4 positioning). **Sources:** UNESCO 2024 frameworks; OECD/EC AILit review draft May 2025 (final expected 2026 — verify at drafting).

### Case 3 — Common Sense Media draws an age line the industry didn't
2025–2026: Common Sense Media's risk assessments conclude social AI companions are unacceptable for under-18s; its national survey finds ~72–75% of teens have used them anyway; OpenAI partners with Common Sense on youth safety measures; AI toys assessed as inappropriate ≤5. The case shows independent, child-development-grounded assessment producing *more conservative* calibration than market behavior — and gives the chapter its "the populations most at risk are the most aggressively marketed to" beat (thesis echo from Chapter 2/8). Distinguish companion AI (relational, engagement-optimized — the Week 11 vulnerability vectors at maximum strength) from bounded learning tools. **Sources:** commonsensemedia.org press releases and AI Risk Assessments (2025–2026); teen survey 2025.

### Failure case — The orientation-module fallacy (illustrative)
LABEL AS ILLUSTRATIVE. A university deploys an AI writing assistant with a mandatory 20-minute "Responsible AI Use" module: definitions, policy, a quiz. Six weeks later, usage logs show the pattern Wang et al. (2024) documented in STEM students — over half paste assignments wholesale and accept output. The module taught *about* AI; the interface taught *how to rely on* AI, and the interface won, because the interface ran 40 hours to the module's 20 minutes. Post-hoc fix attempts (sterner policy language, a second module) fail for the same reason the self-regulation escape hatch fails in Chapter 2. The design fix is the chapter's whole argument: move literacy into the interaction loop — provenance, friction, error-spotting, visible no-AI zones. Anchor the behavioral claim to the real Wang et al. finding (85% of STEM students use GenAI; over half input problems directly and rely on solutions — synthesis §2) so the illustrative wrapper carries verified freight.

---

## C. Connections and dependencies

**Prerequisites:** Chapter 11 (transparency layer, relational metadata, escape hatch — the learner-side layer extends the trust spec); Chapter 12 (agentic notification/override — what the learner must understand grows when the AI acts unprompted); Chapter 2 (the crutch mechanism and the self-regulation escape hatch — appropriate reliance is the positive restatement); Chapter 3 (pattern catalog — error-flagging and metacognitive prompts reappear here as literacy patterns); Chapter 8 (equity lens — Klarin et al., differential over-reliance risk).

**Unlocks:** Chapter 14 — reliance-trajectory metrics presuppose the learner-side instrumentation designed here (help-request logs, verification behavior, fading compliance); the evaluation plan's "appropriate reliance" endpoint is only measurable if Chapter 13's design made reliance visible. Chapter 15 — the learner-side design section of the final integration specification.

**Adjacent chapter connections:**
- **To Chapter 12 (agentic AI):** Chapter 12 ends with the system side fully specified — what the agent may do, how it notifies, how it escalates. Chapter 13 is the explicit mirror: the bridge ("the learner's side... is a design surface too, and it varies by age") converts every Chapter 12 notification/override pattern into a comprehension question — notification the learner cannot understand is disclosure theater. Developmental calibration sharpens this: a Tier 2 learner cannot meaningfully consent to or override an agentic path change, so agentic autonomy itself must be age-calibrated.
- **To Chapter 14 (evaluation):** Chapter 13 defines the target learner state (appropriately reliant, critically engaged); Chapter 14 asks how you would know you produced it. The reliance dashboard and verification-behavior logging designed here become Chapter 14's reliance-trajectory metrics. The bridge question is the thesis restated: the withdrawal test is, among other things, the final exam of the learner-side design.

---

## D. Current state of the field

**Settled:**
- AI literacy frameworks converge structurally on knowledge + skills + critical/ethical evaluation + (increasingly) creation, across UNESCO, OECD/EC, and the academic literature.
- The major institutional frameworks specify competencies, not interaction designs — the design layer is explicitly left to practitioners (consistent with the book's positioning claim).
- Over-reliance is a documented, design-sensitive failure mode; low-expertise users are most susceptible; onboarding, friction, and transparency measurably affect reliance calibration (HCI literature, multiply replicated in decision-support contexts).
- Default learner behavior without counter-design is shortcut-seeking (Wang et al. 2024; chess-academy follow-up — via earlier chapters).

**Contested or emerging:**
- The definition of AI literacy itself (Sperling et al. scoping review; competing scales and instruments; rapid LLM-era drift away from the 2020 Long & Magerko base).
- Whether AI literacy is measurable as a stable construct vs. a moving target indexed to current systems.
- Developmental calibration: NO direct evidence base — the five-tier framework is inference; Piagetian staging itself carries decades of critique; practitioner guidance (Common Sense Media) is convergent in shape but also not experimental. Emerging: regulatory age-calibration pressure (platform minimum-age policies, youth-safety partnerships, post-2025 litigation around teen companion AI).
- Whether literacy-through-design (SAILD-style) outperforms direct instruction — one study, no comparative design.
- Appropriate reliance in *learning* (objective-indexed reliance) as distinct from decision-support reliance (accuracy-indexed) — the chapter's framing is ahead of the literature here; flag as the book's synthesis, not an established research distinction.

**Key references:**
1. Long, D., & Magerko, B. (2020). What is AI Literacy? Competencies and Design Considerations. *Proc. CHI 2020*. (verified)
2. UNESCO (2024). *AI Competency Framework for Students*; *AI Competency Framework for Teachers*. (verified)
3. OECD & European Commission (2025). *Empowering Learners for the Age of AI* — AILit Framework Review Draft, May 2025. (verified; final version expected 2026 — check status)
4. [Authors TBV] (2025). Students as AI literate designers (SAILD). *Journal of Research on Technology in Education*. DOI 10.1080/15391523.2025.2449942. (verified to exist with this DOI/title/findings; confirm author list at drafting)
5. Sperling, K., et al. (2024). In search of artificial intelligence (AI) literacy in teacher education: A scoping review. *Computers and Education Open*. (verified; note year discrepancy vs. book's "2025")

**Recent developments (last 3 years):**
- 2024: UNESCO student + teacher competency frameworks (Digital Learning Week).
- Feb 2025: EU AI Act Article 4 AI-literacy obligation becomes applicable — providers and deployers must ensure adequate AI literacy of staff and persons operating AI systems on their behalf; first time AI literacy is a legal duty rather than an educational aspiration. (Well-established; cite the AI Act text at drafting.)
- May 2025: OECD/EC AILit review draft + global consultation; final framework expected 2026.
- 2025–2026: Common Sense Media AI risk assessment program matures (social companions, mental-health chatbot assessment, AI toys Jan 2026); national teen-companion-usage survey; OpenAI youth-safety partnership.
- 2025–2026: proliferation of AI-literacy scales/instruments (e.g., FALCON-AI for faculty; SAIL Delphi framework for equitable AI literacy, *Computers and Education: AI* 2026) — measurement is the field's current growth edge.

---

## E. Teaching considerations

**Where students get stuck:**
- Treating Design Lab #8 as a curriculum-writing task (producing an orientation module) instead of an interaction-design task. The deliverable is patterns-with-triggers, not lesson plans. The failure case exists to pre-empt this.
- The epistemic two-step of the five-tier framework: students either dismiss it ("it's not evidenced, skip it") or adopt it uncritically (designing to the minute-counts). The skill being taught is the book's core discipline — using inference-based frameworks with their status labels attached and review triggers stated.
- Conflating transparency (Ch. 11, what the system discloses) with literacy (Ch. 13, what the learner can do with the disclosure). A disclosure no learner can interpret satisfies the former and fails the latter.
- Adult-learner blind spot: students assume developmental calibration is a K-12-only concern and skip it for corporate/higher-ed projects. Push: calibration generalizes to *expertise* stage (novice professionals need reasoning-protection too — connect to Ch. 5 deskilling) even when age calibration is moot.

**Analogies and framings that work:**
- "The interface is the curriculum" — the hidden-curriculum concept from education applied to AI products.
- Nutrition-label analogy for provenance/disclosure design — but extend it: a label only works for label-readers; literacy design is teaching label-reading inside the supermarket.
- Driver's ed, not car ownership age: calibration by demonstrated capability and designed supervision, not just birthdays (maps supervision-ratio logic).
- Appropriate reliance as the spotter in weightlifting: a good spotter lets you strain, catches actual failure; reliance design decides when the spotter's hands come in. (Continuous with the book's scaffold language.)
- For the inference-status discussion: "the field is giving you a hand-drawn map of unmapped territory — the crime isn't using it, it's removing the 'hand-drawn' label."

**Exercises that build the target skill:**
1. (Analyze) Implicit-curriculum audit: given three screenshots of a real AI learning product, list five things the interface teaches the learner about AI, classify each as literacy-positive or literacy-negative, cite the framework competency each touches. — Bloom's: Analyze.
2. (Apply) Pattern conversion: take UNESCO student competency #X ("evaluate AI output critically") and design three recurring interaction patterns (trigger, structure, frequency, fading rule — Pattern Card format) that build it inside an existing learning journey, no module allowed. — Bloom's: Apply/Create.
3. (Analyze) Tier placement with dissent: given a target population (e.g., 12-year-olds in an under-resourced district, or first-year nursing students), place them in the five-tier framework, then write the one-paragraph dissent: what the framework's inference-based status and the Piagetian critiques mean for confidence in the placement, and what observation would revise it. — Bloom's: Analyze/Evaluate.
4. (Create / Track B) The learner-side layer spec: for their own project — what the experience itself teaches about the AI (provenance, error-spotting, no-AI-zone rationales, reliance dashboard), calibrated to the population, with the Withdrawal Test answer (what does the learner know about working *without* the AI?) and Reliance Disclosure. — Bloom's: Create.
5. (Evaluate) Calibration clash: students compare the five-tier table's Tier 4 (autonomous critical agency, ≤120 min/day) against Common Sense Media's "no companions under 18" line and write a design memo reconciling them (resolution: task-bounded vs. relational AI distinction). — Bloom's: Evaluate.

---

## F. Library files relevant to this chapter

- **_lib_Technopoly.md** (Postman) — the chapter's deep background: technologies redefine what counts as knowledge and competence; "the interface is the curriculum" is a Postman move, and the orientation-module fallacy is a technopoly symptom (procedural fix for an ecological problem).
- **_lib_The_Extinction_of_Experience.md** — embodiment and development; supports the Tier 0–1 protection rationale (what direct experience builds that mediated experience doesn't) and the developmental-calibration framing generally.
- **ai_lxd_definitive_synthesis.md** — §6 is this chapter's spine (AI literacy as experience design; SAILD; five-tier table); §5 for Klarin et al. and differential vulnerability; §2 for Wang et al. and the chess-academy hatch-closing.
- **experience_design_edtech_merged_synthesis.md** — companion-volume continuity for the learner-research framing of the learner-side layer.

---

## G. Gaps and flags

- **FLAG (G-1) — Sperling et al. year discrepancy:** The TOC and synthesis cite "Sperling et al. 2025"; the scoping review ("In search of AI literacy in teacher education," *Computers and Education Open*) is 2024. Either the book means a different/newer Sperling piece (there may be a 2025 follow-up — verify before drafting) or the citation year should be corrected to 2024.
- **FLAG (G-2) — Five-tier framework placement is Open Question 5:** main text vs. appendix is an unresolved authorial decision (epistemic-consistency stakes: the book penalizes unlabeled inference elsewhere). These notes assume main-text-with-status-label; the chapter draft must not silently resolve this — surface it to the author.
- **FLAG (G-3) — Time limits and supervision percentages in the tier table** have no evidence base whatsoever (false-precision risk). Recommend the chapter present progression logic as primary, numbers as explicitly illustrative.
- **FLAG (G-4) — SAILD author list not captured** in research results (paywalled abstract; likely Hong Kong-based team — possibly Jiahong Su / Weipeng Yang or similar, who publish in this exact niche — DO NOT GUESS in the chapter; pull the citation from the DOI at drafting). Also carry the knowledge/ethics/attitudes-significant vs. skills-qualitative precision note into the Evidence Box.
- **FLAG (G-5) — SAILD is single-study, single-context, pre/post:** the chapter opening's enthusiasm must be tempered by the Evidence Box (same discipline as the cognitive-debt single-source flag in Ch. 2).
- **FLAG (G-6) — "Appropriate reliance calibrated to learning objective"** (vs. accuracy-calibrated reliance) is the book's own synthesis extending the HCI literature — label as the book's framing, not an established research construct.
- **FLAG (G-7) — AILit Framework final version:** review draft May 2025, final expected 2026 — check publication status at drafting; if final is out, update structure description (domains/competencies may have shifted from the draft).
- **GAP — No experimental evidence anywhere on age-calibrated AI exposure** (the chapter should say this plainly — it is the Ch. 13 instance of the durability gap). The nearest evidence is observational (Common Sense surveys) and inferential (developmental psychology).
- **GAP — No comparative study of literacy-through-design vs. direct instruction** for AI literacy; SAILD has no direct-instruction comparison arm.
- **FLAG (G-8) — Common Sense Media dates/details** (AI toys assessment Jan 2026; teen survey "nearly 3 in 4") taken from press-release search results; verify exact figures and dates against the PDFs before print.
