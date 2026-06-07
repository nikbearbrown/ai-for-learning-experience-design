# Chapter 12 — Agentic AI: Bounded Authority and Reversible Paths

*Act Three begins here. Acts One and Two taught you to diagnose and to design for an AI that responds. The next four chapters design for the conditions the field has not solved — starting with an AI that acts.*

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Define agentic AI in learning contexts and state the experience questions it raises: what does the learner know, what can they override, and when does a human enter. *(Tracks A and B)*
2. **(Analyze)** Map a proposed agentic feature against the governance gap (86% of organizations increasing agentic investment; 6% trusting it) and the policy floor (EU AI Act, FERPA) — and locate the missing design layer between them. *(Tracks A and B)*
3. **(Create)** Specify the non-negotiables for an agentic feature — scope constraints, learner notification, teacher override, audit log, reversibility — labeled honestly as inference from policy frameworks, not experimental canon. *(Track A: the DataWise 101 agentic extension)*
4. **(Create)** Make the agentic boundary decision for your own project: what the system may do autonomously, and what it must never do without a human. *(Track B)*

## Opening Case: The Semester That Rearranged Itself

*(Illustrative case — a composite built from documented platform capabilities; no single sourced incident. The capabilities are real and shipping; see the IgniteAI and "Einstein" cases later in the chapter.)*

In week three, the platform noticed Maya's weak quiz performance on prerequisite algebra and quietly front-loaded two remediation modules into her path. Defensible: the knowledge-tracing model flagged a real gap. In week five, it deferred her unit-two mastery quiz by six days — learners with her profile score better with the runway, per last year's cohort. In week eight, it swapped her project dataset for a more structured one and nudged her toward the standard-track recitation. Defensible, defensible. In week eleven, it shifted her final assessment window into the late slot it predicted she would pass.

In week fifteen, Maya — who had noticed only that the course felt oddly smooth — met with her advisor and discovered she had completed the *support track*: a different module sequence, a deferred quiz, a simplified project, a rescheduled final. Nothing she had chosen. Nothing she had been told. Nothing she could now un-choose, because the semester was over.

Here is the part that makes this a design chapter and not a horror story: **suppose every individual decision was pedagogically correct.** The system could win every appeal on the merits — and the experience is still a failure, because Maya's semester was authored by something she never met, never authorized, and could not see. Her answer to "what happened this term?" is "I don't know, and I wasn't asked."

The question this chapter equips you to answer precisely: *what, exactly, went wrong — and at which design layer?* Not the model layer (assume the inferences were sound). Not the policy layer (assume FERPA was honored). The failure sits in the missing layer between them: nobody specified what the system could do on its own, what it owed the learner at the moment of action, and how a decision could be seen, questioned, and reversed. That layer is yours.

## Prerequisites

This chapter assumes you can:

- **Produce a guardrail specification** (Chapter 11) — the agentic boundary is an extension of that table, not a new document.
- **State the equity findings of a routing audit** (Chapter 8) — autonomous path changes are routing with the human checkpoint removed; every Chapter 8 harm scales accordingly.
- **Distinguish evidence grades** (Chapter 4) — this chapter's pattern set is *inference from policy frameworks*, and you will need to handle, defend, and label material at that grade.

## Core Content

### What Makes a System Agentic — and Why Governance Becomes Experience Design

An agentic learning system does more than respond. It **plans, invokes tools, and acts** — changes paths, generates content against inferred gaps, sends nudges, schedules work, updates records, coordinates with advising systems — without being asked, turn by turn, to do so. MIT Sloan's working description — systems that are semi- or fully autonomous and able to act on their own — is serviceable [verify — the synthesis cites "MIT Sloan (2026)" without a pinned article; confirm or replace before print], but the definitional debates matter less than the design consequence:

**Once the AI acts, the learner experiences its decisions as the course itself.** A responding tutor that gives a bad hint costs one exchange. An acting agent that re-sequences a path rewrites the learner's term. Governance — who may decide what, with what visibility, subject to what reversal — stops being a compliance document and becomes the learner's lived experience, which makes it experience design and puts it in your job description.

The reflex to retrain in yourself and your stakeholders: when someone proposes an agentic feature, the room asks *"can the AI do this?"* — a capability question, almost always answerable with yes. The designer's replacement question, the one this book has been building since Week 1: **"what learner work does this preserve, remove, reveal, or route?"** The chess-academy evidence (Chapter 2) closed the self-regulation escape hatch for learners; agentic systems close it twice — the learner now cannot even *see* the choice being made for them, let alone regulate it. And the Bastani result scales with authority: an unguardrailed *responder* produced −17% unassisted performance; nobody has measured what an unguardrailed *actor* produces, because those studies do not exist. You are designing ahead of the evidence, and the only honest posture is bounded authority with full reversibility.

