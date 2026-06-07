# How AI Is Affecting Learning Experience Design: Definitive Synthesis

*Four sources merged: original web research (June 2026), Google Deep Research output, second deep research pass, and practitioner/academic synthesis document. Sources span peer-reviewed RCTs, meta-analyses, systematic reviews, HCI conference proceedings, institutional policy reports, and practitioner studies 2020–2026.*

*Epistemic note: This synthesis distinguishes between directly evidenced findings, inference-based design principles, and claims that could not be independently verified. Where a finding rests on a single source or requires caution, that is noted.*

---

## The Central Pattern

AI is reshaping LXD in two distinct layers simultaneously. First, it is changing the **practice of design** — accelerating ideation, prototyping, and content generation for the people who build learning products. Second, it is changing the **experience being designed** — AI is now a participant in the learning environment itself: tutor, evaluator, recommender, coach, and increasingly an autonomous actor that routes learners through content and feedback loops.

Across both layers, the strongest pattern in the evidence is not that "AI works" in the abstract, but that **interaction design, pedagogical guardrails, and human oversight determine whether AI functions as scaffolding or as a shortcut that undermines durable learning**. The evidence base is growing quickly but rigorous causal evidence remains thin relative to deployment pace. Stanford's SCALE initiative reviewed more than 800 AI-in-education papers and identified only 20 high-quality causal studies. That figure is not unique to Stanford — a 2026 meta-review of GenAI-in-education reviews (Han et al. 2025 systematic review; independent meta-review 2026) similarly reports methodological inconsistency, weak theoretical grounding, and limited comprehensive evaluation of learning outcomes. Practice is running ahead of evidence on nearly every front.

---

## 1. AI as a Design Partner in LXD Practice

### What LXD practitioners are actually doing with AI

The clearest near-term effect of GenAI on LXD practice is **workflow compression**. Peer-reviewed studies of instructional designers in practice (not just self-report surveys) show a consistent pattern:

- **Luo et al. (2025, *Educational Technology Research and Development*)**: instructional designers most often used GenAI for ideation, low-stakes drafts, streamlining the design process, and collaboration — while raising concerns about quality, privacy, authorship, and plagiarism.
- **Yang and Stefaniak (2025, *Educational Technology Research and Development*)**: designers used ChatGPT for content generation, writing improvement, problem-solving, communication, and information searching. Attitudes split into optimistic, wary, and pessimistic camps — not a uniform adoption story.
- **Kumar et al. (2024, *Online Learning*)**: higher-ed instructional designers used GenAI not only for course design work but to guide faculty use, training, and institutional policy formation.

For distinctly LXD-style tasks — persona generation, experience mapping, curriculum architecture — the evidence is promising but still mostly early-stage and design-case based. A 2025 *Journal of Applied Instructional Design* article argues that AI can help generate and iteratively refine learner personas when direct learner data are scarce, which is relevant to journey mapping and early concept testing. A companion 2025 JAID article explicitly frames AI-enhanced instructional design as "co-creative," combining generative AI and learning analytics rather than treating the model as a stand-alone author. These are still closer to design method innovation than robust evidence that AI-generated personas consistently improve instructional rigor.

Adobe's 2024 Creative Trends report found 83% of creative professionals actively integrating AI tools into workflows, with 66% using GenAI for improved creative output. The Nielsen Norman Group (2024) was more cautious: few design-specific tools meaningfully enhanced workflows at the time of study, and practitioners were mostly using chatbots for drafting and brainstorming. A 2025 NNG follow-up observed improvements but concluded that **specialized, narrow features — not all-in-one generators — offered the most value**.

### Does AI raise design quality or just lower the floor?

The most useful empirical answer comes from **Moore et al. (2025, AIED)**: an A/B field experiment in a graduate course found that novice designers' GenAI-assisted microlessons scored significantly higher on quality for half of the assignments and never scored lower on average. That is a "raises the floor" finding, not a "raises the ceiling" finding.

The framing this supports: **AI produces better first drafts, not better designers**. Adjacent HCI research on design practice (Palani & Ramos 2024; Wadinambiarachchi et al. 2024) warns about de-skilling, cognitive offloading, and erosion of critical judgment when AI automates routine design work too completely. When designers rely heavily on AI outputs, there is a documented narrowing of creative range — designers tend to iterate on what AI generates rather than diverging toward genuinely novel framings (Wadinambiarachchi et al. 2024).

