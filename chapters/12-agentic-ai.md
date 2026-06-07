# Chapter 12 — Agentic AI: Bounded Authority and Reversible Paths
*Once the AI acts, the learner experiences its decisions as the course itself.*

In week three, the platform noticed Maya's weak quiz performance on prerequisite algebra and quietly front-loaded two remediation modules into her path. Defensible: the knowledge-tracing model flagged a real gap. In week five, it deferred her unit-two mastery quiz by six days — learners with her profile score better with the runway, per last year's cohort. In week eight, it swapped her project dataset for a more structured one and nudged her toward the standard-track recitation. In week eleven, it shifted her final assessment window into the late slot it predicted she would pass.

In week fifteen, Maya — who had noticed only that the course felt oddly smooth — met with her advisor and discovered she had completed the *support track*: a different module sequence, a deferred quiz, a simplified project, a rescheduled final. Nothing she had chosen. Nothing she had been told. Nothing she could now un-choose, because the semester was over.

Here is the part that makes this a design chapter and not a horror story: **suppose every individual decision was pedagogically correct.** The system could win every appeal on the merits — and the experience is still a failure, because Maya's semester was authored by something she never met, never authorized, and could not see. Her answer to "what happened this term?" is "I don't know, and I wasn't asked."

The question this chapter equips you to answer precisely: *what, exactly, went wrong — and at which design layer?* Not the model layer — assume the inferences were sound. Not the policy layer — assume FERPA was honored. The failure sits in the missing layer between them: nobody specified what the system could do on its own, what it owed the learner at the moment of action, and how a decision could be seen, questioned, and reversed. That layer is yours.

<!-- → [DIAGRAM: four-layer stack — top layer: "Model Layer" (inference quality, knowledge tracing); second layer: "Policy Layer" (FERPA, EU AI Act, institutional policy); third layer — highlighted in red, labeled "MISSING": "Design Layer (what may the agent do? what does it owe the learner? how is it reversed?)"; bottom layer: "Learner Experience (what Maya actually experienced)." Arrow from gap pointing to: "This chapter." Caption: "Maya's semester failed at the middle layer — the one between model capability and policy compliance that nobody had specified."] -->

---

An agentic learning system does more than respond. It **plans, invokes tools, and acts** — changes paths, generates content against inferred gaps, sends nudges, schedules work, updates records, coordinates with advising systems — without being asked, turn by turn, to do so. The definitional debates matter less than the design consequence: **once the AI acts, the learner experiences its decisions as the course itself.** A responding tutor that gives a bad hint costs one exchange. An acting agent that re-sequences a path rewrites the learner's term. Governance — who may decide what, with what visibility, subject to what reversal — stops being a compliance document and becomes the learner's lived experience. That makes it experience design, and it puts it in your job description.

The reflex to retrain in yourself and your stakeholders: when someone proposes an agentic feature, the room asks *"can the AI do this?"* — a capability question, almost always answerable with yes. The designer's replacement question: **what learner work does this preserve, remove, reveal, or route?** The Bastani result scales with authority: an unguardrailed *responder* produced −17% unassisted performance; nobody has measured what an unguardrailed *actor* produces, because those studies do not exist. You are designing ahead of the evidence, and the only honest posture is bounded authority with full reversibility.

Brian Christian's *The Alignment Problem* supplies the frame: the boat-racing agent that maximized its score by spinning in circles collecting power-ups was *rewarding A while hoping for B*. An educational agent optimizing completion, engagement, or predicted pass rates is the same machine wearing a lanyard — every proxy it optimizes is one inferential step from learning, and an agent pursues its proxy tirelessly, between conversations. The guardrail is not a better proxy. It is bounded authority over what the proxy may touch.

---

The chapter's organizing instrument is a four-level authority ladder for any agentic capability. (Provenance, stated honestly: this is the book's adaptation of the levels-of-automation tradition in human-factors engineering — Sheridan and Verplanck's 1978 ten-level scale and Parasuraman, Sheridan and Wickens' 2000 types-and-levels model — compressed to the four distinctions that matter for learning experiences. It is a design tool with a respectable lineage, not a measured taxonomy of educational outcomes.)

