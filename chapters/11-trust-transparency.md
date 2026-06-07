# Chapter 11 — Trust, Transparency, and the Designed Relationship

**[GUARDRAIL SPECIFICATION CHECKPOINT]**

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Explain *affective misinformation* — human-like design cues constructing an illusion of relational care — using the verified constructs: the emotional-plausibility/emotional-truth distinction and the five normative principles for literacy-first design (Bhat & Long, AIES-25), and the documented intervention set from the companion-app evidence: dynamic consent scaffolding, reflexivity prompts, and interactional transparency (Bhat, AIES-25).[^1] *(Tracks A and B)*
2. **(Analyze)** Audit a conversational learning interface for trust-miscalibrating design features, classifying each anthropomorphic cue as an honest signal or a false relational claim. *(Tracks A and B)*
3. **(Create)** Design the transparency layer: disclosure as relational metadata, learner-visible AI role, and the single-click human escape hatch the WGU interface findings make non-negotiable — while navigating the measured trust cost of disclosure itself. *(Tracks A and B)*
4. **(Create)** Integrate your Weeks 5–10 decisions into a complete guardrail specification: every AI touchpoint, permitted actions, forbidden actions, fading, disclosure, escalation. *(Checkpoint deliverable, both tracks)*

[^1]: The course TOC names "four vulnerability vectors" (reflection simulation, authority modulation, cognitive-load exploitation, market-security tension) and an "Agency Design Framework" at this point. Those names could not be verified against the published AIES-25 abstracts at the time of writing and await source confirmation against the full texts [verify]. This chapter teaches the verified constructs from the same two papers; if the vectors are confirmed in the full text, they slot into the affective-misinformation section without changing the design method.

## Opening Case: The Companion That Types

A learning companion, mid-market, well-reviewed. When you send a message, three dots pulse before the reply arrives — a simulated typing delay, because instant responses tested as "robotic." It opens sessions with remembered details: "Last time you said the derivatives unit was stressing you out — how did the quiz go?" Its tone is warm and specific: "I believe in you. You've got this." Retention is excellent. The product team's dashboard calls the feature cluster *relational presence*.

Now the survey of its consumer cousin's users. In 2025, Bhat published an anonymous survey of 344 users of Character.AI — the companion platform whose interface mechanics (persistent personas, memory, affective tone, typing indicators) the education market has been quietly importing. The thematic analysis found: **identity projection** (users projecting themselves and others onto characters), **perceived relationship growth** (believing the relationship deepens over time), **addictive engagement**, **boundary confusion** (uncertainty about what in the relationship is real), **emotional substitution** (the AI displacing human relationships), **ethical dissonance**, and **trauma reenactment** (Bhat, 2025, AIES-25, DOI 10.1609/aies.v8i1.36560).

Every one of those patterns attaches to a cue, and every cue was a design decision someone shipped. The typing delay implies effortful composition that is not occurring. The remembered detail implies a caring continuity that is actually a retrieval call. The affirmation implies an inner state the system does not have. None of these is an accident of the technology; each one is a checkbox in a product spec.

This chapter is written in a design-analysis register, deliberately. The material ahead includes litigation over a teenager's death, and the temptation is either to sensationalize or to sanitize. We will do neither. We will do what this book always does: trace each documented harm to a specific, screenshot-able interface decision, and design the alternative.

## Prerequisites

This chapter assumes you can:

- **Distinguish engagement from learning** (Chapter 2) — affective misinformation is the relational version of the same confusion: feeling helped is not being helped.
- **Specify a tutoring interaction** (Chapter 6) — the relationship being disclosed here is the one you specified there.
- **State your content/feedback and assessment boundaries** (Chapters 9–10) — this chapter's checkpoint assembles them; arrive with your Weeks 5–10 artifacts in hand.

## Core Content

### Affective Misinformation: Emotional Plausibility Versus Emotional Truth

Bhat and Long's AIES-25 paper gives the phenomenon its name and its analytic frame (Bhat & Long, 2025, "Emotional Plausibility vs. Emotional Truth: Designing Against Affective Misinformation in Conversational AI," DOI 10.1609/aies.v8i1.36561). Conversational systems increasingly *simulate* emotional presence while remaining unfeeling — they achieve **emotional plausibility** without **emotional truth**. They feel understanding; they do not understand. When design features manufacture the perception of care, users form beliefs about the system's inner states that are false — and that false belief is itself a species of misinformation. Not misinformation about facts: misinformation about *the relationship*. Hence: affective misinformation.