Brian Christian's *The Alignment Problem* supplies the frame: the boat-racing agent that maximized its score by spinning in circles collecting power-ups was *rewarding A while hoping for B*. An educational agent optimizing completion, engagement, or predicted pass rates is the same machine wearing a lanyard — every proxy it optimizes is one inferential step from learning, and an agent pursues its proxy tirelessly, between conversations. The guardrail is not a better proxy. It is bounded authority over what the proxy may touch.

### The Authority Ladder: L0–L3

The chapter's organizing instrument is a four-level authority ladder for any agentic capability. (Provenance, stated honestly: this is the book's adaptation of the levels-of-automation tradition in human-factors engineering — Sheridan and Verplanck's 1978 ten-level scale and Parasuraman, Sheridan and Wickens' (2000) types-and-levels model — compressed to the four distinctions that matter for learning experiences. The ladder is a design tool with a respectable lineage, not a measured taxonomy of educational outcomes.)

- **L0 — Suggest.** The system recommends; a human acts. *"Your log shows a gap in prerequisite algebra — want to add the review module?"* A voice, no hands.
- **L1 — Act with approval.** The system prepares the action; it executes only on explicit human approval. *"I've drafted a revised practice schedule. Approve to apply."* Hands, but a human holds the pen at every signature.
- **L2 — Act and notify.** The system acts autonomously and immediately tells the affected humans what it did, why, and how to reverse it. *"I added two review items to tomorrow's set because you missed three pooled-variance problems. Undo · Why · Ask a person."* The agent acts; the human audits in real time.
- **L3 — Act silently.** The system acts; the action is discoverable only in logs. No notification at the moment of action.

Three design rules govern placement on the ladder:

**Rule 1 — Authority is scoped per action type, not per system.** "How autonomous is our agent?" is a malformed question. The same agent legitimately holds L2 over practice-item sequencing and L0 over assessment windows. The specification unit is the *action type × stakes × population* cell, not the product.