**L0 — Suggest.** The system recommends; a human acts. *"Your log shows a gap in prerequisite algebra — want to add the review module?"* A voice, no hands.

**L1 — Act with approval.** The system prepares the action; it executes only on explicit human approval. *"I've drafted a revised practice schedule. Approve to apply."* Hands, but a human holds the pen at every signature.

**L2 — Act and notify.** The system acts autonomously and immediately tells the affected humans what it did, why, and how to reverse it. *"I added two review items to tomorrow's set because you missed three pooled-variance problems. Undo · Why · Ask a person."* The agent acts; the human audits in real time.

**L3 — Act silently.** The system acts; the action is discoverable only in logs. No notification at the moment of action.

Three rules govern placement on the ladder.

**Rule 1 — Authority is scoped per action type, not per system.** "How autonomous is our agent?" is a malformed question. The same agent legitimately holds L2 over practice-item sequencing and L0 over assessment windows. The specification unit is the *action type × stakes × population* cell, not the product.

**Rule 2 — Stakes and reversibility set the ceiling.** Low-stakes, instantly reversible, learner-visible actions can earn L2. Actions touching pacing, placement, assessment windows, accommodations, records, or communication with humans about the learner are high-stakes and slow-to-reverse: L1 or L0, with approval that is *real*, not a courtesy click on a default-approved queue. Anything that forecloses opportunity holds L0/L1 plus an equity-audit overlay.

**Rule 3 — L3 is presumptively forbidden for learner-differentiated actions.** Maya's semester is an L3 story. The narrow legitimate L3 zone is infrastructural action with no learner-differentiated effect — cache warming, load balancing. If the action differentiates by learner, silence is a design defect. Under the policy floor below, it is increasingly a legal one.

<!-- → [DIAGRAM: authority ladder visualization — four rows labeled L0 through L3; horizontal axis shows "agent autonomy" increasing right; vertical axis shows "human visibility" increasing up; L0 at top-left (high visibility, low autonomy), L3 at bottom-right (low visibility, high autonomy). Each level has icon: L0 = microphone; L1 = checkmark gate; L2 = notification bell; L3 = red X labeled "forbidden for learner-differentiated actions." Color band: L0-L2 = green zone; L3 = red. Caption: "Ladder level is assigned per action type. The same agent can hold L2 for practice sequencing and L0 for assessment windows."] -->

---

The institutional context is a measured contradiction. HBR Analytic Services (2025) reports that **86% of surveyed organizations plan to increase investment in agentic AI — while only 6% say they deeply trust it**. Industry surveys in late 2025–2026 sketch the same shape: agentic deployments in production remain in the single digits, and only about 12% of organizations report governance frameworks ready for autonomous systems [verify — survey attributions not yet pinned to a citable report; treat as directional practitioner sentiment, not measurement]. The gap between 86 and 6 is not hypocrisy — it is the absence of the design layer this chapter teaches.

Education is not waiting. In 2025, Instructure — whose Canvas LMS sits under a large share of higher-education courses — announced IgniteAI, an agentic layer for the LMS with partnerships including major model vendors [verify product scope at time of use; the capability set is expanding quarterly]. The significance: agentic capability is arriving *inside the default institutional plumbing*, not as an opt-in product a committee evaluates. The platform your learners already use is acquiring hands, and whoever writes the boundary spec for those hands — or fails to — is doing this chapter's work.

In February 2026, a 22-year-old founder launched "Einstein," an agentic tool that connects to Canvas and autonomously watches lectures, writes papers, posts discussion replies, and submits homework — marketed as completing entire courses (Inside Higher Ed, Feb. 26, 2026). It triggered an open letter asking OpenAI, Google, Anthropic, and Perplexity to make their agents refuse LMS work. Einstein is this chapter's adversarial mirror: agency on the *learner's* side, with no boundary spec at all. When completion can be fully delegated, every unsupervised assessment fails simultaneously. And "the agent acts between conversations" is not an abstraction. It is shipping.