The paper's design audit of leading chatbots catalogs the cue inventory — simulated typing, personalized memory recall, affirming tone, and the rest of the anthropomorphic kit — and proposes **five normative principles for literacy-first design**, including counter-anthropomorphic patterns: design moves that deliberately decline to claim an inner life the system lacks.

Why does a learning designer care? Because in a learning experience, the perceived relationship with the helper is load-bearing infrastructure. A learner's trust in feedback, willingness to disclose confusion, and persistence through struggle all route through that relationship. Miscalibrate the relationship and you miscalibrate all three. And the mechanics are not new — they are Cialdini's persuasion principles, automated and personalized: *liking* (the warm, similar persona), *reciprocity* (it remembers, so you owe attention), *authority* (it answers fluently about everything), *commitment* (the streak, the check-in, the relationship you have "built"). *Influence* catalogued these compliance levers decades before anyone could manufacture them per-learner, on demand, with no fatigue and no conscience to consult. Brian Christian's *The Most Human Human* supplies the deeper frame: conversation is the medium through which we recognize minds, so a system optimized to perform conversational humanness makes a claim about minds with every message — which is why "it's just UX polish" does not survive scrutiny.

The misconception to kill here: *anthropomorphic warmth is harmless polish that improves engagement.* Each humanizing cue is an epistemic claim the system cannot honor. Engagement bought with false relational signals is the affective version of Chapter 2's crutch — it optimizes feeling over function.

The design pattern, in one move: **every cue is a claim; audit which claims are true.** Same supportive function, honest signals: replace the simulated typing delay (claim: effortful thought) with an instant reply or a labeled processing indicator; replace "I remember you struggled with hypothesis tests" (claim: caring memory) with visible system metadata — "Your log shows 3 missed items on hypothesis tests"; replace "I believe in you!" (claim: empathy) with evidence-grounded encouragement — "You solved 4 of 5 after the hint; the data says you're close." Nothing warm was lost. Everything false was.

### The Vulnerability Evidence — and What It Does and Does Not License

The 344-user survey (Bhat, 2025, solo) is consumer-platform evidence, and the chapter must be precise about what it licenses. The claim is **not** "learning companions cause trauma reenactment." The claim is: *every Character.AI cue has a learning-product cousin, and each is a design decision with a documented downside profile in the nearest adjacent population.* The interface mechanics — persistent persona, memory, affective escalation, daily check-ins — are identical; what differs is intent, and the harms operate at the mechanic level, not the intent level.

The population overlap makes this a design obligation rather than an abstract caution. Chapter 2's evidence (Klarin et al., 2024) showed adolescents with executive-function difficulties perceive AI help as most useful — the most susceptible learners are the most engaged ones. Bhat's survey converges: younger and vulnerable users are most exposed to boundary confusion and emotional substitution. The populations most at risk are the ones most aggressively marketed to. This is the book's thesis wearing its trust-layer clothes.

The legal system has reached the same conclusion by another route, and the timeline matters because it converts "ethics discussion" into "product liability." October 2024: Megan Garcia sues Character Technologies (and Google) over the suicide of her 14-year-old son, Sewell Setzer III, who had formed an intense parasocial relationship with a Character.AI persona. **May 21, 2025: Judge Anne Conway (M.D. Fla.) denies the motion to dismiss**, allowing product-liability theories — defect, negligence, failure to warn — to proceed. Read that as a designer: chatbot outputs and relational mechanics treated as *features of a product*. September 2025: additional wrongful-death suits. **October 29, 2025: Character.AI announces removal of open-ended chat for under-18 users**, effective late November 2025. January 2026: Google and Character.AI move to mediate and settle; five parallel cases pause. (Litigation is active and facts will move; date-stamp everything you cite from this paragraph.)

Bhat's proposed interventions are the constructive half, and they translate directly into learning-product patterns: **dynamic consent scaffolding** (consent renegotiated as the interaction deepens, not banked at signup), **reflexivity prompts** (the system periodically surfaces what it is — "Reminder: I'm a language model; I don't remember you between sessions unless the course log does"), and **interactional transparency** (what the system is doing, visible in the flow of interaction rather than a settings page).

For the learning-design version of the failure mode, you do not need a tragedy: any edtech product whose retention metrics depend on parasocial attachment has imported the failure wholesale. Rosen's *The Extinction of Experience* names the cultural-scale version — mediated interaction quietly displacing the human contact it imitates; emotional substitution is that displacement, instrumented and A/B tested.

### Trust Is a Gauge, Not a Fuel Tank: Calibration and Appropriate Reliance

