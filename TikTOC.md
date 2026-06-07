# AI for Learning Experience Design
## Scaffold or Crutch: Designing AI-Mediated Learning

**Working title:** AI for Learning Experience Design — Scaffold or Crutch: Designing AI-Mediated Learning
**Series:** Bear Brown & Company textbooks · Companion volume to *Experience Design for EdTech*
**Author:** Nik Bear Brown · bear@bearbrown.co · Bear Brown & Company
**Document:** Full TOC Draft — compiled from all phase outputs (silent mode)
**Version:** 1.0
**Status:** Pre-proposal — edition/update strategy unresolved (see Risk 5)
**Book directory:** books/ai-for-learning-experience-design

---

## Document structure

1. Book Concept and Thesis
2. Learner Profile
3. Book Type and Deployment Specification
4. Field Positioning
5. Three-Act Learning Arc
6. Prerequisite Map
7. Assessment Structure
8. Chapter-by-Chapter TOC
9. Chapter Anatomy Template
10. Case Study Strategy
11. Hard Topics, Contested Claims, Aging Risk
12. Market Positioning
13. Feature List
14. Out of Scope
15. Adoption Risk Register
16. Open Questions

---

# PART 1 — BOOK CONCEPT AND THESIS

## Book concept summary

> This book teaches **the design of AI-mediated learning experiences —
> the interaction design, guardrail design, transparency design, and
> evaluation design that determine whether AI functions as scaffolding
> or as a shortcut that undermines durable learning** — to **graduate
> students and working learning experience designers who already hold
> the core LXD toolkit**, by **converting the 2024–2026 causal
> evidence (the Bastani three-condition RCT, LearnLM, Tutor CoPilot,
> the cognitive-debt EEG findings, the algorithmic-routing literature)
> into named, teachable design patterns, applied weekly to one real
> AI integration the student carries through the course**. It fills
> the gap left by instructor-practice guides (Bowen & Watson),
> advocacy books (Khan), and policy frameworks (UNESCO, OECD), none
> of which teach the designer's layer. It succeeds if the reader can
> **specify a complete AI integration for a real learning experience
> — guardrails, transparency, fading, equity audit, and an evaluation
> plan keyed to unassisted performance — and defend every decision
> against the evidence, including correctly declining an AI feature
> the evidence says will become a crutch**.

**One-sentence logline:**
The same model, designed one way, damages learning; designed another
way, preserves it — this course teaches the designer to be the
difference.

## Central thesis

"This book argues that in AI-mediated learning, interaction design —
not model capability — is the primary causal variable available to
the designer: the identical model produced a 17% unassisted
performance deficit under one interaction design and no deficit under
another (Bastani et al. 2025), which means the scaffold/crutch
distinction is a design responsibility that cannot be delegated to
model vendors or to learner self-regulation (the chess-academy
evidence closes that escape hatch), and this matters because the
crutch is the default, the populations most at risk are the ones most
aggressively marketed to, and institutions are making irreversible
architectural decisions years ahead of the causal evidence."

## Thesis test

The TOC reflects the thesis at every act:

- ACT ONE: The student meets the three-condition RCT table before any
  design method — same model, opposite outcomes — then the behavioral
  (chess academy) and neurological (cognitive debt) mechanisms, then
  the evidence-state literacy to weigh every later claim. ✓
- ACT TWO: Every AI capability (design partnership, tutoring,
  adaptivity, content, feedback, assessment, trust interfaces) is
  taught as an interaction design problem with its scaffold pattern,
  its crutch default, and its equity failure mode named. ✓
- ACT THREE: The student designs for the conditions the field has
  not solved — agentic autonomy, AI literacy, developmental
  calibration — and evaluates against the only metric the thesis
  permits: what the learner can do when the AI is withdrawn. ✓

**Thesis test: PASS**

---

# PART 2 — LEARNER PROFILE

## Primary reader

A graduate student in a learning design / learning engineering /
educational technology program, or a working LX designer, who already
holds the core design toolkit — learner research, journey mapping,
prototyping, evaluation — and is now being asked, by an employer or a
curriculum, to "add AI."

**Specific person:** A learning experience designer eighteen months
into their first job, told last quarter to integrate an AI tutor into
the company's onboarding product. The vendor demo was impressive, the
pilot satisfaction scores were high, and they have just read that a
GPT tutor made students 17% worse. They need to know which of those
two facts describes their product — and realize they have no way to
tell.

## Prior knowledge assumed

- Core LXD process: learner research, journey mapping, prototyping,
  basic evaluation (the companion volume *Experience Design for
  EdTech*, or Dirksen-level equivalent)
- Effect-size and evidence literacy at the introductory level
  (re-established in Week 4 for readers entering cold)
- Hands-on familiarity with at least one LLM product as a user

## Prior knowledge NOT assumed

- Machine learning, statistics, or programming
- Knowledge tracing / psychometrics (IRT, BKT taught at
  design-literacy depth in Week 7)
- Policy or law background (EU AI Act, FERPA covered at
  design-implication depth only)
- Prompt engineering (taught where needed, never as the point)

## Prior misconceptions (what they think they know that is wrong)

1. "A better model means better learning" — the Bastani RCT shows the
   same model producing opposite outcomes under different interaction
   designs; model choice is not the causal lever
2. "Students will self-regulate their AI use" — the chess-academy
   follow-up shows learners reliably choose cognitive shortcuts when
   given the option; guardrails must be structural, not aspirational
3. "High engagement with the AI means it's working" — assisted
   performance (+48%) and unassisted performance (−17%) moved in
   opposite directions in the same condition
4. "Personalization helps struggling learners most" — algorithmic
   routing can lock lower-performing students into remedial loops
   while advancing privileged learners to higher-order work
5. "AI feedback is as good as teacher feedback" — strongest where
   criteria are explicit and tasks regular; lags on motivational,
   relational, and misconception-reframing dimensions
6. "The evidence supports current practice" — ~20 high-quality causal
   studies out of 800+ papers; practice is years ahead of evidence,
   and the book says so on page one

## Motivation type

Primarily professional: the reader is making (or about to make) real
AI integration decisions and is accountable for them. Secondarily
academic. The course honors the professional stake: the terminal
deliverable is a complete, defensible AI integration specification
for a real product or course.

## Prerequisite map

| Prerequisite | Safe to assume? | If not: where addressed |
|-------------|----------------|------------------------|
| Core LXD process | Probably (companion volume or equivalent) | Week 1 maps the assumed toolkit; instructor's manual includes a catch-up reading list |
| Effect-size / evidence literacy | Probably | Week 4 (primary re-instruction) |
| LLM products as a user | Yes | — |
| ML / statistics | No | Excluded — Week 7 teaches the design-literacy layer only |
| Policy / legal frameworks | No | Week 12 covers design implications only |
| Prompt engineering | No | Taught at point of use (Weeks 5–6) |

**Front-loading decision:** No Chapter 0 required. The one genuinely
load-bearing prerequisite — the core LXD process — is handled by
series design: this is the second course in a two-course sequence,
and the Week 1 toolkit map plus the instructor's manual reading list
covers readers entering cold. Logged as Risk 2.

---

# PART 3 — BOOK TYPE AND DEPLOYMENT SPECIFICATION