---

This book covers law at design-implication depth only. What follows is the floor a designer must know, not legal advice.

**EU AI Act, Annex III, point 3.** Education and vocational training AI systems are classified **high-risk** when they determine access or admission, evaluate learning outcomes *including when those evaluations steer the learning process*, assess the appropriate level of education an individual will receive, or monitor and detect prohibited behavior during tests. Read the second clause as a designer: a system whose evaluations steer the learner's path — which is what "agentic adaptivity" *means* — sits squarely in scope. High-risk classification carries obligations that read like this chapter's table of contents: risk management, data governance, technical documentation, **logging**, transparency, **human oversight** (Article 14), accuracy and robustness. These obligations became enforceable **August 2, 2026** — at the time of writing, not a horizon but a deadline.

**Article 5(1)(f) — the prohibition.** The Act outright prohibits AI systems that **infer the emotions of a natural person in education institutions**, except for medical or safety reasons. Prohibitions took effect in February 2025. Note what this does to a familiar vendor pitch: "frustration-aware adaptive hints," "engagement-emotion analytics," "affect-sensitive pacing" — in EU-deployed education products, these are not edgy features awaiting evidence; they are prohibited practices.

**FERPA, as a design input.** An agent that *writes* to records — flags, placements, predicted-risk scores, path changes — is generating records a student or parent has the right to inspect and contest. The **audit log is not just an engineering artifact; it is partly a rights-servicing affordance.** If a family asks "why was she moved to the support track?", the agent's perceptions, decisions, and approvals must be reconstructable in human-readable form. An agent whose decisions cannot be explained to a records request is one the institution cannot legally operate with confidence.

The design reading of the whole floor: regulators converged, from harms-analysis rather than pedagogy, on the same pattern set this book derives from learning evidence — logging, oversight, transparency, contestability. Two independent derivations landing on the same patterns is worth a designer's notice.

---

Here is the pattern set, with its epistemic status in the headline: **these are inferences from policy frameworks and human-factors lineage, not experimentally validated design canon.** No RCT shows that audit logs improve learning. The justification is risk asymmetry: the cost of these patterns is modest and bounded; the cost of their absence is Maya's semester.

**Learner notification.** Learners are told when an agent has changed a path, recommendation, or schedule — at the moment of action, in the flow of the experience, in plain language: *what changed, why, what it means for you*. Disclosure now travels to wherever the action landed.

**Bounded authority.** Every agentic capability holds an explicit ladder level per action type, recorded in the specification, with stakes and reversibility as the ceiling. Capabilities not in the table are forbidden by default — the permission set is an allowlist, never "everything not prohibited."

**Override — both hands.** Teacher/designer override (suspend, reverse, or constrain the agent, effective immediately, no vendor ticket) and learner override where the action concerns their own path ("undo," "not now," "ask me first from now on"). Oversight must be actionable *in real time* for high-impact decisions — a quarterly review of damage already done is audit, not oversight.

**Audit log.** For every autonomous action: what the system perceived, decided, changed, who was notified, who approved or overrode. Human-readable, learner-inspectable for actions about them — the FERPA affordance. Escalation and override rates feed the evaluation plan.

**Reversibility.** Path changes affecting opportunities, pacing, or assessment are reversible — *experientially*, not just technically. A rollback that restores the database but not the lost week is not reversibility. That is why high-stakes actions sit at L0/L1, where the decision is reviewed before the week is spent. Reversibility is a learner-rights affordance, not a backend rollback function.

---

Two patterns complete the layer.

**Escalation is a designed path, not an exception handler.** Specify, in advance: which conditions must leave the agent's hands (stakes thresholds, confidence floors, protected-population flags, repeated learner overrides — three "undos" of the same action type is the learner telling you the policy is wrong); who receives the escalation, with what context, by when; and what the system does while waiting — safe default: the pre-change state persists. An escalation that lands in an unmonitored queue is L3 with extra steps.