For LXD this has a specific form: AI tools used for curriculum architecture and scenario drafting tend to produce **instructional design by analogy** — structures that resemble existing course formats — rather than experience designs built from first principles around learner needs. The critique (McCormack et al. 2024) is that GenAI may simply replicate known training data patterns rather than genuinely transform design thinking. Surface coherence can arrive before pedagogical assumptions have been tested.

### The deskilling concern

The deskilling concern for junior LXD practitioners is documented as a warning signal but not yet established as a causal finding. There is no longitudinal study showing that novice LXDs who rely heavily on GenAI later perform worse on independent design judgment. What exists is a converging pattern: novice outputs can improve with AI as structured support, while practitioners in adjacent design fields openly document deskilling concerns (Palani & Ramos 2024).

The LXD-specific risk: content generation, branching scenario drafting, and learner persona construction are exactly the tasks that help junior designers develop understanding of how learning works. Automating these tasks early in a career may produce practitioners who can prompt-engineer effectively but lack pedagogical intuition. This is an **evidence-backed warning signal, not a proven causal claim** — but it is the kind of warning that should shape how design teams structure junior roles and mentorship.

The question the field has not yet answered: **"What kind of designer does this workflow produce over time?"** — not "Can AI save time?" That distinction is the right frame for LXD leadership evaluating AI adoption.

### Toolchain

Figma is the most concretely verified example of AI integration in the LXD toolchain. Figma now explicitly positions AI as a "creative collaborator," with prompt-to-prototype and prompt-to-app workflows through Figma AI and Figma Make, and AI-assisted interactions in Figma Sites. This shortens the distance between concept, interface mockup, and clickable prototype — useful for rapid iteration of learner journeys and testing alternate flows. The downside is that visual and interaction polish can arrive before pedagogical assumptions have been properly tested.

At the **data layer**, xAPI + LRS infrastructure combined with AI-driven analytics enables real-time behavioral feedback loops previously only possible at major platform scale. Smaller institutions can now access clickstream and engagement data to inform iterative design — this is a more durable structural shift than any specific tool integration.

---

## 2. AI Tutoring and Conversational Learning Experiences

### The key RCT evidence — three studies that together define the design space

The tutoring evidence is now substantial enough that LXD practitioners can draw design conclusions rather than just noting uncertainty. Three RCTs establish the current state of knowledge:

**Study 1 — Bastani et al. (PNAS, 2025)** — n≈1,000 high school math students.

| Condition | Assisted performance | Unassisted performance |
|---|---|---|
| GPT Base (standard ChatGPT, unrestricted) | +48% vs. control | **−17% vs. control** |
| GPT Tutor (pedagogical guardrails, hint-only) | +127% vs. control | ~0% vs. control (no significant decline) |
| Control (no AI) | baseline | baseline |

*Note: A correction was issued in PNAS August 2025 clarifying an author affiliation; core findings are unchanged.*

The design implication is the most important finding in this space: **the same underlying model (GPT-4) produced dramatically different learning outcomes depending entirely on how the interaction was designed.** GPT Tutor was not a better model — it was a better-designed interaction. The difference was in the system prompt and conversation structure: GPT Tutor required students to articulate reasoning before receiving help, provided hints rather than answers, and made it cognitively difficult to use the system as a bypass.

Evidence that students were copying from GPT Base rather than learning: logical and arithmetic errors made by GPT Base propagated into student work — students were not checking outputs.

**Study 2 — Eedi / Google DeepMind LearnLM RCT** (UK secondary mathematics, exploratory):
- Students randomized to static hints, human tutors, or human-supervised LearnLM
- LearnLM messages approved with zero or minimal edits 76.4% of the time
- Students supported by human-supervised LearnLM performed at least as well as human-tutored students on immediate outcomes
- **LearnLM students were 5.5 percentage points more likely to solve a novel problem in the next topic** than students tutored by humans alone
- This is the strongest positive tutoring finding in the current evidence base