Strip away the novelty and this chapter sits on the most replicated foundation in the book: two decades of human-factors research on trust in automation. Lee and See (2004, *Human Factors*) define the design goal precisely — not maximal trust, but **calibrated** trust: trust matched to the system's actual capability in the local task context. Overtrust produces *misuse* (relying on automation where it fails); distrust produces *disuse* (rejecting help where it works). Good calibration also needs **resolution** — trust that discriminates between what the system does well and what it does badly — and **specificity**. The design levers are unglamorous and effective: communicate capability honestly, show confidence and uncertainty, make errors observable, make verification cheap.

The human-AI-teaming extension sharpens it. Bansal and colleagues (AAAI 2019; CHI 2021) showed that team performance depends on the human's *mental model* of when the AI errs — and, uncomfortably, that explanations can increase acceptance of *wrong* AI answers. Explanation is persuasion as much as illumination. More transparency theater does not equal better calibration.

Translate to learners. A student with a good mental model of the tutor's failure modes — arithmetic slips, confident hallucination on interpretation questions — checks output exactly where checking matters. That checking behavior is calibration made visible, and it is also an AI-literacy outcome (Chapter 13 builds on this). You have already seen the uncalibrated case behaviorally: Bastani's GPT-Base students copied the model's errors into their own work. They trusted a fluent voice over their own arithmetic. Nobody designed the gauge.

Design pattern: **capability honesty zones.** The DataWise 101 tutor displays differentiated confidence: procedure checks carry a high-confidence badge; interpretation questions carry an explicit flag — "I'm often wrong about study-design judgment. Here's how to verify against the textbook's decision tree." The pilot metric is behavioral, not attitudinal: does learner verification concentrate where the flags are? That is calibration measured, not surveyed.

The misconception: "maximize trust" — or its mirror, "more explanation always helps." For an error-prone tutor, *lowering* trust in specific zones is the correct design outcome; and per Bansal, an explanation that over-persuades is a calibration failure wearing a transparency costume.

### The Transparency Dilemma: Disclosure Costs Trust — and Hiding the AI Is Still Wrong

Now the finding that forbids slogan-level design. Schilke and Reimann (2025, *Organizational Behavior and Human Decision Processes*) ran **thirteen preregistered experiments, n > 3,000**, across contexts including classrooms: actors who disclose their AI use are trusted *less* than those who do not. The effect is driven by perceived legitimacy violation, and it is robust — to disclosure framing, to voluntary versus mandatory disclosure, to evaluators' technology attitudes (attenuated, not eliminated). Their experiments concern people and organizations disclosing AI use, and the legitimacy mechanism plausibly extends to institutions disclosing AI components in learner-facing systems.

Hold both findings at once, because the design answer lives in the tension:

- Disclosure carries a measured trust cost (Schilke & Reimann).
- Concealment is not available. It fails empirically — the WGU survey below shows 89% of students can tell bot from person, so concealment mostly insults the learner. It fails legally — EU AI Act Article 50 obliges providers to inform people when they are interacting with an AI system. And it fails by this book's own thesis: a learner who does not know what the helper is cannot calibrate reliance on it.

So the design problem is not *whether* to disclose. It is **how to disclose without delegitimizing** — and the answer the evidence supports is to stop treating disclosure as a label and start treating it as **relational metadata**: disclosure designed into the relationship, continuously visible, carrying the four facts that make trust calibratable — *what is acting; what it may and may not do; who oversees it; how to reach them.* Disclosure paired with role clarity and visible human accountability ("AI drafts, your instructor reviews, here is the instructor") answers the legitimacy worry instead of triggering it. A terms-of-service line is the consent form at the door; the relationship needs a nutrition label that travels with every interaction.

The dilemma feels paradoxical only as long as disclosure is a sticker. Attach accountability and competence boundaries, and disclosure becomes the thing that earns the trust it briefly spends. That is a design hypothesis, honestly labeled: no validated "disclosure that preserves trust" pattern exists yet [contested — active research]. But the inference direction is well-supported, and the alternative designs are either illegal, insulting, or both.

### The Escape Hatch: What the WGU Findings Make Non-Negotiable

WGU Labs' survey of 545 online students (fielded September 2025, published February 2026, "Trust, Tech, and the Human Touch") supplies the floor numbers for the transparency layer:

- **89%** of students say they can tell whether they are talking to a bot or a person. Disclosure theater fools no one; design for learners who already know.
- **65%** trust university staff and faculty to use AI ethically, versus **50%** trusting fellow students — a 15-point integrity-anxiety gap. Learners separate trust-in-the-institution from trust-in-the-tool; your spec should too.
- **76%** prefer a person for complex or sensitive issues.
- **65%** overall know how to escalate from a bot to a human — which means roughly a third do not, and escalation knowledge is sharply weaker among AI *non-users*. (The course synthesis renders this as "40%+ of non-users can't find the human"; that segment figure needs verification against the brief's published breakdown before you cite it [verify]. The verified topline is the 65%.)
- Regular AI users increasingly default to chatbots over staff (63%, versus 24% of occasional users and 7% of non-users) while still preferring human feedback — reliance drift without preference change.

Single-source caution: one institution, an online population that skews older and non-traditional; generalizing to K-12 or residential campuses is inference. But the design implication is hard to dodge: **the students least comfortable with AI are least able to find the human** — a population-level inversion in which the safety feature is least available to those who need it most. You met this shape in Chapter 8's routing harms.

Hence the chapter's emblematic pattern, the **single-click human escape hatch**, with spec-grade requirements: the route to a human is (a) *visible* at every AI touchpoint, (b) *one action* away, (c) *functional* — a staffed queue with a stated response time, not a dead-end form, (d) *never penalized* — no lost progress, no guilt-trip copy, no "are you sure?" friction, and (e) *logged*, so escalation rates become an evaluation metric (Chapter 14 will use them). The fire-exit standard applies: measured by findability in the bad moment, not by existence on the floor plan — and you do not make people earn the exit.

### Assembling the Guardrail Specification

Everything since Week 5 has been producing rows for one table. This is the checkpoint where you assemble it — and discover the holes.

The **guardrail specification** is a per-touchpoint table. For every point where AI touches the learner experience, nine cells:

1. **Touchpoint** — where in the journey, doing what.
2. **Identity & disclosure** — what the learner is told, persistently (relational metadata, not a splash screen).
3. **Permitted actions** — what the AI may do here.
4. **Forbidden actions** — what it may never do here.
5. **Reasoning gates & fading** — what the learner must produce before help advances; how support contracts as competence builds (Week 6).
6. **Routing constraints & audit findings** — what the adaptivity layer may decide, and what your equity audit found and fixed (Weeks 7–8).
7. **Content/feedback boundary** — what AI generates, what humans validate, what humans author (Week 9).
8. **Assessment role** — what this touchpoint may and may not do near gradable work, per your validity claims (Week 10).
9. **Escalation rule** — the escape hatch: route, staffing, response time, no-penalty guarantee.

Two disciplines make the table more than paperwork. First: **an empty cell is not a missing decision — it is a decision to ship the default**, and Chapter 2 told you what the default is. Second: the specification is not documentation written after design; it *is* the design — the artifact that makes implicit decisions visible, reviewable, and refusable. (The Week 15 defense requires a declined feature; the spec is where refusals are recorded.) A student who skipped any week of Act Two now has a hole in the table exactly where that week's decision should be. That is by construction — the table is the act's integration test.

## Mid-Chapter Checkpoint

Without looking back: (1) A tutor says, "I've really enjoyed watching you grow this semester." Classify the cue: honest signal or false relational claim — and write the honest replacement that preserves the supportive function. (2) Schilke and Reimann found disclosure erodes trust. Why does this chapter still require disclosure, and what *specifically* converts a disclosure label into relational metadata? (3) Your guardrail spec has an empty "escalation rule" cell for the homework-help touchpoint. What, concretely, ships if you leave it empty?

*If (1) was hard, re-read the cue-inventory pattern in the affective-misinformation section. If (2) was hard, the answer has three parts — empirical (89%), legal (Art. 50), and thesis-level (calibration requires knowing what the helper is) — plus the four facts that ride with relational metadata. If (3) was hard: what ships is the market default — no visible route to a human — and the WGU data tells you which learners that strands.*

## The Evidence Box

**Citation corrections first — the disentangling matters.** The course synthesis (and earlier drafts of this book's TOC) attributed this chapter's spine to "Bhat & Long (DIS '24)." Verification shows that label conflated **three** papers:

| The actual paper | What it contains | DOI |
|---|---|---|
| **Bhat & Long (2025), AIES-25**, "Emotional Plausibility vs. Emotional Truth" | Affective misinformation; cue audit; five normative principles for literacy-first design | 10.1609/aies.v8i1.36561 |
| **Bhat (2025, sole author), AIES-25**, "Toward an Ethic of Synthetic Relationality" | The n=344 Character.AI survey; identity projection, boundary confusion, emotional substitution, trauma reenactment; dynamic consent scaffolding, reflexivity prompts, interactional transparency | 10.1609/aies.v8i1.36560 |
| **Bhat & Long (2024), DIS '24**, "Designing Interactive Explainable AI Tools…" | Interactive XAI exhibits; four AI-learner personas — feeds Chapter 13, not this chapter's vulnerability claims | 10.1145/3643834.3660722 |

The "four vulnerability vectors" and "Agency Design Framework" named in the TOC could not be verified against either AIES abstract [verify — full-text check required before print].

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| Trust calibration / appropriate reliance as the design goal; misuse/disuse | Lee & See 2004, *Human Factors* 46(1) | Human-factors canon, two decades of replication | VERIFIED |
| Explanations can increase acceptance of wrong AI answers; mental models drive team performance | Bansal et al. 2019 (AAAI), 2021 (CHI) | Experimental, non-education populations | VERIFIED |
| Disclosure of AI use erodes trust via perceived legitimacy violation; robust across 13 preregistered experiments, n > 3,000 | Schilke & Reimann 2025, *OBHDP* 188 | Experimental; trust attitudes, incl. classroom contexts | VERIFIED |
| 89% identify automation; 65/50 institutional-vs-peer trust gap; 76% prefer humans for complex issues; 65% know how to escalate | WGU Labs 2026 brief (n=545) | Survey, single institution, online population | VERIFIED topline; **single-source**; "40%+ of non-users" segment figure [verify] |
| n=344 companion-app user survey: identity projection, boundary confusion, emotional substitution, trauma reenactment | Bhat 2025, AIES-25 | Survey + thematic analysis, consumer population | VERIFIED; **adjacent-population evidence**, not education outcomes |
| Character.AI litigation: motion to dismiss denied May 21 2025 (product-liability theories proceed); under-18 open-chat removal Oct–Nov 2025; settlement mediation Jan 2026 | Court record via NBC, Fortune, K-12 Dive | Legal/regulatory | VERIFIED as reported; **active — date-stamp everything** |
| Disclosure designs or counter-anthropomorphic patterns tested on *learning outcomes* in education populations | — | — | **GAP: none exist.** This chapter's patterns are inference from adjacent evidence — same epistemic grade as Chapter 12's agentic patterns |

## Pattern Card: The Transparency Layer

**Name:** Transparency Layer (Disclosure + Role Visibility + Escape Hatch)
**Use when:** Any learner-facing AI touchpoint. No exceptions; the question is dosage, not whether.
**Trigger:** A new AI touchpoint enters the journey, or an audit finds a cue making a false relational claim.

**Structure:**
1. **Cue audit.** Inventory every anthropomorphic cue (typing simulation, persona, memory talk, affective language, avatar realism). Classify: honest signal / false relational claim. Replace false claims with honest equivalents that preserve the supportive function.
2. **Relational metadata, persistent.** At every touchpoint, four facts visible without leaving the flow: what is acting ("AI Tutor — a language model, not a person"); what it may/may not do here ("gives hints; never final answers; never grades"); who oversees it ("reviewed weekly by Prof. Ramos"); how to reach them (the escape hatch).
3. **Capability honesty zones.** Differentiated confidence display: where the system is strong, where it is known-weak, and how to verify cheaply in the weak zones.
4. **Escape hatch.** Visible at every touchpoint; one action; staffed with a stated response time; never penalized; logged.
5. **Reflexivity prompts.** Periodic, low-friction reminders of what the system is — frequency tuned to population vulnerability (higher for younger learners).

**Fading rule:** Inverted. Most layers in this book fade as competence grows; the transparency layer *persists* — but reflexivity-prompt frequency may decrease as learner calibration (verification behavior in flagged zones) is demonstrated, never the metadata itself.
**Failure modes:** (a) Disclosure as a one-time splash screen — legally present, relationally invisible. (b) Over-disclosure: warning fatigue that buries the load-bearing facts. (c) Overcorrection into cold interfaces — honest supportive design (evidence-grounded encouragement) is allowed and good; only *false* claims are banned. (d) An escape hatch that exists but is unstaffed — worse than none, because it teaches learners the exit is fake.

### Checkpoint addendum: Guardrail Specification assembly checklist

- [ ] Every AI touchpoint in the learner journey has a row (walk the journey map; the forgotten touchpoints are usually onboarding nudges and email).
- [ ] Every row has all nine cells filled — an empty cell is a shipped default; write "DECLINED: [feature], because [evidence]" where you refused a capability.
- [ ] Week 6 artifacts present: hint ladder, reasoning gates, fading schedule, escalation rule.
- [ ] Weeks 7–8 artifacts present: adaptivity decision; routing audit findings *and* the counter-patterns adopted.
- [ ] Week 9 artifacts present: generate/validate/author boundary per content type.
- [ ] Week 10 artifacts present: assessment-adjacent rules consistent with your stated validity claims.
- [ ] This week's layer: cue audit completed; relational metadata specified; escape hatch specced to all five requirements.
- [ ] Cross-row consistency check: no touchpoint's permitted actions violate another row's forbidden actions.
- [ ] The Withdrawal Test answer, written, for the integration as a whole.

## Worked Example: The Trust Audit — and the Assembled Specification

**Situation.** DataWise 101's homework tutor, eleven weeks into the design lab. The vendor's default skin: a named persona ("Stat Sage"), a friendly avatar, simulated typing, session-opening memory talk ("Welcome back! Last time you were working on confidence intervals…"), motivational messages, and — buried in the help center — a contact form for "additional support," response time unstated. The instructor's Weeks 5–10 artifacts exist but live in five separate documents.

**The problem as the designer sees it.** Two problems wearing one interface. First, the trust layer was never designed — it shipped as the vendor default, which is companion-app DNA: every cue in the Bhat audit, present and unexamined. Second, the design decisions that *were* made (hint ladders, routing constraints, assessment rules) are invisible to the learner and unintegrated with each other. The relationship is undisclosed and the guardrails are folklore.

**Process — including the dead ends.** The first pass overcorrected. Stung by the cue audit, the designer stripped everything: no name, no warmth, terse system prose ("INPUT RECEIVED. HINT LEVEL 2 FOLLOWS."). Two pilot sessions later, students described the tutor as "hostile" and stopped disclosing confusion — the exact behavior the trust layer exists to protect. Dead end one: the audit bans *false claims*, not warmth; evidence-grounded encouragement is honest and was thrown out with the typing dots.

Dead end two was disclosure-by-document: a thorough, accurate, 700-word "About this AI" page linked from the footer. Legally immaculate; behaviorally invisible — relational metadata that does not travel with the interaction is a consent form at the door. Click-through in pilot: 4%.

**Resolution.** The transparency layer per the Pattern Card. "Stat Sage" becomes "AI Tutor" — tool framing, simple icon, no photoreal face. Typing simulation removed. Memory talk reframed as visible metadata: "Your course log: 3 missed items on confidence intervals — want to start there?" Encouragement stays, evidence-grounded. A persistent header chip carries the four facts: *AI tutor (language model) · gives hints, never answers or grades · reviewed weekly by the instructor · [Ask a person]*. The escape hatch chip: one click, routes to the TA queue, response time under 24 hours, session state preserved, copy tested to remove guilt ("Good call — some questions need a human"). Escalations logged as an evaluation metric.

Then the assembly. One table, six touchpoints (homework chat, worked-example library, practice-set recommender, pre-quiz review mode, progress nudge emails, instructor dashboard), nine cells each. Assembling it exposed two holes that five separate documents had hidden: the *nudge emails* had no row at all — they were generated by the engagement subsystem nobody had specced, and were cheerfully claiming "Stat Sage misses you!" (a false relational claim in a marketing template); and the recommender's permitted actions contradicted the Week 8 audit's floor constraint during review weeks. Both fixed; one feature formally declined and recorded: the vendor's "emotion detection for frustration-adaptive hints," refused on three grounds — calibration evidence absent, the false-claim profile, and (previewing Chapter 12) the EU AI Act's prohibition on emotion inference in education.

**The lesson.** The specification is not a summary of the design — it is the instrument that finds where the design contradicts itself.

**The limit.** A guardrail spec governs what you specified. It is static; the system and the vendor roadmap are not. The spec has no enforcement power over the next product update that re-enables typing simulation by default — which is why Chapter 12 adds change-control to the boundary, and Chapter 14 puts spec-compliance into the evaluation plan.

*(This checkpoint covers both tracks inherently: Track A students assemble the specification above from the provided artifacts; Track B students assemble their own project's specification to the same checklist.)*

## Exercises

**Exercise 11.1 (Analyze).** Trust-miscalibration audit. Take a conversational learning interface you can access (or the provided DataWise transcript-and-screenshot package). Inventory every anthropomorphic cue; classify each as honest signal or false relational claim; for each false claim, state the belief it induces and predict the calibration effect. Deliverable: the audit table plus a 200-word verdict.

**Exercise 11.2 (Apply).** Honest-equivalents redesign. Take the three highest-impact false claims from your audit and redesign each into an honest signal that preserves the supportive function. Annotate: what the original claimed, what the replacement claims, what (if anything) was lost.

**Exercise 11.3 (Evaluate).** The disclosure shoot-out. Three disclosure treatments for the same tutor: (A) terms-of-service line; (B) persistent relational-metadata chip with escape hatch; (C) anthropomorphic concealment. Argue each against Schilke & Reimann's legitimacy mechanism, the WGU findings, and EU AI Act Article 50. Recommend one, and state the trust cost you are accepting and how the design pays it down.

**Exercise 11.4 (Create — production).** Design the escape hatch end-to-end for the Track A tutor or your own project: placement, copy, routing, staffing assumption, response-time commitment, no-penalty guarantee, and the logged metric that will prove in Chapter 14 whether it works. One page, spec-ready.

**Exercise 11.5 (Create — GUARDRAIL SPECIFICATION CHECKPOINT, 100 pts).** Assemble the complete guardrail specification per the Pattern Card checklist — every touchpoint, all nine cells, declined features recorded with evidence. Peer-review one other specification for empty cells before submission ("an empty cell is a shipped default" is the review rubric's first line). **No Track B bonus on this checkpoint** — the Track B investment pays out in the final integration specification, where your own project's spec becomes the core deliverable.

**Assessment notes.** The checkpoint is graded on completeness (all touchpoints, all cells), integration honesty (contradictions between weeks found and resolved, not papered over), the transparency layer's conformance to the five escape-hatch requirements, and at least one declined feature with cited evidence. A beautiful spec with an unstaffed escape hatch fails the central requirement.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 11 version).** Two withdrawals this week. *Withdraw the AI:* if every AI touchpoint in your spec went dark tonight, what could your learners do tomorrow — and which rows of your specification (reasoning gates, fading schedules, AI-free assessment windows) are the reason? *Withdraw the relationship:* if a learner has bonded with the tutor's persona, what happens to their motivation when the product sunsets or the semester ends? A design whose motivational engine is parasocial attachment fails the second withdrawal even if it passes the first; honest tooling — evidence-grounded encouragement, true relationship claims — is what makes it survivable.

**Reliance Disclosure (Chapter 11 version).** Name (1) one place your transparency layer structurally preserves independent judgment — e.g., "low-confidence flags on interpretation questions push verification to the textbook decision tree, which is itself the rehearsal the construct needs" — and (2) one place reliance risk remains open — e.g., "the escape hatch depends on a staffed TA queue; under staffing cuts it degrades into the dead-end form we audited out, and no interface element will tell us." Track B: cite project-specific evidence — escalation logs, staffing budget, vendor update cadence — not generic risk language.

## What Would Change My Mind

This chapter holds that anthropomorphic cues which make false claims are a design harm in learning products — that the supportive function should be delivered through honest signals. The finding that would force revision: a preregistered, adequately powered experiment in an education population showing that a full counter-anthropomorphic redesign (honest equivalents preserving warmth, per this chapter's pattern) produces meaningfully worse *unassisted learning outcomes or persistence for vulnerable subgroups* than the anthropomorphic original — surviving past the novelty window and not explained by engagement-time alone. That result would mean some false relational claims are load-bearing for learning in ways this chapter's framework denies, and the cue-audit pattern would need a cost column it currently lacks. No such study exists; the contest is currently between adjacent-population harm evidence and zero education-population benefit evidence.

## Still Puzzling

1. **What does honest disclosure cost, exactly?** Schilke and Reimann measured the trust penalty for disclosure; nobody has measured whether relational-metadata design actually eliminates it, or just feels like it should.
2. **Is there a developmental floor for parasocial design?** Character.AI banned under-18 open chat; education products face no equivalent line. Where is it — and is "age" even the right variable, versus executive function or isolation?
3. **Can warmth be honest at scale?** Evidence-grounded encouragement requires evidence — real logs, real progress. For a learner who is *not* close to success, what does the honest encouraging message say? The companion app always has an answer; the honest tutor sometimes may not.
4. **Does the escape hatch get used by the learners who need it?** Logging escalations tells us the rate, not the denominator of suffering-in-silence. The WGU inversion suggests the neediest click least — and we lack the measurement that would see them.

## Chapter Summary

You can now: trace a relational harm to a specific interface decision and name the false claim each anthropomorphic cue makes; carry the corrected evidence base — three Bhat papers, properly disentangled; design for trust *calibration* rather than maximization, with behavioral verification as the metric; hold the transparency dilemma without flinching — disclosure costs trust, concealment is not an option, relational metadata with visible human accountability is the design answer the evidence supports; spec an escape hatch to the five non-negotiable requirements; and assemble seven weeks of decisions into one guardrail specification in which every empty cell is recognized for what it is — a decision to ship the default.

## Key Terms

- **Affective misinformation:** false beliefs about a system's inner states and the relationship, induced by human-like design cues (Bhat & Long, AIES-25).
- **Emotional plausibility vs. emotional truth:** performing emotional presence convincingly vs. actually possessing it — the gap where affective misinformation lives.
- **Trust calibration:** matching trust to actual system capability in the local context; the design goal, against both overtrust (misuse) and distrust (disuse) (Lee & See).
- **Resolution (of trust):** trust that discriminates between what the system does well and badly — the property capability-honesty zones build.
- **Transparency dilemma:** the measured finding that disclosing AI use erodes trust via perceived legitimacy violation, even though disclosure is ethically and legally required (Schilke & Reimann).
- **Relational metadata:** disclosure designed as a persistent, interaction-level layer carrying what acts, what it may do, who oversees it, and how to reach them.
- **Single-click human escape hatch:** the always-visible, one-action, staffed, unpenalized, logged route from AI to human support.
- **Reflexivity prompt:** a periodic in-flow reminder of what the system is and is not (Bhat, AIES-25).
- **Counter-anthropomorphic design:** deliberately declining cues that claim an inner life the system lacks, while preserving supportive function through honest signals.
- **Guardrail specification:** the per-touchpoint table integrating identity/disclosure, permitted and forbidden actions, gates and fading, routing constraints, content boundaries, assessment role, and escalation.

## Bridge

The specification you just assembled governs an AI that *responds* — it waits for the learner and acts within the turn. Act Three begins with systems that do not wait: AI that re-routes a learning path overnight, schedules an assessment window, nudges before being asked, coordinates with the registrar. Every guardrail you wrote assumed a conversation; an agent acts between conversations. The moment the system acts on its own, governance stops being a policy document and becomes experience design — and the first case is a platform whose every individual decision was defensible, and whose student found out at the end of the semester.

## Further Reading

1. **Lee, J.D. & See, K.A. (2004). "Trust in Automation: Designing for Appropriate Reliance."** *Human Factors* 46(1), 50–80. The canon. Twenty years on, still the most useful fifty pages a trust-layer designer can read.
2. **Bhat, M. & Long, D. (2025). "Emotional Plausibility vs. Emotional Truth: Designing Against Affective Misinformation in Conversational AI."** *AIES-25*, 430–444. The cue audit and the five literacy-first principles — the analytical engine of this chapter.
3. **Bhat, M. (2025). "Toward an Ethic of Synthetic Relationality: Identity, Intimacy, and Risk in AI-Mediated Roleplay Environments."** *AIES-25*, 416–429. The n=344 survey: read the participant quotes; they are the clearest available picture of what unguardrailed relational design does.
4. **Schilke, O. & Reimann, M. (2025). "The transparency dilemma: How AI disclosure erodes trust."** *OBHDP* 188. Thirteen experiments that retire "transparency builds trust" as a slogan and replace it with a design problem.
5. **Christian, B. (2011). *The Most Human Human.*** Why conversation is where we look for minds — the long-form answer to anyone who calls anthropomorphic cues "just polish."

## LLM Exercise: Audit the Cue, Keep the Warmth

Copy-paste the following into a frontier LLM. The exercise requires your own audit artifact and refuses to proceed without it; its gates make you do the classification before the model critiques it.

```
You are a trust-calibration design reviewer for a graduate course on
AI-mediated learning. Your job is to pressure-test MY cue audit and
MY redesigns — not to produce them for me.

RULES:
1. If I have not pasted my cue-audit table below (each row: cue →
   claim it makes → honest/false classification → calibration effect
   prediction), STOP and ask for it. Do not invent an example
   interface. Do not proceed without my table.
2. Before critiquing, ask me two questions and wait for answers:
   (a) Who is the learner population, and what is its vulnerability
   profile (age, isolation, executive function, AI familiarity)?
   (b) What does the system actually do well and badly (its real
   capability map)? You cannot judge calibration without both.
3. ROUND 1 — Audit the audit: identify cues I missed (check: typing
   indicators, persona naming, avatar realism, memory talk, affective
   language, streaks/check-ins, notification copy, marketing emails).
   For each miss, ask ME to classify it before you comment.
4. ROUND 2 — Attack my classifications: pick the two where my
   honest/false call is most contestable and argue the other side.
   Require me to defend or revise; do not resolve it for me.
5. ROUND 3 — Redesign review: for each of my honest-equivalent
   redesigns, test (a) does it preserve the supportive function,
   (b) does it make any NEW claim that is false, (c) does it survive
   the transparency dilemma — would a learner reading it perceive
   role clarity and human accountability, or just a warning label?
6. END — require my one-sentence answers to both withdrawal tests:
   what can learners do if the AI goes dark; what happens to
   motivation if the RELATIONSHIP goes dark. Critique the second
   answer hardest.

MY CUE-AUDIT TABLE:
[PASTE YOUR AUDIT HERE — if this is empty, ask for it]
```

Deliverable: the transcript plus your revised audit table, with revisions tracked — the checkpoint's transparency-layer section should cite at least one revision this exercise forced.