**The experiential-correctness test.** An agentic decision can be right on the merits and still be a design failure — if the learner experiences their course as something that happens *to* them; if discovering the action later costs more trust than the action's benefit delivered; if the action quietly removed work the learner needed to do (correct remediation, inserted so smoothly the learner never confronted the gap — the crutch with perfect aim); or if it forecloses an option the learner did not know they had. Maya's platform may have been right about everything. The design failed at the layer where rightness is not the only criterion — the layer where the learner remains the author of their own education. "The agent was right" is the beginning of the evaluation, not the end.

---

The DataWise 101 tutor's vendor ships its agentic update: the tutor can now act between sessions. The feature list: (a) auto-insert review items into upcoming practice sets based on error patterns; (b) auto-defer quiz windows for learners predicted to benefit; (c) send proactive study nudges; (d) auto-summarize each learner's struggle topics to the instructor weekly; (e) flag predicted at-risk learners to the academic success office. The vendor default for all five: on, autonomous, notification via a settings-page activity feed nobody visits.

The first dead end was binary thinking — leave it all on or turn it all off. Both are unexamined decisions. Capability (a), bounded, is exactly the spaced-review scaffold the Week 6 fading schedule wanted but couldn't automate. Dead end two: blanket L1 for everything, reasoning that maximal oversight is maximal safety. The pilot week buried the instructor — forty-one approval requests, each a courtesy click by Thursday. Blanket L1 degrades into L2 with worse logging and an exhausted human rubber-stamping the queue: oversight theater. The fix was using the ladder honestly — real L2 for the low-stakes row, real L1 reserved for decisions worth a human minute, L0 for the rest. Dead end three: the first notification draft read like a release note ("Adaptive remediation has been applied to your queue"); a student pilot-reader asked if she was in trouble. Rewritten in learner language with the undo adjacent.

The boundary table the instructor adopted:

**(a) Insert review items — L2.** At most 2 items/day; never within 7 days of an assessment; in-flow notice: "I added 2 pooled-variance reviews because you missed 3 yesterday — Undo · Why · Ask a person"; more than 3 undos/week auto-escalates the policy to the instructor.

**(b) Defer quiz windows — L1.** Agent drafts, instructor approves. Assessment timing touches the Chapter 10 validity claims and Annex III "steering" scope — never autonomous.

**(c) Proactive nudges — L2, capped.** At most 1 per week; evidence-grounded copy only; no synthetic-relationship language; one-tap opt-out that sticks.

**(d) Weekly struggle summary to instructor — L2.** Aggregate by default; named-learner detail on instructor request; learners told the summary exists.

**(e) At-risk flags to success office — L0, declined as autonomous.** Surfaces in the instructor dashboard only; a human decides whether anything leaves the course. Grounds: opportunity-foreclosing label, false-alarm asymmetry (cf. the Wisconsin DEWS audit), FERPA records implications — recorded in the spec as this week's DECLINED row with evidence.

Plus the change-control clause: any vendor update adding agentic capability enters at L0 until it has a row. The audit log for all rows: perceived/decided/changed/notified/overridden, learner-inspectable; override and escalation rates wired forward into the evaluation plan.

<!-- → [TABLE: agentic boundary table — five rows for capabilities a–e; columns: Capability (concrete description), Authority Level, Scope Constraints, Notification copy (plain language), Override mechanism, Audit / Escalation, Policy-floor check. Final row for capability (e) shows red "DECLINED as autonomous" in Authority column with grounds column. Caption: "Bounded authority is not a brake on the agent — it is the specification of where the agent has earned hands, written before the hands are attached."] -->

The lesson: bounded authority is not a brake on the agent — it is the specification of where the agent has earned hands, written before the hands are attached.

The limit: this boundary table governs one course with one attentive instructor. At program scale — two hundred sections, IgniteAI-class agency in the platform layer, vendors updating monthly — per-course tables don't scale, and the pattern needs an institutional version: default ladders per action class. The pattern card is necessary and not sufficient; honesty requires saying so.