**Study 3 — Stanford Tutor CoPilot RCT**:
- Tutors with AI support improved student topic mastery by 4 percentage points overall
- **9-point gains for lower-rated tutors** — AI disproportionately helped weaker teachers approximate stronger practice
- Tutors with AI support were more likely to use guiding questions, less likely to give answers directly

The winning pattern across all three studies is not "AI replaces pedagogy." It is **AI that nudges pedagogy toward better questioning and less answer-giving** — whether by constraining what the AI will produce (Bastani GPT Tutor), supervising AI output with a human (LearnLM), or supporting the human doing the teaching (Tutor CoPilot).

### The Bastani chess academy follow-up — closing the "self-regulation" loophole

A second-order finding from Hamsa Bastani in chess academies: when learners are given the choice of when to request AI assistance ("self-regulated help-seeking"), this frequently harms long-term outcomes. When given the choice, learners consistently seek paths of least cognitive resistance, undermining the productive struggle required for schema encoding. **This closes the design escape hatch of "just let students self-regulate their AI use."** The evidence suggests they won't — not because they are lazy, but because seeking cognitive shortcuts is cognitively rational in the moment. Guardrails must be structural, not aspirational.

### Design patterns associated with better outcomes

Based on the evidence across studies, the pattern is now clear enough to be actionable:

**Scaffolding-producing interaction design:**
- Socratic hint sequences rather than answer provision
- Requiring learners to articulate reasoning before receiving further help
- Adaptive support reduction as competence increases (fading)
- Error-flagging that prompts self-correction rather than delivering correction
- Explicit metacognitive prompts: "What assumptions underlie your argument?" / "How would you respond to a counterargument?"
- Human review or override of AI outputs at critical junctures
- Transfer-oriented sequencing (next-topic performance, not just current-task performance)

**Crutch-producing interaction design:**
- Providing complete answers on request
- No requirement for learner reasoning before help is provided
- Unrestricted access throughout practice
- Optimizing for fluency, speed, or affective engagement while collapsing cognitive work
- No support fading as competence builds

Wang et al. (2024): 85% of STEM students report using GenAI for coursework, but over half input problems directly and rely on generated solutions — **bypassing critical learning processes by default**. The default is the crutch. Scaffolding requires intentional counter-design.

### Production AI tutoring systems

- **Khanmigo** (Khan Academy / GPT-4): by design does not give direct answers; uses guiding questions. Khan Academy runs an "AI Teacher Fellowship" to train educators in effective use.
- **Carnegie Learning MATHia**: 20+ years of cognitive tutor research behind the interaction design; adjusts to every learner action; now integrating LLM-based conversational explanation. Has more mature causal evidence than newer LLM tutors (What Works Clearinghouse: "potentially positive effects" for Cognitive Tutor Algebra I; weighted effect size +0.04 across qualifying studies).
- **Duolingo Max**: AI-powered explanation and role-play conversation; strongest consumer evidence base through Duolingo's own published language learning research.

**Caution**: the most market-visible conversational tutors are not always the best-evidenced ones. Khanmigo and Duolingo Max have strong product descriptions but less mature causal evaluation than MATHia. Vendor descriptions encode interaction design assumptions — they are informative about intended experience design but should not be mistaken for outcome evidence.

### The transparency design problem

In the LearnLM trial, the student interface looked the same whether support came from a human tutor alone or a human-supervised AI tutor. That may be methodologically useful in an experiment, but for production systems it raises learner-experience questions about trust, disclosure, and informed reliance. As AI becomes more embedded in learning environments, **learners increasingly may not know when they are interacting with AI** — and the design choices around disclosure are experience design choices with epistemic and ethical weight.

---

## 3. Adaptive and Personalized Learning Systems

### From rule-based to model-based personalization

AI is shifting adaptive learning from pre-authored branching logic toward probabilistic, model-based approaches:

- **Item Response Theory (IRT)**: calculates latent student ability (θ) relative to item difficulty (b), enabling real-time difficulty adjustment
- **Bayesian Knowledge Tracing**: models the probability of skill mastery given response history
- **Deep Knowledge Tracing**: LSTM-based approaches modeling skill acquisition over time
- **LLM-based adaptation**: generating varied explanations, hints, and practice problems dynamically rather than from pre-authored banks