## Book type

**PRIMARY TYPE:** Course textbook — adopted for a semester, chapter =
week, read in sequence, with a design-lab project thread running the
full arc.

**NOT:** Practitioner handbook (the project thread and the
evidence-first Act One create sequence dependency — though Act Two
chapters are deliberately written to survive later reference use);
field-defining monograph (it carries a thesis but builds capability);
a prompt-engineering manual (tools and prompts are treated as the
fastest-aging layer and quarantined accordingly).

## Deployment specification

**Primary adoption context:**
Graduate LXD / learning engineering / educational technology programs
as the second course in a design sequence — the AI course that
METALS-profile and CAMD-profile programs are currently assembling
from papers and blog posts. 15-week semester, one chapter per week.

**Secondary adoption context:**
Corporate L&D and EdTech product teams making AI integration
decisions (Acts One and Two transfer best); graduate HCI electives
on human-AI interaction in learning contexts.

**What the book is NOT designed for:**
First course in design (prerequisites too high); ML/AI engineering
programs (no model-building); K-12 teacher preparation (the
developmental-calibration chapter informs but does not retrain);
policy programs (governance is covered as design material, not
policy analysis).

**How the TOC signals book type to a faculty reviewer:**
Fifteen chapters, one per week, explicit act labels, three milestone
assessments at act transitions, a project thread with weekly
deliverables, a terminal specification deliverable, and a visible
stable-core / current-state separation that answers the reviewer's
first question about an AI book: "won't this be obsolete in a year?"

---

# PART 4 — FIELD POSITIONING

## The positioning statement — consolidated

The competitive landscape has a hole exactly where this book sits:

- Bowen & Watson (*Teaching with AI*) serve instructors adapting
  their own teaching. This book serves designers building products
  and curricula for other people's learners.
- Khan (*Brave New Words*) makes the optimist's case. This book
  assumes no case and teaches the evidence — including the findings
  that cut against the optimism.
- Reich (*Failure to Disrupt*) made the skeptic's structural argument
  pre-GenAI. This book inherits the skepticism and converts it into
  design method for the technology Reich predates.
- UNESCO / OECD / US DOE frameworks state governance principles.
  This book translates principles into interaction design patterns —
  the layer the frameworks explicitly leave undone.
- The companion volume (*Experience Design for EdTech*) teaches the
  full design process with one AI chapter. This book IS that chapter
  at course depth: the AI layer practicum.

The gap this book fills: no course textbook teaches AI-mediated
learning as an interaction design discipline grounded in the
2024–2026 causal evidence, with named scaffold/crutch patterns,
equity audits as a standard design phase, and evaluation keyed to
unassisted performance.

## Positioning statements by competitor

**vs. Bowen & Watson, *Teaching with AI*:**
"Unlike *Teaching with AI*, which helps instructors adapt their own
courses and policies, this book trains designers who build AI-mediated
learning experiences for other people's learners — a design
discipline with specifications, audits, and evaluation plans, not a
teaching practice guide."

**vs. Khan, *Brave New Words*:**
"Unlike *Brave New Words*, which argues for AI's transformative
educational potential, this book teaches students to test that
potential against the causal evidence — including the RCT in which
an unguarded tutor made students 17% worse — and to design the
guardrails the optimistic case quietly assumes."

**vs. Reich, *Failure to Disrupt*:**
"Unlike *Failure to Disrupt*, which explains structurally why
education technology fails to scale, this book accepts the warning
and teaches the post-GenAI design layer Reich could not address —
what to build, and decline to build, when the technology arrives
anyway."

**vs. UNESCO / OECD / US DOE governance frameworks:**
"Unlike the governance frameworks, which converge on principles —
human oversight, transparency, equity — this book translates each
principle into interaction design patterns with evidence attached:
what oversight looks like as an interface, what transparency looks
like as relational metadata, what equity looks like as a routing
audit."

**vs. *Experience Design for EdTech* (companion volume):**
"This book is the AI-layer practicum. *Experience Design for EdTech*
is the design-process foundation. Together they constitute a complete
two-course LXD sequence: the first teaches evidence-disciplined
design; the second applies that discipline to the technology
currently breaking it."

---

# PART 5 — THREE-ACT LEARNING ARC

## The arc statement

This book takes the reader from **designer who can use AI tools but
cannot predict whether an AI integration will scaffold or undermine
learning** to **practitioner who can specify, audit, and evaluate a
complete AI integration — guardrails, transparency, fading, equity,
and unassisted-performance evaluation — for a real learning
experience** by first establishing that interaction design is the
causal variable and teaching the mechanisms and the evidence state
(Act One), then building the design pattern catalog one AI capability
at a time with the crutch default and equity failure mode named at
each step (Act Two), then designing for the unsolved conditions —
agentic autonomy, AI literacy, developmental calibration — and
evaluating honestly (Act Three).

## The pebble-in-the-pond opening

Week 1 opens with one table: three conditions, same model. GPT Base —
+48% assisted, −17% unassisted. GPT Tutor — +127% assisted, no
deficit. Control. The student is asked to explain the table and
cannot — the difference is invisible at the level of model and
visible only at the level of interaction design, which is the entire
course in one artifact. By Week 2 the student has chosen their
design-lab project: one real AI integration (their employer's, a
product they know, or the instructor's case) carried through all
fifteen weeks.

## Act One — Establish (Weeks 1–4)

**Starting state:** The student evaluates AI integrations by model
quality, feature lists, and engagement metrics.
**Ending state:** The student can explain the crutch effect
behaviorally (shortcut-seeking is rational in the moment) and
neurologically (cognitive debt), name the scaffold-producing
interaction patterns, and weigh any AI-in-education claim against
the thinness of the causal evidence.
**Inciting question:** "The same model made learners better AND
worse. What, exactly, was the difference — and would I have caught
it in my own product?"
**Act One → Act Two transition:** Given an unfamiliar AI learning
product, the student can classify its interaction design as
scaffold-leaning or crutch-leaning, citing specific design features
and the evidence each one implicates.

## Act Two — Build (Weeks 5–11)

**Starting state:** The student can diagnose but not yet design.
**Ending state:** The student has produced, for their design-lab
project: an AI-in-practice workflow decision, a tutoring interaction
spec, an adaptivity decision, a routing equity audit, content and
feedback boundaries, an assessment redesign, and a transparency/trust
spec — assembled at Week 11 into a complete guardrail specification.
**Hardest conceptual moment:** Week 8 (Algorithmic Routing) — the
student must accept that a system can be individually adaptive and
collectively unjust, and that the audit is a design phase, not a
compliance afterthought.
**Act Two → Act Three transition:** The student has a guardrail
specification and can state, for every AI touchpoint in their
project, what the AI may do, what it is forbidden to do, how support
fades, and what the learner is told.

## Act Three — Apply (Weeks 12–15)

**Starting state:** The student has specified a supervised,
transparent AI integration.
**Ending state:** The student can extend the specification to agentic
systems (bounded authority, reversibility, escalation), design the
learner's side (AI literacy as an experience dimension, developmental
calibration), and produce an evaluation plan whose primary endpoint
is unassisted performance — with a qualified conclusion in two
registers.
**The transfer test:** The final specification is for a real product
or course. For most students the transfer happens before the
semester ends — several will be implementing their specification at
work in Week 16.