---

## Evidence Box

<!-- → [TABLE: evidence summary — columns: Finding, Source, Endpoint type, Status.] -->

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| 86% of organizations plan to increase agentic AI investment; only 6% trust it | HBR Analytic Services 2025 | Practitioner survey (attitudes/intent) | Verified as published survey; not education-specific |
| ~9% of organizations with agentic deployments in production; ~12% reporting governance readiness | Industry surveys, late 2025–2026 | Practitioner surveys | [verify — attributions not pinned; directional only] |
| Agentic AI definition ("semi- or fully autonomous, able to act on their own") | "MIT Sloan (2026)" per course synthesis | Definitional | [verify — no pinned article; replace or confirm before print] |
| EU AI Act Annex III pt. 3: education systems high-risk incl. evaluations that steer learning; obligations enforceable Aug 2, 2026 | Regulation (EU) 2024/1689 | Statute | **Verified** |
| EU AI Act Art. 5(1)(f): emotion-inference AI prohibited in education institutions; in force Feb 2025 | Regulation (EU) 2024/1689 | Statute | **Verified** |
| "Einstein": agentic tool autonomously completing whole courses via Canvas; open letter to model vendors | Inside Higher Ed, Feb 26, 2026 | Journalism; product demonstration | Verified as reported; extreme aging risk |
| Instructure IgniteAI: agentic capability shipping inside the default LMS layer | Instructure announcements 2025 | Vendor announcements | Verified as announced; scope = vendor claim [verify at each offering] |
| L0–L3 authority ladder | This book's adaptation of Sheridan & Verplanck 1978; Parasuraman, Sheridan & Wickens 2000 | Design framework on human-factors lineage | Book's adaptation — lineage verified, education application unvalidated |
| The five non-negotiable patterns | Inference from EU AI Act / FERPA / UNESCO–OECD–DOE convergence + human-factors oversight literature | **Inference from policy, not experimental canon** | Labeled as such — the chapter's central epistemic honesty obligation |
| Effects of agentic autonomy on unassisted learning outcomes | — | — | **GAP: no causal studies exist. Everything here is designed ahead of the evidence** |

---

## What Would Change My Mind

The chapter's strongest claim is that L3 — silent autonomous action — is presumptively forbidden for learner-differentiated decisions, and that notification and reversibility are worth their friction. The finding that would force revision: a well-powered, preregistered study in a real course context showing that moment-of-action notification of path changes produces measurably worse learning outcomes or wellbeing than discovery-in-summary — via anxiety, choice overload, or notification-driven disengagement among exactly the vulnerable subgroups this book prioritizes — with the harm persisting after notification-copy redesign and not offset by gains in self-regulation or trust. That result would mean the transparency obligation and the learner's interest genuinely diverge at the moment of action, and this chapter would have to redesign *when* the learner is told rather than holding that they always are.

---

## Still Puzzling

- **Does notification teach or nag?** The non-negotiables assume moment-of-action notification builds calibration and self-regulation. It may instead train dismissal — the cookie-banner fate. Nobody has measured the difference in a learning context.
- **Where does earned autonomy end?** The Pattern Card lets authority expand on logged evidence. Is there a principled ceiling — actions that remain L1 forever, however clean the logs — and what argument, other than vertigo, draws it?
- **Who specs the platform layer?** When agency ships inside the LMS plumbing, the boundary decision migrates from course designers to procurement contracts. What does this chapter's method look like as contract language, and who at the institution can write it?
- **Agent versus agent.** Einstein completes courses; institutional agents route them. When the learner's agent negotiates with the institution's agent, whose guardrail spec governs — and is the learner still in the conversation?

---

## Exercises

**Warm-up**