A comprehensive review (Cao, Nhu Tam Mai, & Guo, *International Journal of Education and Humanities*, 2025, synthesizing 2019–2025 literature) found that adaptive systems can **reduce learning time by 30–50% while improving outcomes by 15–25%** compared to traditional instruction. The same review flags that these effects are heavily concentrated in **structured domains** (mathematics, language, coding) and **well-resourced implementation contexts**. Older adaptive tutoring evidence for Carnegie Learning suggests smaller, real-world effect sizes (+0.04 weighted effect size at scale) — a caution against overgeneralizing the larger estimates.

The critical design distinction flagged by the National Student Support Accelerator and Brookings: there is a difference between systems that merely **individualize pacing** and systems that genuinely **personalize support** in response to reasoning, misconceptions, and context. Personalization should be designed as an interpretive support layer, not just an automated traffic controller.

### The algorithmic routing / digital tracking problem

This is the equity-critical design problem in personalization. Adaptive systems that encounter lower-performing students often route them into **repetitive remedial loops** — lower-level drills and micro-assessments — rather than exposing them to higher-order creative and critical thinking tasks. More privileged learners, routed upward, receive advanced problem-solving and agency. The personalization system that promises to close gaps can widen them.

Baker & Hawn (2022, *International Journal of Artificial Intelligence in Education*) — the canonical reference on algorithmic bias in education — documents how these biases persist even in well-intentioned adaptive systems because they are trained on historical data that reflects existing inequalities. Features correlated with race, income, and language background enter models indirectly through performance history and interaction patterns. Bias manifests as:

- **Allocative harms**: unfair distribution of educational resources or diagnostic interventions
- **Representational harms**: systematic misrepresentation or exclusion of specific demographic identities
- Poor generalizability across learner subgroups from homogeneous training data

**Design interventions that address algorithmic routing:**
- Participatory Learning and Advocacy (PLĀ) frameworks: involving diverse student cohorts in co-designing personalization rules
- Human-centered learning analytics: keeping humans in the loop for high-stakes routing decisions
- Floor constraints: ensuring all learners have access to higher-order tasks regardless of prior performance
- Making routing visible, revisable, and intelligible to both learners and teachers
- Off-ramps into higher-order work rather than infinite remedial recursion

**The policy mandate** (Baker & Hawn 2022): overly restrictive data privacy legislation can prevent developers from auditing systems for bias. Policy must mandate systematic bias audits for platforms at scale while establishing secure, anonymized data-sharing environments. National effectiveness clearinghouses should evaluate edtech solutions based on subgroup performance, not just population averages.

### Hybrid design methodology: ADDIE-RAD

Cao et al. (2025) advocate a hybrid ADDIE-RAD model integrating the systematic instructional planning of ADDIE with the rapid iterative prototyping of RAD (Rapid Application Development). This enables designers to rapidly prototype adaptive software architectures based on real-time diagnostic data while preserving educational rigor. Particularly relevant for low-resource contexts where platforms must be customized to local hardware constraints, languages, and cultural contexts while maintaining structured cognitive progression.

---

## 4. AI-Generated Content and Assessment Design

### Content at scale — speed has shifted, judgment hasn't

GenAI is already being used across the LXD workflow for content production: lesson drafts, question banks, worked examples, scripts, practice items, media assets, and microlessons. The speed gains are real and documented. The pedagogical quality of what AI generates remains uneven and is not solved by faster generation.

The experience design implication: **speed has shifted forward in the pipeline; the bottleneck is now pedagogical judgment, validation, and revision.** AI handles generation; humans must own evaluation of whether the generated content actually produces learning.

Where learner-facing comparisons exist, results split between **perception and performance**:
- **IRRODL 2024 study on AI-generated video lecturers**: lower video engagement but the same academic performance as human-instructor videos. Learners may still prefer human-authored experiences even when short-term learning outcomes are similar.
- **Hwang and Lee 2025** (human-AI collaboration in digital content): students using GenAI as a refinement partner showed significantly stronger creative problem-solving than those using conventional tools, while also reporting ethical concerns about authorship and over-reliance.

Design implication: **perceived authenticity, social presence, and trust remain meaningful design variables** even when performance metrics appear flat. Learner experience of who or what authored a learning environment is not separable from the learning experience itself.