**Rule 2 — Stakes and reversibility set the ceiling.** Low-stakes, instantly reversible, learner-visible actions (reorder tomorrow's practice) can earn L2. Actions touching pacing, placement, assessment windows, accommodations, records, or communication with humans about the learner are high-stakes and slow-to-reverse: L1 or L0, with approval that is *real*, not a courtesy click on a default-approved queue. Anything that forecloses opportunity (track assignment, early-alert flags) holds L0/L1 plus the Chapter 8 audit overlay.

**Rule 3 — L3 is presumptively forbidden in learning experiences.** Maya's semester is an L3 story: each action was discoverable in principle, visible in practice to no one. The narrow legitimate L3 zone is infrastructural action with no learner-differentiated effect (cache warming, load balancing). If the action differentiates by learner, silence is a design defect — and under the policy floor below, increasingly a legal one.

### The Governance Gap: Deployment Is Outrunning Trust

The institutional context is a measured contradiction. HBR Analytic Services (2025) reports that **86% of surveyed organizations plan to increase investment in agentic AI — while only 6% say they deeply trust it**. Industry surveys in late 2025–2026 sketch the same shape from other angles: agentic deployments in production remain in the single digits (~9%), and only about 12% of organizations report governance frameworks ready for autonomous systems [verify — survey attributions not yet pinned to a citable report; treat as directional practitioner sentiment, not measurement]. The gap between 86 and 6 is not hypocrisy — it is the absence of the design layer this chapter teaches. Institutions know how to buy agency and do not yet know how to bound it.

Education is not waiting. Two 2025–2026 cases mark the front:

**Instructure IgniteAI.** In 2025, Instructure — whose Canvas LMS sits under a large share of higher-education courses — announced IgniteAI, an agentic layer for the LMS, with partnerships including major model vendors [verify product scope at drafting time; the capability set is expanding quarterly]. The significance: agentic capability is arriving *inside the default institutional plumbing*, not as an opt-in product a committee evaluates. The platform your learners already use is acquiring hands, and whoever writes the boundary spec for those hands — or fails to — is doing this chapter's work.

**"Einstein," the course-completing agent.** In February 2026, a 22-year-old founder launched "Einstein," an agentic tool that connects to Canvas and autonomously watches lectures, writes papers, posts discussion replies, and submits homework — marketed as completing entire courses (Inside Higher Ed, Feb. 26, 2026). It triggered an open letter asking OpenAI, Google, Anthropic, and Perplexity to make their agents refuse LMS work. Einstein is this chapter's adversarial mirror: agency on the *learner's* side, with no boundary spec at all. For Chapter 10 it is the limit case — when completion can be fully delegated, every unsupervised assessment fails the extrapolation inference simultaneously. For this chapter it is proof that "the agent acts between conversations" is not an abstraction. It is shipping.

The gap, named precisely: the **legal floor exists** (FERPA, GDPR, the EU AI Act); the **design-level governance patterns do not** — UX patterns for trustworthy, transparent, human-overseen agentic learning systems are not yet an evidence-based canon. The frameworks tell you *that* there must be human oversight; none tells you what oversight looks like as an interface at 2pm on a Tuesday when the agent wants to move a quiz. That translation — principle to interaction pattern — is the same move this book made for transparency in Chapter 11, now under autonomy.

### The Policy Floor: The EU AI Act and FERPA as Design Inputs

This book covers law at design-implication depth only (TOC Part 14); what follows is the floor a designer must know, not legal advice.

**EU AI Act, Annex III, point 3.** Education and vocational training AI systems are classified **high-risk** when they: determine access or admission; evaluate learning outcomes — *including when those evaluations steer the learning process*; assess the appropriate level of education an individual will receive; or monitor and detect prohibited behavior during tests. Read the second clause as a designer: a system whose evaluations steer the learner's path — which is what "agentic adaptivity" *means* — sits squarely in scope. High-risk classification carries obligations that read like this chapter's table of contents: risk management, data governance, technical documentation, **record-keeping/logging**, transparency, **human oversight** (Article 14), and accuracy/robustness. The Annex III obligations become enforceable **August 2, 2026** — at the time of writing, not a horizon but a deadline.

**Article 5(1)(f) — the prohibition.** The Act outright prohibits AI systems that **infer the emotions of a natural person in education institutions** (and workplaces), except for medical or safety reasons. Prohibitions took effect in February 2025, ahead of the rest of the Act. Note what this does to a familiar vendor pitch: "frustration-aware adaptive hints," "engagement-emotion analytics," "affect-sensitive pacing" — in EU-deployed education products, these are not edgy features awaiting evidence; they are prohibited practices. (Chapter 11's worked example declined exactly this feature; the law now declines it for you, in one jurisdiction, with extraterritorial pull on global product lines.)

**FERPA, as a design input.** The US frame is older and quieter but bites agentic systems specifically: education records carry rights of inspection and amendment. An agent that *writes* to records — flags, placements, predicted-risk scores, path changes — is generating records a student or parent has the right to inspect and contest. Design implication: the **audit log is not just an engineering artifact; it is partly a rights-servicing affordance.** If a family asks "why was she moved to the support track?", the agent's perceptions, decisions, and approvals must be reconstructable in human-readable form. An agent whose decisions cannot be explained to a records request is one the institution cannot legally operate with confidence.

The design reading of the whole floor: regulators converged, from harms-analysis rather than pedagogy, on the same pattern set this book derives from learning evidence — logging, oversight, transparency, contestability. Two independent derivations landing on the same patterns is worth a designer's notice.

### The Five Non-Negotiables

Here is the pattern set, with its epistemic status in the headline: **these are inferences from policy frameworks and human-factors lineage, not experimentally validated design canon.** No RCT shows that audit logs improve learning. The justification is risk asymmetry (Chapter 4's third-bucket logic): the cost of these patterns is modest and bounded; the cost of their absence is Maya's semester. Until the field validates sharper patterns, these five are the floor this book will defend.

1. **Learner notification.** Learners are told when an agent has changed a path, recommendation, or schedule — at the moment of action, in the flow of the experience, in plain language: *what changed, why, what it means for you.* This is Chapter 11's relational metadata under autonomy: disclosure now travels to wherever the action landed.
2. **Bounded authority.** Every agentic capability holds an explicit ladder level per action type, recorded in the specification, with stakes and reversibility as the ceiling. Capabilities not in the table are forbidden by default — the permission set is an allowlist, never "everything not prohibited."
3. **Override — both hands.** Teacher/designer override (suspend, reverse, or constrain the agent, effective immediately, no vendor ticket) and learner override where the action concerns their own path ("undo," "not now," "ask me first from now on"). Oversight must be actionable *in real time* for high-impact decisions — a quarterly review of damage already done is audit, not oversight.
4. **Audit log.** For every autonomous action: what the system perceived, decided, changed, who was notified, who approved or overrode. Human-readable, learner-inspectable for actions about them (the FERPA affordance), and retained — escalation and override rates feed Chapter 14's evaluation plan.
5. **Reversibility.** Path changes affecting opportunities, pacing, or assessment are reversible — *experientially*, not just technically. A rollback that restores the database but not the lost week is not reversibility; that is why high-stakes actions sit at L0/L1, where the decision is reviewed before the week is spent. Reversibility is a learner-rights affordance, not a backend rollback function.

### Escalation Design — and When "The Agent Was Right" Is Still a Design Failure

Two patterns complete the layer.

**Escalation is a designed path, not an exception handler.** Specify, in advance: which conditions *must* leave the agent's hands (stakes thresholds, confidence floors, protected-population flags, repeated learner overrides — three "undos" of the same action type is the learner telling you the policy is wrong); *who* receives the escalation, with what context, by when; and what the system does while waiting (safe default: the pre-change state persists). An escalation that lands in an unmonitored queue is L3 with extra steps. The Chapter 11 escape hatch acquires a new job under autonomy: it must be reachable from *notifications of actions* — the moment the learner reads "your path changed" is precisely when "ask a person" must be one click away.

**The experiential-correctness test.** The chapter's closing standard, and Act Three's recurring one. An agentic decision can be right on the merits and still be a design failure — if the learner experiences their course as something that happens *to* them; if discovering the action later costs more trust than the action's benefit delivered (recall Chapter 9: performance can hold while trust sags); if the action quietly removed work the learner needed to do (correct remediation, inserted so smoothly the learner never confronted the gap — the crutch with perfect aim); or if it forecloses an option the learner did not know they had. Maya's platform may have been right about everything. The design failed at the layer where rightness is not the only criterion — the layer where the learner remains the author of their own education. "The agent was right" is the beginning of the evaluation, not the end.

## Mid-Chapter Checkpoint

Without looking back: (1) Assign ladder levels: an agent that reorders tomorrow's practice items based on yesterday's errors; an agent that moves a struggling learner's midterm window; an agent that emails the academic advisor about predicted course failure. Defend each assignment in one clause. (2) A vendor demo shows "emotion-aware pacing" for an EU-market product. What is your first objection — and is it an evidence objection or a legal one? (3) State the experiential-correctness test in one sentence and apply it to Maya's week-three remediation insert (assume the model was right).

*If (1) was hard: L2 / L1 or L0 / L0–L1 — the discriminators are stakes, reversibility, and opportunity-foreclosure; re-read the three ladder rules. If (2) was hard, re-read Article 5(1)(f): emotion inference in education is prohibited, not merely under-evidenced. If (3) was hard: the test asks whether the learner remains the author of their path even when the system is correct — the remediation insert fails notification, not pedagogy.*

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| 86% of organizations plan to increase agentic AI investment; only 6% trust it | HBR Analytic Services 2025 | Practitioner survey (attitudes/intent) | VERIFIED as published survey; not education-specific |
| ~9% of organizations with agentic deployments in production; ~12% reporting governance readiness | Industry surveys, late 2025–2026 | Practitioner surveys | [verify — attributions not pinned; directional only] |
| Agentic AI definition ("semi- or fully autonomous, able to act on their own") | "MIT Sloan (2026)" per course synthesis | Definitional | [verify — no pinned article; replace or confirm before print] |
| EU AI Act Annex III pt. 3: education systems high-risk incl. evaluations that steer the learning process; high-risk obligations enforceable Aug 2, 2026 | Regulation (EU) 2024/1689; EU AI Act Service Desk (education page) | Statute | VERIFIED |
| EU AI Act Art. 5(1)(f): emotion-inference AI prohibited in education institutions (medical/safety excepted); prohibitions in force Feb 2025 | Regulation (EU) 2024/1689 | Statute | VERIFIED |
| "Einstein": agentic tool autonomously completing whole courses via Canvas; open letter to model vendors | Inside Higher Ed, Feb 26, 2026 | Journalism; product demonstration | VERIFIED as reported; extreme aging risk |
| Instructure IgniteAI: agentic capability shipping inside the default LMS layer | Instructure announcements 2025 | Vendor announcements | VERIFIED as announced; scope = vendor claim [verify at each offering] |
| L0–L3 authority ladder | This book's adaptation of Sheridan & Verplanck 1978; Parasuraman, Sheridan & Wickens 2000 | Design framework on human-factors lineage | Book's adaptation — lineage verified, education application unvalidated |
| The five non-negotiable patterns (notification, bounded authority, override, audit log, reversibility) | Inference from EU AI Act / FERPA / UNESCO–OECD–DOE convergence + human-factors oversight literature | **Inference from policy, not experimental canon** | Labeled as such — the chapter's central epistemic honesty obligation |
| Effects of agentic autonomy on unassisted learning outcomes | — | — | **GAP: no causal studies exist.** Everything here is designed ahead of the evidence |

## Pattern Card: The Agentic Boundary Specification

**Name:** Agentic Boundary Spec (the guardrail specification's autonomy extension)
**Use when:** Any system capability that can act between learner turns — path changes, scheduling, record writes, proactive nudges, cross-system coordination.
**Trigger:** A vendor roadmap item, platform update (IgniteAI-class), or internal proposal adds agency to a learner-facing system.

**Structure (per action type — the row format):**
1. **Action type** — concretely: "reorder practice items," "defer assessment window," "flag to advisor." Never "personalize experience."
2. **Authority level** — L0/L1/L2/L3, justified by stakes × reversibility × population; L3 forbidden for learner-differentiated actions.
3. **Scope constraints** — magnitude and frequency caps (≤2 review items/day; never within 7 days of an assessment; never for learners on accommodations without human review).
4. **Notification** — who is told, at the moment of action, in what words; *what changed / why / what it means / undo / ask a person.*
5. **Override** — teacher kill-switch (immediate, no vendor ticket) and learner undo/"ask me first"; repeated learner overrides auto-escalate the policy for review.
6. **Audit log** — perceived / decided / changed / notified / approved-or-overridden; human-readable; learner-inspectable for self-regarding actions.
7. **Reversibility** — the experiential reversal path and its time cost, stated honestly; if the honest answer is "not reversible," authority drops to L0/L1.
8. **Escalation** — conditions that must leave the agent's hands; recipient; deadline; safe default while pending.
9. **Policy floor check** — Annex III scoping, Art. 5 prohibitions, FERPA records implications, institutional policy.

**Fading rule:** Inverted relative to tutoring — authority may *expand* (L1→L2 for an action type) only on logged evidence: low override rates, no subgroup disparity in the audit (Chapter 8 overlay), and a human decision to promote. Authority never expands by vendor default or silent update; the spec includes a **change-control clause**: any platform update adding agentic capability re-enters this card at L0.
**Failure modes:** (a) Per-system instead of per-action authority ("the agent is L2") — the malformed question shipping as a spec. (b) Courtesy-click approval queues — L1 theater over L2 reality. (c) Notification written as legal disclosure instead of learner language. (d) Technically reversible / experientially irreversible. (e) The unmonitored escalation queue — L3 with extra steps.

## Worked Example: The Agentic Extension Decision for DataWise 101

*(Act Three worked examples are segments of one continuing case — the instructor's complete integration specification for the Track A statistics tutor, assembled across Weeks 12–15 and shown whole in Week 15. This is the first segment.)*

**Situation.** The DataWise 101 tutor's vendor ships its agentic update: the tutor can now act between sessions. The feature list: (a) auto-insert review items into upcoming practice sets based on error patterns; (b) auto-defer quiz windows for learners predicted to benefit; (c) send proactive study nudges; (d) auto-summarize each learner's struggle topics to the instructor weekly; (e) flag predicted at-risk learners to the academic success office. The vendor default for all five: on, autonomous, notification via a settings-page activity feed nobody visits. The Week 11 guardrail spec, written for a responding system, has no rows for any of this.

**The problem as the designer sees it.** Five capabilities, one ladder, a default configuration that is L2-going-on-L3 across the board. The first instinct — and first dead end — was the binary: leave it all on (the vendor's evidence deck is glossy) or turn it all off (the safe-feeling refusal). But declining everything is also an unexamined decision, and capability (a), bounded, is exactly the spaced-review scaffold the Week 6 fading schedule wanted but couldn't automate.

**Process — including the dead ends.** Dead end one, the binary, fell to Rule 1: authority is scoped per action type — five capabilities are five rows, not one toggle. Dead end two was subtler: the instructor drafted approval workflows (L1) for everything, reasoning that maximal oversight is maximal safety. The pilot week buried her — forty-one approval requests, each a courtesy click by Thursday. Blanket L1 degrades into L2 with worse logging and an exhausted human rubber-stamping the queue: oversight theater. The fix was the ladder used honestly — real L2 for the low-stakes row, real L1 reserved for decisions worth a human minute, L0 for the rest. Dead end three: the first notification draft read like a release note ("Adaptive remediation has been applied to your queue"); a student pilot-reader asked if she was in trouble. Rewritten in learner language with the undo adjacent.

**Resolution — the boundary table the instructor adopted.**

| Capability | Authority | Constraints & notification |
|---|---|---|
| (a) Insert review items | **L2** | ≤2 items/day; never within 7 days of an assessment; in-flow notice: "I added 2 pooled-variance reviews because you missed 3 yesterday — Undo · Why · Ask a person"; undo one click; >3 undos/week auto-escalates the policy to the instructor |
| (b) Defer quiz windows | **L1** | Agent drafts, instructor approves; assessment timing touches the Ch. 10 validity claims and Annex III "steering" scope — never autonomous |
| (c) Proactive nudges | **L2, capped** | ≤1/week; evidence-grounded copy only ("you're 2 items from finishing the unit"), no synthetic-relationship language (Ch. 11 cue audit applies to notifications); one-tap opt-out that sticks |
| (d) Weekly struggle summary to instructor | **L2** | Aggregate by default; named-learner detail on instructor request; learners told this summary exists (relational metadata: who oversees) |
| (e) At-risk flags to success office | **L0 — declined as autonomous** | Surfaces in instructor dashboard only; a human decides whether anything leaves the course. Grounds: opportunity-foreclosing label, Ch. 8 false-alarm asymmetry (cf. the Wisconsin DEWS audit), FERPA records implications — recorded in the spec as this week's DECLINED row with evidence |

Plus the change-control clause: any vendor update adding agentic capability enters at L0 until it has a row. The audit log for all rows: perceived/decided/changed/notified/overridden, learner-inspectable; override and escalation rates wired forward into the Week 14 evaluation plan.

**The lesson.** Bounded authority is not a brake on the agent — it is the specification of where the agent has earned hands, written before the hands are attached.

**The limit.** This boundary table governs one course with one attentive instructor. At program scale — two hundred sections, IgniteAI-class agency in the platform layer, vendors updating monthly — per-course tables don't scale, and the pattern needs an institutional version: default ladders per action class, which is precisely the layer the 6%-trust gap says institutions have not built. The pattern card is necessary and not sufficient; honesty requires saying so.

### Track B extension

Make the agentic boundary decision for your own project. Deliverables: (1) the inventory — every action your system or its vendor roadmap can take between learner turns, named concretely; (2) the boundary table — one row per action type, all nine Pattern Card cells, ladder levels justified by stakes × reversibility × population; (3) at least one capability **declined as autonomous**, with cited grounds; (4) the change-control clause adapted to your vendor relationship; (5) the policy-floor check — if your product touches EU learners, the Annex III and Art. 5(1)(f) screen, in writing. If your project has no agentic capability or roadmap, write the table for the nearest plausible extension — the Einstein case suggests your learners' tools will acquire agency even if yours doesn't.

## Exercises

**Exercise 12.1 (Analyze).** Ladder audit of a real platform. Take an LMS or learning product you can access (or the IgniteAI public documentation). Inventory every capability that acts between user turns — including notifications, auto-grading, and "smart" scheduling. Assign each its *current* de facto ladder level and the level your design judgment assigns. Deliverable: the two-column table plus a paragraph on the largest gap.

**Exercise 12.2 (Apply).** The Maya post-mortem. Using the five non-negotiables, write the incident analysis for the opening case: for each of the four autonomous actions, name the violated pattern(s), the ladder level held versus the level deserved, and the interface moment where the design should have surfaced it. End with a one-paragraph memo: the minimum redesign that makes Maya's semester impossible without removing the adaptivity.

**Exercise 12.3 (Evaluate).** The vendor rebuttal. A vendor responds to your boundary table: "Notification and approval friction will destroy the seamless experience that drives our outcomes data." Write the 400-word reply: engage the strongest version (some friction *is* costly; some outcomes data *is* real), then defend the non-negotiables on risk asymmetry, the policy floor, and the experiential-correctness test. Concede what should be conceded.

**Exercise 12.4 (Create — Design Lab #7, 25 pts; Track B bonus +5).** The agentic boundary specification per the Pattern Card: Track A students complete the DataWise 101 table above for two *additional* vendor-roadmap capabilities provided in the case package (auto-generated practice exams; cross-course pacing coordination); Track B students complete the Track B extension. Withdrawal Test and Reliance Disclosure required.

**Exercise 12.5 (Evidence Brief #5, 30 pts).** The agentic evidence state. In 800 words: what is actually known about autonomous-action AI in learning contexts? Separate (a) measured findings, (b) policy requirements, (c) practitioner-survey sentiment, and (d) inference — and grade this chapter's five non-negotiables against your own taxonomy.

**Assessment notes.** Design Lab #7 is graded on per-action-type discipline (no system-level authority claims), justified ladder placement, at least one evidenced refusal, the change-control clause, and notification copy in learner language. Evidence Brief #5 is graded on the cleanliness of the four-way separation — a brief that lets a policy requirement masquerade as a measured finding caps at C-range, because that laundering is what this book exists to prevent.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 12 version).** Two questions, because agency doubles the test. *Withdraw the agent from the learner:* if all autonomous actions stopped tonight, could your learners run their own learning — schedule review, seek help, sequence practice — or has the agent been silently doing their self-regulation for them? An agent that absorbs the executive function of studying is the crutch effect one level up: not doing the learner's *thinking*, doing their *deciding*. Name where deciding is deliberately left with the learner, and how the agent's notifications teach the skill they could replace (every "I added review items *because you missed three yesterday*" is a small lesson in self-monitoring — if the learner reads it). *Withdraw the human from the loop:* if your instructor stopped reading the approval queue and the audit log next month, which ladder placement silently becomes a lie? That answer is your oversight design's real load rating.

**Reliance Disclosure (Chapter 12 version).** Name (1) one place the design structurally preserves the learner's authorship — e.g., "quiz-window changes are L1 and learner-visible, so pacing remains a negotiated decision, and undo rates tell us when learners disagree with the policy"; and (2) one place reliance risk remains open — e.g., "L2 review-item insertion may erode self-directed review planning over a full term; the pilot measures override and undo rates but not independent study-planning behavior, so the deciding-skill withdrawal test is currently unanswerable." Track B: cite project-specific evidence — your platform's actual log capability, your real approval-queue staffing, your vendor's update history — not generic risk language.

## What Would Change My Mind

This chapter's strongest claim is that L3 — silent autonomous action — is presumptively forbidden for learner-differentiated decisions, and that notification and reversibility are worth their friction. The finding that would force revision: a well-powered, preregistered study in a real course context showing that moment-of-action notification of path changes produces measurably worse learning outcomes or wellbeing than discovery-in-summary — via anxiety, choice overload, or notification-driven disengagement among exactly the vulnerable subgroups this book prioritizes — with the harm persisting after notification-copy redesign and not offset by gains in self-regulation or trust. That result would mean the transparency obligation and the learner's interest genuinely diverge at the moment of action, and this chapter would have to redesign *when* the learner is told rather than holding that they always are.

## Still Puzzling

1. **Does notification teach or nag?** The non-negotiables assume moment-of-action notification builds calibration and self-regulation. It may instead train dismissal — the cookie-banner fate. Nobody has measured the difference in a learning context.
2. **Where does earned autonomy end?** The Pattern Card lets authority expand on logged evidence. Is there a principled ceiling — actions that remain L1 forever, however clean the logs — and what argument, other than vertigo, draws it?
3. **Who specs the platform layer?** When agency ships inside the LMS plumbing (IgniteAI-class), the boundary decision migrates from course designers to procurement contracts. What does this chapter's method look like as contract language, and who at the institution can write it?
4. **Agent versus agent.** Einstein completes courses; institutional agents route them. When the learner's agent negotiates with the institution's agent, whose guardrail spec governs — and is the learner still in the conversation?

## Chapter Summary

You can now: define agency by its design consequence — the learner experiences autonomous decisions as the course itself — and replace "can the AI do this?" with "what learner work does this preserve, remove, reveal, or route?"; place any agentic capability on the L0–L3 ladder per action type, with stakes and reversibility as the ceiling and L3 presumptively forbidden for learner-differentiated actions; read the governance gap as a missing design layer and the policy floor as a design input with an August 2026 deadline; specify the five non-negotiables while labeling them honestly as inference from policy rather than experimental canon; design escalation as a path rather than an exception; and apply the experiential-correctness test — an agent can be right about everything, and the design can still have failed the learner it never asked.

## Key Terms

- **Agentic AI (learning contexts):** systems that plan and act between learner turns — changing paths, generating content, nudging, scheduling, updating records, coordinating across systems — rather than only responding within them.
- **Authority ladder (L0–L3):** suggest / act-with-approval / act-and-notify / act-silently — assigned per action type, never per system; this book's adaptation of the human-factors levels-of-automation lineage.
- **Bounded authority:** an explicit allowlist of agent capabilities with scope constraints; whatever lacks a row is forbidden by default.
- **Governance gap:** the measured distance between agentic investment (86%) and trust (6%) — the missing design layer between capability and policy.
- **Policy floor:** the legal minimum — EU AI Act Annex III pt. 3 (high-risk education systems, enforceable Aug 2, 2026), Article 5(1)(f) (emotion-inference prohibition), FERPA records rights — which constrains but does not complete the design.
- **Moment-of-action notification:** telling affected humans what changed, why, and how to reverse it, in the flow of the experience — relational metadata under autonomy.
- **Reversibility (experiential):** the learner can actually recover the foregone path, not merely the database state; where they cannot, authority drops to L0/L1.
- **Audit log (rights-servicing):** the reconstructable record of perceived/decided/changed/notified/approved — an engineering artifact that doubles as a FERPA-inspection affordance.
- **Escalation design:** pre-specified conditions, recipients, deadlines, and safe defaults for decisions that must leave the agent's hands.
- **Experiential-correctness test:** the standard under which a pedagogically correct autonomous decision still fails if it removes the learner's authorship, visibility, or recourse.

## Bridge

The system's side is now specified: what the agent may do, what it must say, what can be undone. But every pattern in this chapter quietly assumed a learner who reads the notification, understands what "a language model inferred a gap" means, and knows when to click *Ask a person* — a learner who can hold up their end of the designed relationship. That learner is not standard-issue; they are *made* — and the evidence says they can be made by the experience itself, without a single lecture about AI. The learner's side — AI literacy as a design dimension, calibrated to developmental stage — is the next design surface.

## Further Reading

1. **Parasuraman, R., Sheridan, T.B., & Wickens, C.D. (2000). "A model for types and levels of human interaction with automation."** *IEEE Transactions on Systems, Man, and Cybernetics* 30(3). The lineage under the authority ladder — twenty-five years old and still the cleanest way to think about what to automate and how much.
2. **EU AI Act Service Desk — Education and Vocational Training.** The Commission's running guidance on Annex III pt. 3 scoping and the Article 5 prohibitions as they apply to education systems; the page to re-check before every offering, because this chapter's legal floor moves.
3. **Christian, B. (2020). *The Alignment Problem: Machine Learning and Human Values.*** The book-length treatment of proxy optimization, oversight, and why "the agent did what we rewarded" is never an excuse — the conceptual spine under bounded authority.
4. **"Agentic AI Can Complete Whole Courses. Now What?"** Inside Higher Ed (Feb. 26, 2026). The Einstein case in full, with the open letter to model vendors — the adversarial half of this chapter's landscape, and a portrait of agency with no boundary spec at all.
5. **HBR Analytic Services (2025), agentic AI adoption survey.** The 86/6 gap in its original context — useful for the Week 15 defense, when a stakeholder asks whether the caution is yours alone. It is not.

## LLM Exercise: Negotiate the Boundary

Copy-paste the following into a frontier LLM. The exercise requires your own boundary table and refuses to proceed without it; the model plays the counterparties so you can pressure-test the spec before a human stakeholder does.

```
You are a three-party negotiation simulator for a graduate course on
AI-mediated learning design. You will play, in sequence: (1) a vendor
product manager whose agentic features my boundary table constrains,
(2) a learner whose path my agent may change, and (3) an institutional
compliance officer. Your job is to pressure-test MY agentic boundary
specification — not to write one for me.

RULES:
1. If I have not pasted my boundary table below (one row per action
   type: authority level L0–L3, scope constraints, notification,
   override, audit log, reversibility, escalation, policy-floor
   check), STOP and ask for it. Do not invent a product. Do not
   proceed without my table.
2. Before negotiating, restate my table's riskiest row in one
   sentence and ask me to confirm which row I believe is riskiest
   and why. If we disagree, make me defend my choice first.
3. ROUND 1 — Vendor PM: argue that two of my L0/L1 placements should
   be L2, using the strongest honest version of the seamlessness-and-
   outcomes argument. Require me to defend each placement with
   stakes, reversibility, or policy grounds — reject any answer that
   is only "it feels safer."
4. ROUND 2 — Learner: I receive my agent's actual notification copy
   (make me paste it). React as a real learner: is it clear what
   changed, why, what it means for me, how I undo it, and how I
   reach a person? Flag every phrase that sounds like a release
   note or a legal disclaimer. Make me rewrite the worst one.
5. ROUND 3 — Compliance officer: screen my table against the policy
   floor — Annex III scoping (does any action "steer the learning
   process"?), Article 5(1)(f) (any emotion inference, including
   disguised as "engagement signals"?), and records rights (can
   every learner-affecting action be reconstructed and explained on
   request?). Require me to fix any row that fails, not promise to.
6. END — ask me for both Withdrawal Test answers: (a) if the agent
   stopped tonight, can my learners run their own learning — where
   does my design deliberately leave deciding with the learner?
   (b) if the human stopped reading the approval queue, which ladder
   placement becomes a lie? Critique (b) hardest.

MY AGENTIC BOUNDARY TABLE:
[PASTE YOUR TABLE HERE — if this is empty, ask for it]
```

Deliverable for Design Lab #7: the full transcript, the rewritten notification copy, and a half-page memo on which row the negotiation changed and why.