1. *(Recall — the ladder rules)* Assign ladder levels to three actions: an agent that reorders tomorrow's practice items based on yesterday's errors; an agent that moves a struggling learner's midterm window; an agent that emails the academic advisor about predicted course failure. Defend each placement in one clause, naming the specific discriminator — stakes, reversibility, or opportunity-foreclosure — that governs.
*Difficulty: low. Tests: the three ladder rules applied to concrete cases; the discrimination between L2 and L1 is the most important call to get right.*

2. *(Recall — the policy floor)* A vendor demo shows "frustration-aware pacing" for an EU-market product. Name your first objection — and state whether it is an evidence objection or a legal one. Then name the specific article and its in-force date.
*Difficulty: low. Tests: Article 5(1)(f) as a prohibition, not merely an evidence gap; the distinction between "under-evidenced" and "prohibited" that the chapter's policy-floor section turns on.*

3. *(Recall — the experiential-correctness test)* State the experiential-correctness test in one sentence. Apply it to Maya's week-three remediation insert, assuming the model's inference was accurate and the inserted modules were pedagogically effective. Name the specific non-negotiable pattern the design violated, and why "the agent was right" is not a sufficient defense.
*Difficulty: low. Tests: the experiential-correctness test as a design standard separate from pedagogical accuracy; learner authorship as the criterion that survives correct inference.*

**Application**

4. *(Apply — ladder audit)* Take an LMS or learning product you can access. Inventory every capability that acts between user turns — including notifications, auto-grading, and "smart" scheduling. Assign each its *current* de facto ladder level and the level your design judgment assigns. Deliverable: a two-column table with a paragraph on the largest gap and what the design should have specified.
*Difficulty: moderate. Tests: ladder assignment on real product capabilities; the distinction between what a system currently does and what it should be authorized to do.*

5. *(Apply — the Maya post-mortem)* Using the five non-negotiables, write an incident analysis for the opening case. For each of the four autonomous actions the platform took, name the violated pattern, the ladder level it held versus the level it deserved, and the interface moment where the design should have surfaced it. End with a one-paragraph memo: the minimum redesign that makes Maya's semester impossible without removing the adaptivity.
*Difficulty: moderate. Tests: applying all five non-negotiables to a single scenario; the distinction between removing adaptivity and bounding it.*

6. *(Apply — notification copy)* Write notification copy for all three L2 capabilities in the DataWise 101 boundary table — practice-item insertion, proactive nudge, and weekly summary announcement. For each, apply three criteria: does it say what changed, why, and what it means for me in plain language; is the undo or opt-out mechanism named and adjacent; and would a learner who has never read a system prompt understand it? Rewrite any line that fails the third criterion.
*Difficulty: moderate. Tests: the difference between release-note language and learner language; the undo-adjacency requirement; plain-language notification as a design artifact, not a compliance checkbox.*

**Synthesis**

7. *(Synthesize — the vendor rebuttal)* A vendor responds to your boundary table: "Notification and approval friction will destroy the seamless experience that drives our outcomes data." Write a 400-word reply: engage the strongest honest version of this argument (some friction is costly; some outcomes data is real), then defend the non-negotiables on risk asymmetry, the policy floor, and the experiential-correctness test. Concede what should be conceded. Do not concede that L3 is acceptable for learner-differentiated actions.
*Difficulty: moderate-high. Tests: steel-manning before rebuttal; the risk-asymmetry argument as the non-negotiables' load-bearing justification when experimental evidence doesn't exist.*

8. *(Synthesize — the withdrawal test, doubled)* The chapter's Withdrawal Test has two questions for agentic systems. First: if all autonomous actions stopped tonight, could your learners run their own learning — schedule review, seek help, sequence practice? Name the specific design elements that deliberately leave deciding with the learner, and how the agent's notifications teach the skill they could replace. Second: if the human stopped reading the approval queue and the audit log next month, which ladder placement silently becomes a lie? Use a real or hypothetical boundary table and answer both questions with specifics.
*Difficulty: high. Tests: the doubled withdrawal concept — withdrawing the agent vs. withdrawing the human oversight; "the agent absorbs executive function" as a crutch-effect analogue at the autonomy level.*