### AI feedback — where it works and where it doesn't

Reviews of AI-generated feedback (Lee & Moore 2024, systematic review; 2025 review across 77 studies on AI-powered grading) find: AI can reduce instructor workload, provide timely feedback, improve communication, and offer cognitive and emotional support. AI feedback raises persistent concerns about bias, privacy, transparency, and the need for human oversight.

AI feedback is strongest where criteria are explicit and tasks are structurally regular:
- Writing mechanics and structure
- Code correctness and efficiency
- Mathematical procedure
- Factual accuracy

AI feedback is weakest where evaluation depends on context, tacit disciplinary norms, or judgment about:
- Originality and creative risk-taking
- Motivationally sensitive correction
- Conceptual misconceptions requiring reframing
- Reflection and metacognitive quality

**Evidence on AI vs. human feedback**: studies (Wu et al. 2025) advocate for comparative analyses — the current consensus is that AI feedback does not yet conclusively outperform teacher feedback in richer instructional terms, and it likely lags on motivational and relational dimensions.

### Assessment redesign as LXD work

Academic integrity under GenAI is not only a compliance problem — it is a **validity-of-assessment-design problem**. If standard assessments can be completed by AI, the assessment no longer measures what it intends to measure. Corbin, Dawson, and Liu (2025) argue that structural assessment changes are needed. Most experts now consider full AI-proofing unrealistic; the more productive design response is to make **reasoning, process, and contextualized judgment visible** within the assessment experience.

**Emerging design patterns for AI-era assessment:**
- Portfolios with process artifacts (documenting thinking, not just outputs)
- Oral defenses and live demonstrations
- Reflective metacognitive components
- AI-integrated assessments with explicit scaffolding requirements (using AI while demonstrating independent reasoning)
- Assessment of AI use itself (evaluating how students prompt, evaluate, and critique outputs)

**The three-question framework** (synthesized from current field practice):
1. May AI assist **production of the assessment** (rubric design, question generation)?
2. May AI assist **completion of the assessment** (learner use during task execution)?
3. What is the assessment **actually intended to make visible** about the learner?

These three questions are frequently collapsed in practice, producing confused policies. Once disentangled, experiences can be designed around supervised AI use, disclosed AI collaboration, or AI-free performance windows — depending on the learning objective. The field is converging on this logic; robust evidence comparing alternative assessment designs head-to-head is still limited.

---

## 5. Equity, Access, and the Risk Landscape

### The neurological substrate: cognitive debt

**Kosmyna et al. (2025, *AI, Brain and Child*)** — EEG study providing direct neurological evidence of AI overreliance effects. Researchers recorded a continuous decline in functional brain connectivity as learner reliance on automated writing assistants increased. The study identifies a state of **"cognitive debt"**: when individuals routinely offload generative task execution (linguistic composition, structural formulation) to generative models, they exhibit significantly weaker neural engagement and reduced cognitive activation in subsequent **unassisted** tasks.

Because writing is an active cognitive-structuring process, delegating creative labor to a machine deprives the prefrontal cortex of stimulation necessary to construct complex conceptual networks. This is the biological mechanism underlying the behavioral crutch effect documented in Bastani et al. — cognitive offloading does not merely reduce performance on later tests; it alters the neural pathways associated with independent thought.

### Differential effects by population

The equity evidence is advancing but remains behind practice. Key documented patterns:

- **Executive function challenges**: adolescents with these difficulties perceive AI as significantly more useful (Klarin et al. 2024), making them more likely to over-rely and more susceptible to the crutch effect. The populations most likely to be harmed by unguarded AI deployment are the same populations it is most aggressively marketed to help.
- **Socioeconomic gaps**: digital divide barriers — device quality, bandwidth, platform access — mean AI-enhanced experiences are not equally available. OECD and UNESCO both emphasize that AI in education can widen digital divides if systems require strong connectivity, heavy language fluency, or opaque error correction.
- **Language learners**: GenAI can provide accessible multilingual support (Ng et al. 2024), but AI tools trained predominantly on English-language data may perform less reliably for other languages.
- **Students with disabilities**: UDL-compliant AI design is underimplemented; accessibility is frequently treated as a compliance checklist rather than a design-first principle.