## The design-lab thread across the arc

| Week | Track A path (instructor's case) | Track B path (own project) |
|------|----------------------------------|----------------------------|
| 2 | Adopt instructor's case (AI homework-help tutor for an intro statistics course) | Choose and profile own AI integration |
| 5 | Workflow decision memo, provided team scenario | Own design-practice workflow decision |
| 6 | Tutoring interaction spec for the stats tutor | Own tutoring/help interaction spec |
| 7 | Adaptivity decision for provided learner data | Own adaptivity decision |
| 8 | Routing audit of the stats tutor's difficulty logic | Own routing equity audit |
| 9 | Content/feedback boundary spec | Own content/feedback boundaries |
| 10 | Assessment redesign for the stats course | Own assessment redesign |
| 11 | Full guardrail spec, instructor's case | Own full guardrail spec |
| 12 | Agentic extension scenario, provided | Own agentic boundary decision |
| 13 | Learner-side design for the stats tutor | Own AI-literacy/calibration design |
| 14 | Evaluation plan, provided pilot data | Own evaluation plan |
| 15 | Full integration spec + own-context section | Own complete integration spec |

**Series note:** The Track A case — an introductory statistics online
course — is the same standard case as the companion volume's Track A.
Students who took the first course inherit a case they already know;
the AI tutor is the integration that course's Week 12 decision memo
contemplated. Designed continuity, not coincidence.

---

# PART 6 — PREREQUISITE MAP

## The design-lab project as upstream artifact

Students who select a real AI integration by Week 2 arrive at every
subsequent week with a live object. Track B (own project) is
recommended and is most natural for working professionals. Track A
(the instructor's statistics-tutor case, with provided learner data,
interaction logs, and a vendor-style product description) is always
available. Students may switch tracks once, at the Week 8 checkpoint.

## Prerequisite chain

| Week | Track A prerequisite | Track B prerequisite |
|------|----------------------|----------------------|
| Week 1 | Nothing | Nothing |
| Week 2 | Week 1 | Week 1 + project selected |
| Week 3 | Weeks 1–2 | Weeks 1–2 |
| Week 4 | Weeks 1–3 | Weeks 1–3 |
| Week 5 | Provided team scenario | Access to own design workflow |
| Week 6 | Weeks 3–4 patterns | Same + project's help interactions mapped |
| Week 7 | Week 6 spec | Own Week 6 spec |
| Week 8 | Provided difficulty logs | Own routing/adaptivity data or design docs |
| Week 9 | Weeks 6–8 | Weeks 6–8 |
| Week 10 | Course assessment structure provided | Own assessment access |
| Week 11 | Weeks 6–10 artifacts | Own Weeks 6–10 artifacts |
| Week 12 | Week 11 guardrail spec | Own Week 11 spec |
| Week 13 | Weeks 11–12 | Weeks 11–12 |
| Week 14 | Provided pilot data | Own Week 13 design (+ pilot data if available) |
| Week 15 | Everything | Everything |

Week 11 is the load-bearing integration point: a student who skipped
any of Weeks 6–10 has a hole in the guardrail specification exactly
where that week's decision should be. Stated to students in Week 2.

---

# PART 7 — ASSESSMENT STRUCTURE

| Component | Points | Weeks |
|-----------|--------|-------|
| Evidence Briefs (5 × 30 pts) | 150 | 1, 3, 4, 9, 12 |
| Design Lab Assignments (8 of 9 × 25 pts) | 200 | 5–14 |
| Midterm: Scaffold/Crutch Diagnostic | 100 | 4 |
| Guardrail Specification Checkpoint | 100 | 11 |
| Evaluation Plan Checkpoint | 100 | 14 |
| Final Integration Specification | 250 | 15 |
| Design critique participation | 100 | Continuous |
| **Base total** | **1000** | |
| Track B bonus (up to 8 × 5 pts) | +40 | Per Design Lab Assignment |

**The Withdrawal Test (signature mechanic):** every Design Lab
Assignment must answer one question about its design decision: *what
can the learner do when the AI is taken away, and how does the design
make that more rather than less?* A design with no withdrawal answer
is a crutch with good intentions. This is the thesis enforced as a
grading mechanic.

**The Reliance Disclosure:** every assignment names one place the
design structurally preserves productive struggle and one place
reliance risk remains open. Track B bonus requires the disclosure to
cite project-specific evidence (logs, learner data, or a named
design constraint), not generic risk language.

**Midterm format (Week 4):** six unseen AI learning products
described at the interaction level; for each, the student classifies
scaffold/crutch-leaning, cites the implicated evidence, and names
the one design change with the largest expected effect.

---

# PART 8 — CHAPTER-BY-CHAPTER TOC

---

## ACT ONE — ESTABLISH (Weeks 1–4)

*What this act does: establishes interaction design as the causal
variable, teaches the crutch mechanism behaviorally and
neurologically, catalogs the scaffold patterns, and builds the
evidence-state literacy every later claim is weighed against.*

---

### WEEK 1 — Two Layers of Change: AI in Design Practice and in the Learning Experience

**One-line:** Students learn the field's central pattern — AI is
changing both how learning is designed and what learners experience
— and meet the three-condition table that defines the course.

**Learning outcomes:**
1. (Understand) Distinguish AI's effect on the practice of design
   (workflow compression) from its role as a participant in the
   learning experience (tutor, evaluator, recommender, agent).
2. (Understand) Explain the three-condition Bastani result: same
   model, opposite unassisted outcomes, interaction design as the
   difference.
3. (Analyze) Examine one AI learning product they know and identify
   which layer each of its AI features occupies.

**Opening:** One table, three rows. GPT Base: +48% assisted, −17%
unassisted. GPT Tutor: +127% assisted, no deficit. Control. The
students are asked what differed between rows one and two. It was
not the model.

**Core content:** The two-layer pattern; the central claim
(interaction design, guardrails, oversight determine scaffold vs.
shortcut); assisted vs. unassisted performance as different
measurements; course map.

**Assessment:** Evidence Brief #1 (30 pts)

**Bridge:** Row one of the table — the −17% — has a mechanism. Two
of them, in fact: one behavioral, one you can see on an EEG.

---

### WEEK 2 — The Crutch Effect: Shortcut-Seeking and Cognitive Debt

**One-line:** Students learn why the crutch is the default — learners
rationally seek cognitive shortcuts (the chess-academy finding), and
offloading measurably reduces neural engagement in subsequent
unassisted work (cognitive debt).

**Learning outcomes:**
1. (Understand) Explain the crutch effect's behavioral mechanism:
   shortcut-seeking as in-the-moment rational, not lazy — and why
   this closes the "let students self-regulate" escape hatch.
2. (Understand) Describe the cognitive-debt finding (declining
   functional connectivity with increasing reliance on generative
   assistance) and its limits as a single-study result.
3. (Analyze) Identify the crutch-producing features in a provided
   product: answers on request, no reasoning requirement,
   unrestricted access, no fading.
4. (Apply / Track B) Locate the highest-reliance-risk touchpoint in
   their own project.

**Opening:** The chess academies: learners given free choice of when
to ask the AI for help — and the long-term outcomes of letting them
choose. The students predict the result before seeing it. Most
predict wrong.

**Core content:** The chess-academy follow-up; Kosmyna et al.
cognitive debt (presented with single-study caution); Wang et al. —
85% of STEM students use GenAI, over half paste problems and take
solutions; the crutch-producing pattern list; the default thesis.

**Assessment:** Project selection due (ungraded gate) + Evidence
Brief #2 (30 pts)

**Bridge:** If the crutch is the default, the scaffold is a
counter-design. Three RCTs show what it looks like.

---

### WEEK 3 — The Scaffold: Interaction Designs That Preserve Learning

**One-line:** Students learn the scaffold-producing pattern catalog
from the three defining RCTs — guardrailed tutoring (Bastani),
human-supervised AI (LearnLM), and AI-supported humans (Tutor
CoPilot) — as three architectures of the same principle.

**Learning outcomes:**
1. (Understand) Name the scaffold-producing patterns: Socratic hint
   sequences, reasoning-before-help, support fading, error-flagging
   for self-correction, metacognitive prompts, human override,
   transfer-oriented sequencing.
2. (Analyze) Compare the three RCT architectures — constrain the AI,
   supervise the AI, support the human — and state when each fits.
3. (Analyze) Explain the Tutor CoPilot equity signature: 9-point
   gains for the lowest-rated tutors — AI lifting the floor of human
   practice.
4. (Apply) Redesign one crutch-leaning interaction from Week 2 into
   a scaffold-leaning one, pattern by pattern.

**Opening:** The LearnLM transfer finding: students supported by
human-supervised AI were 5.5 points MORE likely to solve a novel
problem in the next topic than students tutored by humans alone.
The strongest positive finding in the field — and it required a
human in the loop.

**Core content:** The pattern catalog; the three architectures;
what GPT Tutor's system prompt actually did; production systems
read as design artifacts (Khanmigo, MATHia, Duolingo Max) — and the
caution that market visibility ≠ evidence maturity.

**Assessment:** Evidence Brief #3 (30 pts)

**Bridge:** Three RCTs is not a science. Before designing anything,
the student needs to know exactly how thin the ice is — and how to
read a vendor claim standing on it.

---

### WEEK 4 — Reading the Evidence: Thin Causal Bases, Vendor Claims, and the Durability Gap
**[MIDTERM: SCAFFOLD/CRUTCH DIAGNOSTIC]**

**One-line:** Students learn to weigh AI-in-education claims against
the actual evidence state — ~20 high-quality causal studies in 800+
papers, no longitudinal evidence anywhere, and vendor descriptions
that encode design intent but not outcomes.

**Learning outcomes:**
1. (Understand) Characterize the evidence state: the Stanford SCALE
   finding, the converging meta-reviews, and what "exploratory"
   means on the field's best positive result.
2. (Analyze) Deconstruct a vendor product description into testable
   interaction design claims versus outcome claims with no causal
   support.
3. (Evaluate) Judge which design decisions can responsibly be made
   on current evidence, which require pilot measurement, and which
   should be declined — the three-bucket discipline.
4. (Evaluate) Explain the durability gap: why the absence of
   longitudinal evidence is the field's most consequential unknown.

**Opening:** Two product pages, side by side: the best-evidenced
adaptive tutor on the market (decades of cognitive tutor research,
modest +0.04 weighted effect at scale) and the most market-visible
conversational tutor (excellent product copy, immature causal
evaluation). The students rank them by evidence. The market ranked
them the other way.

**Core content:** Evidence-state literacy; the 20-in-800 finding and
its independent corroborations; assisted vs. unassisted vs. transfer
endpoints; vendor-claim deconstruction; the durability gap; making
design decisions under honest uncertainty.

**Assessment:** Midterm — Scaffold/Crutch Diagnostic (100 pts)

**Bridge:** Act One complete: the student can diagnose and can read
the evidence. Act Two turns to design — starting with the AI that is
already inside the student's own workflow.

---

## ACT TWO — BUILD (Weeks 5–11)

*What this act does: builds the design pattern catalog one AI
capability at a time — practice tools, tutoring, adaptivity,
routing, content, feedback, assessment, trust — with the crutch
default and the equity failure mode named at every step, applied
weekly to the design-lab project, integrated at Week 11 into a
complete guardrail specification.*

---

### WEEK 5 — AI as Design Partner: Better First Drafts, Not Better Designers

**One-line:** Students learn what the evidence shows about AI in
design practice — it raises the floor of novice output (Moore et
al.), compresses workflow, and carries documented deskilling and
design-by-analogy risks — and set the rules for their own AI use.

**Learning outcomes:**
1. (Understand) Summarize the practitioner evidence: ideation,
   drafting, and workflow compression as the established gains;
   quality, authorship, and privacy as the documented concerns.
2. (Analyze) Explain the raises-the-floor / raises-the-ceiling
   distinction and the design-by-analogy critique — AI reproducing
   familiar course formats instead of first-principles design.
3. (Evaluate) Assess the deskilling warning honestly: an
   evidence-backed signal, not a proven causal claim — and decide
   what it implies for junior roles on a design team.
4. (Create) Produce a personal/team AI workflow policy: which design
   tasks AI drafts, which it never touches, and why the never-touch
   list is where designers are made.

**Opening:** Two microlessons from the same novice designer, one
AI-assisted, one not — the assisted one is better. Then the harder
question the A/B test cannot answer: which workflow produces the
better designer in year three?

**Core content:** Luo, Yang & Stefaniak, Kumar, Moore et al.;
co-creative framing (AI + learning analytics, not AI as author);
narrowing of creative range; the NNG finding that narrow features
beat all-in-one generators; the toolchain (Figma AI, xAPI + AI
analytics) with polish-before-pedagogy as the named trap.

**Assessment:** Design Lab #1 (25/30 pts)

**Bridge:** The designer's own AI use is settled. Now the harder
design surface: the AI the learner talks to.

---

### WEEK 6 — Designing Tutoring Interactions: Hints, Reasoning Requirements, and Fading

**One-line:** Students convert the Week 3 pattern catalog into a
working tutoring interaction specification — hint ladders, reasoning
gates, fading schedules, and escalation rules.

**Learning outcomes:**
1. (Apply) Specify a Socratic hint ladder for a real learning task:
   levels, triggers, and the answer that is never given.
2. (Apply) Design a reasoning gate — what the learner must articulate
   before help advances — that resists copy-paste compliance.
3. (Create) Produce a fading schedule: how support contracts as
   competence builds, and what signal triggers each contraction.
4. (Create / Track B) Write the tutoring interaction spec for their
   own project, including the human escalation rule.

**Opening:** The actual difference between GPT Base and GPT Tutor:
not the model, a system prompt and a conversation structure. The
spec that produced the +127%/no-deficit row, read as a design
document.

**Core content:** Hint ladder design; reasoning gates; fading as
designed withdrawal (the understudied pattern, flagged honestly);
error-flagging vs. error-correcting; metacognitive prompt placement;
when to escalate to a human.

**Assessment:** Design Lab #2 (25/30 pts)

**Bridge:** Tutoring adapts within a conversation. The next layer
adapts the path itself — and the distinction between adapting pace
and personalizing support decides whether it helps.

---

### WEEK 7 — Adaptive Systems: From Pacing to Personalization

**One-line:** Students learn the adaptive modeling layer at
design-literacy depth — IRT, knowledge tracing, LLM-generated
variation — and the critical distinction between individualizing
pacing and personalizing support.

**Learning outcomes:**
1. (Understand) Explain what IRT, Bayesian Knowledge Tracing, and
   LLM-based adaptation each model, and what each cannot know about
   the learner.
2. (Analyze) Distinguish pacing individualization from genuine
   personalization of support — and classify a provided system.
3. (Evaluate) Weigh the headline adaptive-learning claims (30–50%
   time reduction, 15–25% outcome gains) against their boundary
   conditions: structured domains, well-resourced contexts, and the
   +0.04 at-scale caution.
4. (Evaluate / Track B) Decide whether their project warrants an
   adaptive layer at all, and specify it if so.

**Opening:** Two systems both marketed as "personalized." One
adjusts the speed at which identical content arrives. One changes
what support arrives based on the misconception in the learner's
last answer. Same word, different machines.

**Core content:** The modeling stack at design depth; pre-authored
branching vs. model-based adaptation; the Cao et al. review and its
concentration caveats; ADDIE-RAD hybrid method; the interpretive
support layer framing vs. automated traffic control.

**Assessment:** Design Lab #3 (25/30 pts)

**Bridge:** Every adaptive system routes. Next week: what routing
does to the learners the system was sold as helping.

---

### WEEK 8 — Algorithmic Routing and Equity: Auditing the Personalization Layer

**One-line:** Students learn the equity-critical failure mode of
adaptive systems — remedial-loop routing, allocative and
representational harms — and run a routing audit as a standard
design phase.

**Learning outcomes:**
1. (Understand) Explain how bias enters well-intentioned adaptive
   systems through historical performance data and correlated
   features (Baker & Hawn).
2. (Analyze) Trace a provided system's routing logic and identify
   where lower-performing learners lose access to higher-order
   tasks — digital tracking made visible.
3. (Create) Design the counter-patterns: floor constraints,
   visible/revisable routing, off-ramps from remediation,
   human-in-the-loop for high-stakes routing.
4. (Create / Track B) Produce a routing equity audit of their own
   project, with named harms, named counter-patterns, and what data
   the audit could not see.

**Opening:** Difficulty logs from the Track A statistics tutor: two
learners, same starting score, different ZIP-code-correlated
interaction histories — and the diverging task diets the system
quietly assigned them over six weeks. The personalization worked
exactly as designed.

**Core content:** Baker & Hawn as the canonical reference;
allocative vs. representational harms; the routing counter-pattern
set; participatory co-design of personalization rules (PLĀ);
audit-blocking as a policy problem; subgroup evaluation vs.
population averages.

**Assessment:** Design Lab #4 (25/30 pts) — Track switch decision
point.

**Bridge:** The path logic is audited. The next two weeks cover what
flows along the path: AI-generated content, AI feedback, and the
assessments AI has quietly invalidated.

---

### WEEK 9 — AI-Generated Content and Feedback: Where Judgment Stays Human

**One-line:** Students learn where AI content and feedback genuinely
work (explicit criteria, regular structure, speed at scale), where
they fail (misconception reframing, motivational sensitivity,
creative judgment), and design the boundary.

**Learning outcomes:**
1. (Understand) Explain the pipeline shift: generation is fast,
   judgment is the bottleneck — and the bottleneck is the job.
2. (Analyze) Classify feedback tasks by AI-suitability using the
   explicit-criteria / tacit-judgment boundary.
3. (Analyze) Interpret the perception/performance split: AI-generated
   video produced equal performance but lower engagement — and what
   perceived authenticity means as a design variable.
4. (Create / Track B) Specify the content and feedback boundaries
   for their project: what AI generates, what humans validate, what
   humans author, and how learners are told.

**Opening:** An AI-generated lecturer with flat learning results and
sagging engagement — and the design question the result raises: if
learners perform the same but trust it less, what exactly did the
design lose, and does it compound?

**Core content:** Content-at-scale evidence; the feedback
strength/weakness map (Lee & Moore; the 77-study review); AI
feedback vs. teacher feedback honestly scored; perceived
authenticity and social presence; human-AI collaboration as
refinement partnership (Hwang & Lee).

**Assessment:** Design Lab #5 (25/30 pts) + Evidence Brief #4
(30 pts)

**Bridge:** If AI can produce the content, AI can complete the
assessment. What the assessment was supposed to make visible just
became the design problem.

---

### WEEK 10 — Assessment Redesign: Making Reasoning Visible

**One-line:** Students learn AI-era assessment as a validity design
problem — and redesign assessments around the three-question
framework so that reasoning, process, and judgment become the
visible artifact.

**Learning outcomes:**
1. (Understand) Explain why GenAI creates a validity problem, not
   just an integrity problem: the assessment no longer measures what
   it claims to.
2. (Apply) Apply the three-question framework — may AI assist
   production, may AI assist completion, what must the assessment
   make visible — to disentangle a confused policy.
3. (Create) Redesign one assessment using the emerging pattern set:
   process portfolios, oral defenses, reflective components,
   AI-integrated tasks with disclosed use, assessment of AI use
   itself.
4. (Create / Track B) Redesign the highest-stakes assessment in
   their own project, with the validity claim stated explicitly.

**Opening:** A take-home assessment, full marks, written entirely by
an LLM — submitted by the instructor, to the instructor's own
rubric. The rubric never noticed. What was the rubric measuring?

**Core content:** Validity-first framing (Corbin, Dawson & Liu);
why AI-proofing is the wrong goal; the three-question framework;
the AI-era pattern set; designing supervised-use, disclosed-use,
and AI-free windows by learning objective.

**Assessment:** Design Lab #6 (25/30 pts)

**Bridge:** Every decision so far assumes the learner knows what the
AI is and trusts it appropriately. The evidence says the interface
is actively teaching them not to.

---

### WEEK 11 — Trust, Transparency, and the Designed Relationship
**[GUARDRAIL SPECIFICATION CHECKPOINT]**

**One-line:** Students learn the trust-calibration design problem —
affective misinformation, the four vulnerability vectors, disclosure
and escape-hatch requirements — and integrate seven weeks of
decisions into a complete guardrail specification.

**Learning outcomes:**
1. (Understand) Explain affective misinformation: human-like cues
   constructing an illusion of relational care, and the four
   vulnerability vectors (reflection simulation, authority
   modulation, cognitive-load exploitation, market-security tension).
2. (Analyze) Audit a conversational learning interface for
   trust-miscalibrating design features.
3. (Create) Design the transparency layer: disclosure as relational
   metadata, learner-visible AI role, and the single-click human
   escape hatch the WGU findings make non-negotiable.
4. (Create) Integrate Weeks 5–11 into a complete guardrail
   specification: every AI touchpoint, permitted actions, forbidden
   actions, fading, disclosure, escalation.

**Opening:** A learning companion with simulated typing delays,
remembered personal details, and an affirming tone — and the survey
of 344 users of its consumer cousin: identity projection, boundary
confusion, emotional substitution. Every one of those cues was a
design decision.

**Core content:** Bhat & Long; the Agency Design Framework (agency
as first-class construct, mid-process intervention, dynamic
transparency); the WGU interface findings (89% can identify
automation; 40%+ of non-users can't find the human); the LearnLM
disclosure question; assembling the guardrail spec.

**Assessment:** Guardrail Specification Checkpoint (100 pts) — no
Track B bonus; the Track B investment pays out in the final
specification.

**Bridge:** The specification governs an AI that responds. Act Three
begins with an AI that acts on its own — and the moment governance
becomes experience design.

---

## ACT THREE — APPLY (Weeks 12–15)

*What this act does: extends the specification to the unsolved
conditions — agentic autonomy, the learner's side, honest evaluation
— and assembles the terminal deliverable.*

*The Act Three worked examples are segments of one continuing case —
the instructor's complete integration specification for the Track A
statistics tutor — built across all four weeks and shown whole in
Week 15.*

---

### WEEK 12 — Agentic AI: Bounded Authority and Reversible Paths

**One-line:** Students learn to design for AI that acts without
being asked — path changes, proactive nudges, cross-system
coordination — by converting governance principles into interaction
patterns: bounded authority, audit logs, explainable and reversible
changes, human escalation.

**Learning outcomes:**
1. (Understand) Define agentic AI in learning contexts and the
   experience questions it raises: what does the learner know, what
   can they override, when does a human enter.
2. (Analyze) Map a proposed agentic feature against the governance
   gap (86% of organizations investing; 6% trusting) and the policy
   floor (EU AI Act, FERPA) versus the missing design layer.
3. (Create) Specify the non-negotiables for an agentic feature:
   scope constraints, learner notification, teacher override, audit
   log, reversibility — labeled honestly as inference from policy
   frameworks, not experimental canon.
4. (Create / Track B) Make the agentic boundary decision for their
   own project: what the system may do autonomously, and what it
   must never do without a human.

**Opening:** A learning platform that quietly re-routed a student's
semester — content, pacing, and an assessment window — based on
inferred skill gaps. Every individual decision was defensible. The
student found out at the end. What, exactly, went wrong, and at
which design layer?

**Core content:** Agentic systems in education; the governance gap;
the non-negotiable pattern set; escalation design; when "the agent
was right" is still a design failure.

**Assessment:** Design Lab #7 (25/30 pts) + Evidence Brief #5
(30 pts)

**Bridge:** The system's side is specified. The learner's side —
what they understand, control, and become — is a design surface
too, and it varies by age.

---

### WEEK 13 — AI Literacy and Developmental Calibration: Designing the Learner's Side

**One-line:** Students learn to treat AI literacy as a design
dimension of every AI-mediated experience — not a separate subject —
and to calibrate AI exposure to developmental stage.

**Learning outcomes:**
1. (Understand) Explain the reframe: every AI touchpoint makes
   implicit choices about transparency, controllability, and trust
   calibration — making them explicit is LXD work, not an ethics
   add-on.
2. (Apply) Embed AI-literacy interactions into a learning journey:
   error-spotting, output critique, prompt examination — as
   recurring interaction patterns, not a module.
3. (Analyze) Apply the developmental five-tier framework (ages 3–18,
   protection → modeling → scaffolded exploration → collaborative
   inquiry → autonomous critical agency) to a target population,
   noting its inference-based status.
4. (Create / Track B) Design the learner-side layer for their own
   project: what the learner is taught about the AI by the
   experience itself.

**Opening:** A fifth-grade classroom where students design an
AI-powered solution and, along the way, learn what AI is — the SAILD
finding: literacy through design, effective across all four
dimensions, no lecture in sight.

**Core content:** AI literacy frameworks (contested definitions,
converging structure); SAILD; the five-tier developmental table;
UNESCO teacher competencies as the adult-side complement; designing
appropriate reliance rather than maximal use.

**Assessment:** Design Lab #8 (25/30 pts)

**Bridge:** The integration is fully designed — system side and
learner side. One question remains, and it is the thesis: how will
anyone know whether it worked when the AI is taken away?

---

### WEEK 14 — Evaluating AI-Mediated Learning: The Withdrawal Test at Scale
**[EVALUATION PLAN CHECKPOINT]**

**One-line:** Students design evaluation for AI-mediated learning
with unassisted performance as the primary endpoint — plus transfer,
equity subgroups, and reliance trajectories — and produce a
qualified conclusion in two registers.

**Learning outcomes:**
1. (Apply) Specify an evaluation plan whose primary endpoint is
   unassisted performance, with transfer and subgroup analyses —
   not satisfaction, not assisted scores.
2. (Analyze) Diagnose an evaluation that mistook assisted
   performance for learning, and name the missing measurement.
3. (Evaluate) State the durability limitation honestly: what a
   single-term evaluation cannot claim, given the field's
   longitudinal evidence gap.
4. (Evaluate / Track B) Produce the evaluation plan and a qualified
   conclusion in two registers — technical and stakeholder-facing —
   for their own project.

**Opening:** A pilot report any executive would fund: +40% on
in-product assessments, 92% satisfaction, glowing quotes. One column
is missing. The students name it before the reveal: nobody measured
what learners could do without the product.

**Core content:** Endpoint design (assisted / unassisted / transfer /
retention); subgroup evaluation as standard (the Baker & Hawn
mandate); reliance-trajectory metrics; the durability gap as a
reporting obligation; the two-register qualified conclusion; when
the honest answer is "not yet known — and here is the measurement
that would know it."

**Assessment:** Evaluation Plan Checkpoint (100 pts) + Design Lab #9
(25/30 pts)

**Bridge:** Every artifact exists: guardrail spec, agentic
boundaries, learner-side design, evaluation plan. Week 15 assembles
the one document that carries them all.

---

### WEEK 15 — The Full Integration: One Experience, Every Guardrail
**[FINAL PROJECT]**

**One-line:** Students produce a complete AI integration
specification for a real learning experience — every touchpoint
guardrailed, every claim evidence-weighted, the withdrawal test
answered, defensible to a skeptical review board.

**Learning outcomes:**
1. (Create) Produce the complete integration specification:
   interaction specs, guardrails, routing audit, content/feedback
   boundaries, assessment redesign, transparency layer, agentic
   boundaries, learner-side design, evaluation plan.
2. (Evaluate) Review a peer's specification using the
   scaffold/crutch diagnostic before final presentation.
3. (Create) Defend the specification to a skeptical reviewer —
   including at least one AI feature the student declined to build,
   with the evidence for declining.

**Opening:** The instructor's complete Track A specification — the
statistics tutor, built in segments across Weeks 12–14 — presented
whole, with its own Reliance Disclosures and its honestly open
questions, including the one the field cannot answer yet: what four
years of this does to a learner.

**Core content:** Specification structure; peer review protocol;
the defense format; the professional identity the course has been
building — the designer as the causal variable.

**Assessment:** Final Integration Specification (250 pts) — Track A:
instructor's case + required own-context section. Track B: own
project complete.

**Final Reliance Disclosure (higher bar):** must name three design
decisions across the specification where the evidence overruled the
feature's appeal, one place reliance risk remains structurally open,
and the measurement that would close it.

---

# PART 9 — CHAPTER ANATOMY TEMPLATE

All 15 chapters follow this structure:

1. Learning objectives (Bloom's level explicit; Track A/B split
   where levels differ)
2. Opening case (failure-first or counterintuitive-finding-first;
   sourced or labeled illustrative)
3. Prerequisites stated as specific capabilities
4. Core content sections (4–6), each: concept → evidence → design
   pattern
5. Mid-chapter checkpoint (ungraded; surfaces confusion before the
   worked example)
6. The Evidence Box (the key studies, effect directions, endpoint
   types — assisted/unassisted/transfer — verification status, and
   what remains unsettled; single-source findings flagged)
7. The Pattern Card (each chapter's design patterns in
   specification-ready form: trigger, structure, fading rule,
   failure mode)
8. Worked example (Act One: diagnostic case; Act Two: pattern
   applied to the Track A statistics tutor; Act Three: segment of
   the instructor's continuing specification)
9. Track B extension in the worked example (Weeks 5–14)
10. Assessable exercises (minimum 3; at least one at Apply or above;
    at least one Track B version)
11. Withdrawal Test + Reliance Disclosure templates (per-chapter
    versions of the grading mechanics)
12. Chapter summary (capabilities gained, not topics covered)
13. Key terms (5–10; plain-language definitions)
14. Bridge question (one question; raises what the next chapter
    answers)
15. Further reading (3–5 sources with one-sentence annotation)
16. LLM Exercise (copy-paste-ready prompt; produces an assessable
    artifact; the exercise itself models scaffold design — reasoning
    gates included)

**Enforcement:** A draft chapter missing items 5, 6, 7, 14, or 16
is an incomplete draft. Do not advance to peer review without
resolving it.

---

# PART 10 — CASE STUDY STRATEGY

## Domain coverage map

| Domain | Chapters | At cap? |
|--------|----------|---------|
| K-12 / secondary mathematics (the RCT base) | 1, 2, 3 | Yes |
| Higher ed online courses (Track A statistics tutor) | 6, 8, 10, 12–15 (continuing case) | Designed exception |
| Corporate L&D / onboarding | 5, 9 | No |
| Consumer learning apps / companions | 4, 11 | No |
| Language learning | 4, 7 | No |
| K-12 elementary (developmental calibration) | 13 | No |
| Design team practice (meta-level) | 5 | No |
| Student's own domain (Track B) | Up to 15 | N/A |

## Case escalation

Act One cases: single finding, clear diagnostic answer — the RCTs
themselves as cases.
Act Two cases: multiple patterns, judgment required; each week's
pattern applied to the Track A tutor.
Act Three cases: one continuing case across four chapters — the
instructor's full integration specification — synthesis, open
decisions shown honestly.

## Worked example format (all chapters)

Situation → the problem as the designer sees it → process (including
dead ends) → resolution → the lesson (one sentence) → the limit
(where this pattern fails) → Track B extension (Weeks 5–14).

## Failure-case requirement

At least six chapter openings are failures, counterfindings, or
counterintuitive results (Weeks 1, 2, 8, 10, 12, 14). In this field
the failure cases ARE the foundational literature.

## Sourcing requirement

Every case requires either a source citation OR an explicit
"illustrative case" label. The synthesis's epistemic flags carry
into the book: single-source findings (cognitive debt EEG), partially
verified items (the 2026 K-12 scoping review), and exploratory
labels (LearnLM) are disclosed in the Evidence Boxes, not smoothed
over. A book about honest AI claims cannot launder its own.

---

# PART 11 — HARD TOPICS, CONTESTED CLAIMS, AGING RISK

## Contested claims summary

| Claim | Status | Book's position |
|-------|--------|----------------|
| AI tutoring helps learning | Design-conditional | The three-RCT frame: interaction design is the causal variable; "AI tutoring" is not one thing (Weeks 1–3) |
| Cognitive debt (EEG finding) | Single study | Taught as the candidate mechanism with explicit single-source flag (Week 2) |
| Adaptive learning's 30–50%/15–25% gains | Context-concentrated | Headline taught WITH boundary conditions and the +0.04 at-scale caution (Week 7) |
| Deskilling of junior designers | Warning signal, not causal | Labeled exactly that; design response justified on risk asymmetry (Week 5) |
| AI feedback ≈ teacher feedback | Not established | Strength/weakness boundary taught; parity claims rejected (Week 9) |
| AI as equity accelerator | Aspirational | Equity claims held to subgroup evidence; routing harms documented, benefits not yet (Week 8) |
| Agentic design principles | Inference from policy | Explicitly labeled inference, not experimental canon (Week 12) |
| Five-tier developmental framework | Inference-based | Taught with status label; Open Question 5 on placement (Week 13) |

## Hard chapters

**Week 8 (Algorithmic Routing):** The conceptual inversion chapter —
individually adaptive, collectively unjust. Requires provided
difficulty-log data good enough to make routing visible; the Track A
data package must be built carefully or the chapter becomes
abstract advocacy. The most likely peer-review target.

**Week 11 (Trust and Transparency):** Crosses into psychological
vulnerability territory (Bhat & Long's vectors include trauma
reenactment). Needs careful register — design analysis, not moral
panic — and a reviewer with HCI ethics background.

**Week 14 (Evaluation):** Must teach evaluation design without
becoming a methods course, and must hold the durability-gap line
even though it makes every evaluation the reader will run look
weaker. The temptation to soften is the failure mode.

## Aging risk summary

| Content type | Risk | Review cadence |
|-------------|------|----------------|
| Named products and tools (Khanmigo, MATHia, Duolingo Max, Figma AI) | Extreme | Before each offering |
| Specific study citations as "current best" | High | Annually |
| Agentic AI landscape (Week 12) | Extreme | Before each offering |
| Governance/policy references (EU AI Act application) | High | Annually |
| The three-RCT findings themselves | Medium | On replication or contradiction — these are the spine; a reversal is an edition trigger |
| Scaffold/crutch pattern catalog | Low-Medium | Every 2 years |
| The thesis (interaction design as causal variable) | Low | The most durable claim in the book — it survives model improvement by construction |

**Structural mitigation:** the Pattern Cards and the thesis are the
stable core; the Evidence Boxes and product references are the
replaceable layer. This separation is the book's answer to the
faculty reviewer's obsolescence question, and it is stated in the
preface.

---

# PART 12 — MARKET POSITIONING SUMMARY

The gap this book fills: every LXD and EdTech program is currently
assembling its AI course from papers, vendor posts, and policy PDFs.
No course textbook converts the 2024–2026 causal evidence into a
teachable design discipline with named patterns, standard audits,
specification deliverables, and an evaluation doctrine. The
governance frameworks explicitly stop at principles; the teaching
guides serve instructors, not designers; the advocacy books predate
or ignore the counterevidence.

Five comparable positions analyzed in Part 4. The series position
doubles the case: programs adopting *Experience Design for EdTech*
get a designed two-course sequence with a shared standard case.

**Market size estimate:**
Graduate LXD / learning engineering / EdTech programs adding AI
courses: 50–100 course adoptions per year within three years (the
course is being created right now at most programs; first-mover
window is real but short — see Risk 1).
15–30 students per adoption.
1,500–3,000 copies annually at steady state.
Secondary market (corporate L&D and EdTech product teams): larger
than for most course textbooks — est. 40–60% additional — because
the specific person in Part 2 exists in thousands of companies.

---

# PART 13 — FEATURE LIST SUMMARY

| Feature | Priority | Production effort |
|---------|----------|-------------------|
| 15-chapter architecture, three acts | ESSENTIAL | Low |
| Design-lab thread (Track A/B) | ESSENTIAL | Medium |
| Evidence Boxes with verification flags (15) | ESSENTIAL | Medium |
| Pattern Cards (spec-ready design patterns) | ESSENTIAL | Medium |
| Withdrawal Test + Reliance Disclosure mechanics | ESSENTIAL | Low |
| Three milestone assessments + final spec | ESSENTIAL | Medium |
| Track A case package (stats tutor: product description, learner data, difficulty logs, interaction transcripts) | IMPORTANT | HIGH |
| LLM exercises (15, scaffold-modeling) | IMPORTANT | Medium |
| Instructor's manual (incl. evidence-update protocol) | IMPORTANT* | HIGH |
| Guardrail specification template (digital) | IMPORTANT | Low |
| Slide decks | VALUABLE | HIGH |
| Exercise bank | VALUABLE | Medium-High |
| Annual Evidence Box update supplement | VALUABLE | Medium (recurring) |
| Video walkthroughs | ASPIRATIONAL | HIGH |
| Companion website with living pattern library | ASPIRATIONAL | HIGH |

*The instructor's manual is ESSENTIAL-in-practice for non-author
faculty: the Track A data package, the Week 8 facilitation guide,
the Week 11 sensitivity notes, and the evidence-update protocol all
live there.

**Minimum Viable Textbook:** ESSENTIAL + Track A case package +
instructor's manual. Without the case package, Weeks 8 and 14 lose
their data-grounded teeth and the book degrades toward the policy
literature it is positioned against.

---

# PART 14 — OUT OF SCOPE

Permanently excluded (no reopen condition without structural
revision):

| Topic | Covered better in |
|-------|------------------|
| Machine learning / model building | ML textbooks; this book never opens the model |
| Prompt engineering as a subject | Tool documentation; taught only at point of design use |
| Core LXD process (research, mapping, prototyping) | Companion volume *Experience Design for EdTech* |
| AI policy analysis and law | Policy literature (UNESCO, OECD, EU AI Act primary docs — cited, not taught) |
| Academic integrity enforcement / detection tools | Institutional policy guides; the book treats detection as a failed design strategy |
| Psychometrics at implementation depth | Measurement and learning analytics texts |
| AI ethics as standalone philosophy | Ethics literature; this book does ethics only as design decisions |

Deferred to a second edition (reopen condition noted):

| Topic | Reopen condition |
|-------|------------------|
| Longitudinal reliance effects | When the first multi-year studies land — currently zero exist |
| Equity-positive personalization patterns | When demonstrated at scale rather than theorized |
| Agentic AI pattern canon | When design patterns exist as evidence rather than inference |

All exclusions acknowledged in the preface. The companion-volume
boundary is stated as designed curriculum architecture: process
there, AI layer here, one shared standard case.

---

# PART 15 — ADOPTION RISK REGISTER

| # | Risk | Likelihood | Impact | Status |
|---|------|-----------|--------|--------|
| 1 | First-mover window closes — competing AI-for-LXD texts ship first | Med-High | High | Mitigation: the evidence-spine + pattern-card architecture is the moat; speed to proposal matters |
| 2 | Prerequisite dependency on companion volume narrows the market | Medium | Medium | Mitigated: Week 1 toolkit map + manual reading list; book is adoptable standalone for Dirksen-trained readers |
| 3 | Evidence reversal — a spine RCT fails replication or is contradicted | Low-Med | High | Mitigated: three independent RCTs, not one; Evidence Boxes designed for replacement; reversal = edition trigger, not book collapse |
| 4 | Extreme aging of product references | High | Medium | Mitigated: Pattern Card / Evidence Box separation; annual update supplement |
| **5** | **Edition/update strategy unresolved — an AI textbook without an update commitment is dead on arrival with adoption committees** | **High** | **High** | **BLOCKER — resolve update cadence and supplement model with publisher before /p1** |
| 6 | Track A data package (logs, transcripts) is HIGH effort and load-bearing for Weeks 8 and 14 | Medium | High | Must be scoped and budgeted at proposal stage; synthetic data generation is acceptable if labeled |
| 7 | Week 11 psychological-vulnerability material mishandled | Medium | Medium | HCI-ethics reviewer required; register guidance in manual |
| 8 | Faculty teaching the course lack AI design experience | Med-High | High | Instructor's manual with worked Track A solutions; the book is partly designed to train its own instructors |
| 9 | Student Track B projects involve real learner data and AI systems — ethics/IRB exposure | Medium | Medium | Manual includes an ethics protocol; Track A always available |
| 10 | The thesis reads as anti-AI to one market and pro-AI to another | Medium | Medium | Mitigated: the thesis is neither — it relocates the question to design; preface addresses both readers directly |

---

# PART 16 — OPEN QUESTIONS

| # | Question | Stakes | Decision deadline | Owner |
|---|---------|--------|------------------|-------|
| 1 | Subtitle decision: "Scaffold or Crutch: Designing AI-Mediated Learning" (chosen here, silent mode) vs. a more neutral "Designing AI-Mediated Learning Experiences" — does the edge help or hurt with adoption committees? | Positioning; Risk 10 | Before /p1 | Author |
| 2 | Standalone vs. sequel framing: is the companion-volume dependency (Risk 2) worth the series coherence, or should Week 1 carry a fuller toolkit recap? | Market size; Week 1 design | Before manuscript drafting | Author |
| 3 | Update strategy: annual Evidence Box supplement, digital-first edition, or conventional editions? (Risk 5 blocker) | Adoption viability; publisher economics | Before /p1 | Author + publisher |
| 4 | Track A data package: real anonymized data, synthetic-but-labeled, or hybrid? | Weeks 8 and 14 integrity; production cost; ethics | Proposal stage | Author |
| 5 | Five-tier developmental framework (inference-based): main text in Week 13 or appendix with pointer? | Epistemic consistency — the book penalizes unlabeled inference elsewhere | Before drafting Week 13 | Author |
| 6 | Who is the HCI-ethics reviewer for Week 11? | Risk 7; chapter credibility | Before drafting Week 11 | Author |

---

*Full TOC Draft v1.0 — compiled from all phase outputs, silent mode*
*All phases complete: Vision (i1–i4), Learning Architecture (l1–l4),*
*Chapter Architecture (c1–c4), Scope & Market (m1–m4)*
*Chapter count: 15 — within course-adoptable range, one per week*
*Bloom's distribution: every chapter ≥1 outcome at Apply or above;*
*Acts Two–Three majority Analyze/Evaluate/Create*
*One blocker before publisher proposal: Risk 5 (update strategy)*
*Source basis: pantry/ai_lxd_definitive_synthesis.md (four research*
*passes, epistemic flags preserved into Evidence Boxes)*