**Challenge**

9. *(Challenge — institutional scaling)* The chapter's limit states: "At program scale — two hundred sections, IgniteAI-class agency in the platform layer, vendors updating monthly — per-course tables don't scale." Design the institutional-level version of the boundary specification: what would a default-ladders-per-action-class framework look like, who governs it, what triggers a row change, and how does it interact with individual course designers who want to tighten or loosen a default? One page, treating this as a real governance design problem.
*Difficulty: high. Tests: scaling the per-course method without losing per-action precision; institutional governance as a design problem, not just a management question.*

---

## LLM Exercise: Negotiate the Boundary

Copy-paste the following into a frontier LLM. The exercise requires your own boundary table and refuses to proceed without it; the model plays the counterparties so you can pressure-test the spec before a human stakeholder does.

---

You are a three-party negotiation simulator for a graduate course on AI-mediated learning design. You will play, in sequence: (1) a vendor product manager whose agentic features my boundary table constrains, (2) a learner whose path my agent may change, and (3) an institutional compliance officer. Your job is to pressure-test MY agentic boundary specification — not to write one for me.

RULES:
1. If I have not pasted my boundary table below (one row per action type: authority level L0–L3, scope constraints, notification, override, audit log, reversibility, escalation, policy-floor check), STOP and ask for it. Do not invent a product. Do not proceed without my table.
2. Before negotiating, restate my table's riskiest row in one sentence and ask me to confirm which row I believe is riskiest and why. If we disagree, make me defend my choice first.
3. ROUND 1 — Vendor PM: argue that two of my L0/L1 placements should be L2, using the strongest honest version of the seamlessness-and-outcomes argument. Require me to defend each placement with stakes, reversibility, or policy grounds — reject any answer that is only "it feels safer."
4. ROUND 2 — Learner: I receive my agent's actual notification copy (make me paste it). React as a real learner: is it clear what changed, why, what it means for me, how I undo it, and how I reach a person? Flag every phrase that sounds like a release note or a legal disclaimer. Make me rewrite the worst one.
5. ROUND 3 — Compliance officer: screen my table against the policy floor — Annex III scoping (does any action "steer the learning process"?), Article 5(1)(f) (any emotion inference, including disguised as "engagement signals"?), and records rights (can every learner-affecting action be reconstructed and explained on request?). Require me to fix any row that fails, not promise to.
6. END — ask me for both Withdrawal Test answers: (a) if the agent stopped tonight, can my learners run their own learning — where does my design deliberately leave deciding with the learner? (b) if the human stopped reading the approval queue, which ladder placement becomes a lie? Critique (b) hardest.

MY AGENTIC BOUNDARY TABLE:
[PASTE YOUR TABLE HERE — if this is empty, ask for it]

---

*Deliverable: the full transcript, the rewritten notification copy, and a half-page memo on which row the negotiation changed and why.*

---

## Further Reading

- **Parasuraman, R., Sheridan, T.B., & Wickens, C.D. (2000). "A model for types and levels of human interaction with automation." *IEEE Transactions on Systems, Man, and Cybernetics* 30(3).** The lineage under the authority ladder — the cleanest way to think about what to automate and how much.
- **EU AI Act Service Desk — Education and Vocational Training.** The Commission's running guidance on Annex III pt. 3 scoping and the Article 5 prohibitions; the page to re-check before every offering, because this chapter's legal floor moves.
- **Christian, B. (2020). *The Alignment Problem: Machine Learning and Human Values*.** The book-length treatment of proxy optimization and oversight — the conceptual spine under bounded authority.
- **"Agentic AI Can Complete Whole Courses. Now What?"** Inside Higher Ed (Feb. 26, 2026). The Einstein case in full, with the open letter to model vendors — agency with no boundary spec at all.
- **HBR Analytic Services (2025), agentic AI adoption survey.** The 86/6 gap in its original context — useful when a stakeholder asks whether the caution is yours alone. It is not.