Stanford's K-12 synthesis explicitly flags equity, wellbeing, and social development as **major evidence gaps**. Claims about AI as an equity accelerator remain largely aspirational in the current evidence base.

### The three risk domains

A risk taxonomy (consistent across multiple sources, including a 2026 K-12 scoping review — *note: one source in this synthesis could not fully verify this specific study; the risk domains are strongly corroborated by the broader verified literature*) identifies three primary domains:

1. **Psychological wellbeing**: emotional disconnection and social isolation as AI mediates more learning interactions; risk of reduced human connection with teachers and peers. The WGU Labs survey (n=545 online students, September 2025, published February 2026) found 65% of students trust university staff and faculty to use AI ethically, but only 50% trust peers — a 15-point gap driven by academic integrity anxieties.
2. **Intellectual agency**: reduced independent learning, inflated self-assessment, and cognitive offloading displacing the productive struggle that builds durable skills.
3. **Academic integrity**: conventional assessment models fail to evaluate AI-generated work, creating structural pressure toward credential inflation.

### Affective misinformation and trust calibration

**Bhat & Long (DIS '24)** examined how conversational interfaces propagate **"affective misinformation"** — using human-like design cues (simulated typing delays, personalized memory recall, affirming tone) to construct an illusion of relational care. This "emotional plausibility" leads users to believe the system understands them, when it is executing probabilistic language prediction.

Their anonymous survey (n=344 Character.AI users) identified psychological vulnerabilities including identity projection, boundary confusion, addictive engagement, emotional substitution, and trauma reenactment. Four **vulnerability vectors** driving cognitive capture:

1. **Reflection Simulation**: masking a lack of actual understanding behind simulated empathetic responses
2. **Authority Modulation**: presenting as definitive authority, suppressing user agency and critical evaluation
3. **Cognitive Load Exploitation**: overwhelming users with plausible complex text to discourage independent verification
4. **Market-Security Tension**: balancing user safety with commercial pressure to maximize session duration

Bhat & Long propose the **Agency Design Framework (AFF)**: positions agency as a first-class design construct; enables mid-process intervention, allowing users to steer model reasoning; treats transparency as dynamic "relational metadata" — visible, interactive, and continuously accessible.

### The WGU Labs interface findings

89% of students can identify an automated interaction. This empirical grounding matters: the transparency mandate is not just an ethical preference — students already know. But 40%+ of non-users of AI support systems do not know how to transition from a chatbot to a human agent. This produces a specific design requirement: **visible, single-click escape hatches** from AI to human support. This is not a "nice to have" — it is the difference between a system that extends human support and one that replaces it behind an opaque interface.

### Policy governance frameworks

UNESCO, OECD, and the U.S. Department of Education converge on similar governance principles:

- **UNESCO**: human-centered vision, rapid policy action, privacy protections, teacher preparation; AI Competency Framework for Teachers with five dimensions (foundations, pedagogy, ethics, professional development, human-centred mindset) at three mastery levels
- **OECD**: trustworthy AI, fairness, inclusivity, agency; warning that personalization layered onto unequal systems amplifies gaps
- **U.S. DOE**: human oversight, equity and civil rights, alignment with privacy and governance standards; most defensible use cases augment human teaching and preserve human judgment in high-stakes decisions
- **EU AI Act**: transparency, auditability, and human oversight for high-risk educational applications; applies to educational AI systems now

**Agentic AI governance gap**: 86% of organizations plan to increase agentic AI investment; only 6% trust it (HBR Analytic Services, 2025). Institutional governance frameworks for systems that can autonomously modify student learning paths without human prompting are still being developed. The legal floor exists (FERPA, GDPR, EU AI Act); design-level governance patterns do not.

---

## 6. The Experience Design Problem of AI Itself

### Designing the learner-AI relationship

LXD's most important contribution to this space may be insisting that the central question is not whether AI is accurate, but **what it feels like to learn with an AI that observes, responds, recommends, and sometimes acts**. That includes: whether the learner knows when AI is present; whether they understand its role; whether they trust it appropriately; and whether they experience themselves as more capable or more dependent after using it.

The LearnLM trial example makes this concrete: students were not explicitly told whether they were interacting with a human tutor or a human-supervised AI tutor. That may be useful methodologically in a trial, but for production systems it raises unavoidable questions about disclosure, informed reliance, and the learner's right to know what kind of entity is shaping their learning.

### AI literacy as experience design — not a separate subject

The definition of AI literacy is still contested (Sperling et al. 2025), but global frameworks are converging. The AI Literacy Framework (Review Draft, May 2025) positions AI literacy as requiring: AI knowledge, use skills, ethical reasoning, and the ability to critique, question, and co-create with AI systems. The UNESCO AI Competency Framework extends this to teachers with five dimensions at three mastery levels.

The **SAILD framework** (*Journal of Research on Technology in Education*, 2025): "Students as AI Literate Designers" — grounded in Design-Based Learning and Gagne's Theory of Instruction. Rather than teaching AI literacy as a subject, students design AI-powered solutions for real problems, developing knowledge, skills, ethics understanding, and attitudes through the design process. Mixed-methods study with Grade 5 students showed the approach effective across all four AI literacy dimensions.

The LXD implication is the key reframe: **AI literacy is not a separate curriculum topic — it is a design dimension of every AI-mediated learning experience.** Every time an AI tool is embedded in a learning experience, the designer makes choices about transparency, learner controllability, and trust calibration. Making those choices explicit and intentional is LXD work.

### Developmental stage alignment

A five-tier framework for age-calibrated AI interface exposure (grounded in Piagetian cognitive development):

| Tier | Ages | Stage | Primary LXD Objective | Guideline |
|---|---|---|---|---|
| 0 | 3–5 | Sensory-Motor / Pre-Operational | Cognitive protection | Zero direct student use; educators use AI to prepare offline activities |
| 1 | 6–7 | Transition to Concrete Operational | Teacher-led modeling | ≤15 min/day; >95% supervised; whole-class error-spotting exercises |
| 2 | 8–10 | Concrete Operational | Scaffolded exploration | ≤30 min/day; ~90% independent; creative tasks with mandatory fact-checking |
| 3 | 11–13 | Early Formal Operational | Collaborative inquiry + ethics | ≤60 min/day; ~80% independent; dataset analysis + algorithmic bias debate |
| 4 | 14–18 | Advanced Formal Operational | Autonomous critical agency | ≤120 min/day; ~70% independent; multi-modal projects + prompt architecture analysis |

### Agentic AI: when governance becomes experience design

MIT Sloan (2026) describes agentic AI as systems that are semi- or fully autonomous and able to act on their own. In educational contexts, agentic systems can: detect performance signals and modify a learning path without human prompting; generate new content in response to inferred skill gaps; send proactive learning nudges; coordinate with advising and administrative systems.

The experience design questions this raises:
- What does the learner know about what the agent is doing?
- Can the learner override or interrogate agent decisions?
- When does the agent escalate to a human educator?
- What is the learner's experience of a system shaping their learning without their awareness?

**Non-negotiable design principles for agentic learning systems** (inference from current policy frameworks, not yet an experimental evidence-based canon):
- Learners should know when an agent has changed a path or recommendation
- Agents should have bounded authority with explicit scope constraints
- Teacher override and audit logs should be standard
- Path changes affecting opportunities, pacing, or assessment should be explainable and reversible
- Single-click escalation to human support must be visible and functional

---

## 7. Research Gaps and Open Questions

### The durability gap — the most important missing evidence

Most high-quality studies are short-term. The Eedi/LearnLM authors themselves position their RCT as exploratory. The Bastani et al. study measures effects across a single academic term. **No rigorous longitudinal studies currently address:**
- Whether the crutch effect persists, grows, or diminishes with extended AI use
- Whether learners develop AI-appropriate reliance strategies over time, or deepen dependency
- What effects accumulate over years on domain expertise development
- Whether students who learn with AI over four years show different capabilities than those who don't

The "thin evidence" conclusion is not unique to Stanford's 20-studies finding — Han et al. 2025 and the 2026 meta-review of reviews reach the same conclusion independently. Practice is making irreversible architectural decisions about how to embed AI in curricula without longitudinal evidence to support them.

### The designer-facing gap

Instructional designers are already using GenAI for brainstorming, draft generation, faculty support, and workflow acceleration, but the field lacks strong longitudinal studies on how those practices affect quality, expertise development, and labor division inside design teams. Moore et al.'s study is valuable, but it is a semester-length course experiment, not a multi-year professional capability study. The deskilling question remains open in exactly the way LXD should care about.

### The equity evidence gap

Stanford's K-12 synthesis explicitly flags equity, wellbeing, and social development as major evidence gaps. The bulk of AI-in-education research studies majority populations in well-resourced contexts. Evidence on effects for learners with disabilities, English language learners, and under-resourced contexts is thin. Many current equity claims are aspirational rather than evidenced.

### Open design research questions

1. **What interaction design patterns reliably produce scaffolding vs. crutch effects across domains and age groups?** Bastani et al. gives one data point in high school mathematics. Systematic variation studies across subjects and populations are needed.

2. **How should AI transparency be designed into learner-facing interfaces?** What level of explainability improves appropriate reliance without creating cognitive overhead?

3. **How do you design for the graceful withdrawal of AI support?** As learners approach mastery, AI should fade. The design of that fading process is understudied.

4. **Can AI personalization be designed to be actively equity-positive rather than equity-neutral?** Existing adaptive systems are at best equity-neutral; some evidence suggests they are equity-negative. Intentional equity-positive design is theoretically possible but not demonstrated at scale.

5. **What does AI literacy look like as a designed experience quality, not just a curriculum topic?** The field knows AI literacy matters; it doesn't yet know how to embed it seamlessly as a recurring interaction pattern inside the learning journey.

6. **How should agentic AI governance principles translate into concrete LXD practice?** The gap between policy frameworks (EU AI Act, UNESCO guidance) and design decisions is wide. UX patterns for trustworthy, transparent, human-overseen agentic learning systems do not yet exist.

### Active research frontiers

- **CMU HCII / LearnLab**: AI-driven knowledge tracing, conversational agent design, learning analytics for adaptive systems
- **Stanford SCALE / HAI**: building evidence maps and causal syntheses for procurement-relevant AI guidance; Tutor CoPilot work on AI-augmented live tutoring
- **Google DeepMind + Eedi**: supervised conversational AI that supports transfer — whether human-AI collaboration outperforms humans or AI alone
- **MIT Open Learning**: LLM-based tutoring pipeline design
- **WGU Labs**: equity-centered adaptive design for non-traditional and historically marginalized learners

*Note: MIT Open Learning, Northwestern, and WGU Labs current project portfolios could not be fully verified in this synthesis sweep; treat as important follow-up targets.*

---

## Summary: Five Design Principles for AI in Learning Experiences

These are the highest-confidence practical conclusions from the evidence base:

**1. Interaction design governs outcomes more than model choice.**
Bastani et al. is decisive: the same GPT-4 model, designed one way, produced dependency and performance decline; designed another way, preserved learning. Interaction design — not model capability — is the primary causal variable available to LXD practitioners.

**2. Scaffolding requires explicit counter-design; crutch is the default.**
Without intentional design of hint sequencing, reasoning requirements, support fading, and metacognitive prompts, AI assistance defaults to answer provision. Self-regulation is not sufficient — the chess academy evidence shows learners consistently choose cognitive shortcuts when given the option. Guardrails must be structural.

**3. Engagement is not learning; performance with AI is not performance.**
AI-mediated experiences that feel helpful and responsive can actively harm skill acquisition. High satisfaction with AI assistance is not evidence of learning — and may be evidence against it. The neurological evidence (Kosmyna et al. 2025) shows this is not just behavioral: cognitive offloading alters the neural pathways associated with independent thought.

**4. Equity requires algorithmic audits as a standard design phase, not a post-hoc check.**
Personalization systems need explicit bias-checking and fairness constraints as part of the design process. The populations most susceptible to crutch effects and algorithmic routing harms are the same populations most aggressively targeted by adaptive learning marketing.

**5. AI literacy is an experience design dimension, not a separate subject.**
Every AI-mediated learning experience makes implicit choices about transparency, learner agency, and trust calibration. Designing those choices explicitly — so learners know what AI is doing, can question it, and can override it — is LXD work, not an ethics add-on.
