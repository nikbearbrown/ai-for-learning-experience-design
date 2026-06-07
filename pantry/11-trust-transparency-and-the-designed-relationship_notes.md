# Research Notes: Chapter 11 — Trust, Transparency, and the Designed Relationship
**Source:** TIKTOC.md chapter entry
**Notes file:** 11-trust-transparency_notes.md
**Corresponding chapter:** chapters/11-trust-transparency.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn the trust-calibration design problem — affective misinformation, the four vulnerability vectors, disclosure and escape-hatch requirements — and integrate seven weeks of decisions into a complete guardrail specification.

**Learning outcomes:**
1. (Understand) Explain affective misinformation: human-like cues constructing an illusion of relational care, and the four vulnerability vectors (reflection simulation, authority modulation, cognitive-load exploitation, market-security tension).
2. (Analyze) Audit a conversational learning interface for trust-miscalibrating design features.
3. (Create) Design the transparency layer: disclosure as relational metadata, learner-visible AI role, and the single-click human escape hatch the WGU findings make non-negotiable.
4. (Create) Integrate Weeks 5–11 into a complete guardrail specification: every AI touchpoint, permitted actions, forbidden actions, fading, disclosure, escalation.

**Opening:** A learning companion with simulated typing delays, remembered personal details, and an affirming tone — and the survey of 344 users of its consumer cousin: identity projection, boundary confusion, emotional substitution. Every one of those cues was a design decision.

**Core content:** Bhat & Long; the Agency Design Framework (agency as first-class construct, mid-process intervention, dynamic transparency); the WGU interface findings (89% can identify automation; 40%+ of non-users can't find the human); the LearnLM disclosure question; assembling the guardrail spec.

**Bridge:** The specification governs an AI that responds. Act Three begins with an AI that acts on its own — and the moment governance becomes experience design.

---

## A. Conceptual foundations

### 1. Affective misinformation: emotional plausibility vs. emotional truth

**CITATION CORRECTION — load-bearing for this chapter.** The synthesis attributes the affective-misinformation work to "Bhat & Long (DIS '24)." Verification shows the synthesis conflated **three** papers:

- **Bhat, M. & Long, D. (2025). "Emotional Plausibility vs. Emotional Truth: Designing Against Affective Misinformation in Conversational AI." *Proceedings of AIES-25* (AAAI/ACM Conf. on AI, Ethics, and Society), 8(1), 430–444. DOI: 10.1609/aies.v8i1.36561.** This is the affective-misinformation paper: conceptual distinction between emotional plausibility and emotional truth; design audit of leading chatbots showing how simulated typing, memory recall, affirming tone, and other anthropomorphic cues construct an illusion of relational care; **five normative principles for literacy-first design**, including counter-anthropomorphic patterns.
- **Bhat, M. (2025, sole author). "Toward an Ethic of Synthetic Relationality: Identity, Intimacy, and Risk in AI-Mediated Roleplay Environments." *AIES-25*, 8(1), 416–429. DOI: 10.1609/aies.v8i1.36560.** This is the **N=344 Character.AI user survey**: thematic analysis identifying identity projection, perceived relationship growth, addictive engagement, boundary confusion, emotional substitution, ethical dissonance, and trauma reenactment; proposed interventions: dynamic consent scaffolding, reflexivity prompts, interactional transparency.
- **Bhat, M. & Long, D. (2024). "Designing Interactive Explainable AI Tools for Algorithmic Literacy and Transparency." *Proceedings of DIS '24*, 939–957. DOI: 10.1145/3643834.3660722.** The actual DIS '24 paper — interactive XAI exhibits for adult novices; four AI-learner personas (Tinkerers, Ethical Observers, Realists, Visionaries). Relevant to Ch. 13 as much as Ch. 11.

The core concept, accurately stated: conversational systems increasingly *simulate* emotional presence while remaining unfeeling. "They feel understanding, but do not understand." When design features manufacture the perception of care — typing indicators implying effortful composition, memory recall implying a continuing relationship, affirmation implying empathy — users form beliefs about the system's inner states that are false. That false belief is itself a species of misinformation: *affective* misinformation, misinformation about the relationship rather than about facts. For learning experiences the stakes are specific: a learner's trust in feedback, willingness to disclose confusion, and persistence through struggle all route through the perceived relationship with the helper. A miscalibrated relationship miscalibrates all three.

**Common misconception:** "Anthropomorphic warmth is harmless UX polish that improves engagement." The Bhat & Long audit's point is that each humanizing cue is an epistemic claim the system cannot honor; engagement bought with false relational signals is the affective version of the crutch — it optimizes feeling over function (cf. Ch. 2's engagement ≠ learning).

**Worked example:** Audit a tutoring chatbot: simulated typing delay (implies effort/thought — remove or label); "I remember you struggled with hypothesis tests" (implies caring memory — reframe as visible system metadata: "Your log shows 3 missed items on hypothesis tests"); "I believe in you!" (simulated empathy — replace with evidence-grounded encouragement: "You solved 4 of 5 after the hint — the data says you're close"). Same supportive function, no false relational claims.

**Source(s):** Bhat & Long 2025 AIES (verified, abstract + metadata); Bhat 2025 AIES (verified); Bhat & Long 2024 DIS (verified).

### 2. The vulnerability evidence: the N=344 Character.AI survey

Bhat's survey of 344 Character.AI users (anonymous, thematic analysis) documents the psychological patterns that arise when synthetic relationality is deployed without guardrails: **identity projection** (users projecting selves/others onto characters), **perceived relationship growth** (believing the relationship deepens over time), **addictive engagement**, **boundary confusion** (uncertainty about what is real in the relationship), **emotional substitution** (the AI displacing human relationships), **ethical dissonance**, and **trauma reenactment** (replaying traumatic dynamics with the bot). The paper argues synthetic companions "fundamentally reconfigure interpersonal architectures," with younger and vulnerable users most exposed — converging with Ch. 2's finding (Klarin et al. 2024) that adolescents with executive-function difficulties find AI most useful and are most susceptible.

Why this consumer evidence belongs in a learning-design chapter: the engagement mechanics of companion apps are migrating into educational products (persistent personas, streaks, memory, affective tone), often marketed as "motivation." The chapter's claim is not "learning companions cause trauma reenactment"; it is that **every Character.AI cue has a learning-product cousin, and each one is a design decision** with a documented downside profile in the nearest adjacent population.

**Common misconception:** "Educational chatbots are different from companion apps, so companion-app harms don't transfer." The interface mechanics are identical; what differs is intent — and the harms operate at the mechanic level, not the intent level. The teen-safety litigation (Section B) shows courts treating these mechanics as product-design features.

**Worked example:** A vendor pitches a "study buddy" persona with a name, avatar, persistent memory, and daily check-in messages for a middle-school product. Map each feature against the survey's patterns: persistent persona + memory → identity projection and perceived relationship growth; daily check-ins → addictive engagement loop; affective affirmations → emotional substitution risk for isolated students. Counter-design: tool framing rather than friend framing, session-bounded memory with visible logs, opt-in check-ins routed through the teacher.

**Source(s):** Bhat 2025 AIES-25 (10.1609/aies.v8i1.36560), verified. NOTE: the synthesis's "four vulnerability vectors" (Reflection Simulation, Authority Modulation, Cognitive-Load Exploitation, Market-Security Tension) and "Agency Design Framework (AFF)" could **not** be verified against either AIES abstract — see Section G flag.

### 3. Trust calibration and appropriate reliance (Lee & See; Bansal et al.)

The chapter's measurement-grade backbone, from human-factors research two decades older than LLMs: **Lee & See (2004), "Trust in Automation: Designing for Appropriate Reliance," *Human Factors* 46(1), 50–80** — the canonical model. Trust should be **calibrated** to the system's actual capability in the local task context: overtrust produces misuse (relying on automation where it fails), distrust produces disuse (rejecting help where it works). Good design targets neither maximal trust nor minimal trust but *appropriate reliance* — and adds **resolution** (trust that discriminates between what the system does well and badly) and **specificity**. The design levers: communicate capability honestly, show confidence/uncertainty, make errors observable, support cheap verification.

The human-AI-teams extension: **Bansal et al.** (AAAI 2019 "Beyond Accuracy: The Role of Mental Models in Human-AI Team Performance"; CHI 2021 "Does the Whole Exceed its Parts?") — team performance depends on the human's *mental model* of when the AI errs; explanations can increase acceptance of wrong AI answers (persuasion without accuracy); complementary performance (team > best member alone) is rare and must be designed for. Translated to learners: a student with a good mental model of the tutor's failure modes (e.g., arithmetic slips, confident hallucination) checks output exactly where checking matters — which is also an AI-literacy outcome (Ch. 13). Recall Ch. 1: Bastani's GPT-Base students copied errors into their work — uncalibrated trust, behaviorally measured.

**Common misconception:** "Maximize trust" is the design goal. The goal is calibration; for an error-prone tutor, *lowering* trust in specific zones is the correct design outcome. Equally wrong: "more explanation always calibrates better" — Bansal et al. show explanations can over-persuade.

**Worked example:** A stats tutor displays confidence bands: high-confidence on procedure checks, explicit low-confidence flag on interpretation questions ("I'm often wrong about study-design judgment — here's how to verify"). Pilot measure: does learner verification behavior concentrate where the flags are? That is calibration, measured behaviorally rather than by satisfaction survey.

**Source(s):** Lee & See 2004 (verified, *Human Factors* 46(1)); Bansal et al. 2019/2021 (verified canon); systematic review: "Fostering Appropriate Reliance in Human-AI Interaction," *ACM J. Responsible Computing* (2024, 10.1145/3696449).

### 4. The transparency dilemma: disclosure can cost trust — and is still non-negotiable

New, important complication, verified: **Schilke, O. & Reimann, M. (2025). "The transparency dilemma: How AI disclosure erodes trust." *Organizational Behavior and Human Decision Processes* 188.** Thirteen preregistered experiments, n > 3,000, contexts including classrooms: **actors who disclose AI use are trusted *less*** than those who don't — an effect driven by perceived legitimacy violation, robust to disclosure framing, voluntary vs. mandatory disclosure, and evaluator tech attitudes (attenuated but not eliminated). The effect concerns disclosure *by people using AI*, but the legitimacy mechanism plausibly extends to institutions disclosing AI components — and it means the chapter cannot teach "transparency builds trust" as a slogan. Transparency is ethically and legally required (EU AI Act Art. 50 chatbot-disclosure obligations; the book's own thesis) *and* carries a measured trust cost. The design problem is therefore not whether to disclose but **how to disclose without delegitimizing**: pair disclosure with role clarity ("AI drafts, your instructor reviews"), competence boundaries, and visible human accountability. This is exactly what the synthesis calls disclosure as **relational metadata** — disclosure designed into the relationship (who/what is acting, what it may do, who oversees it, how to reach them), continuously visible, rather than a one-time consent splash screen.

The WGU Labs survey grounds the floor (n=545 online students, Sept 2025 fielding, published Feb 2026, "Trust, Tech, and the Human Touch"): **89%** of students say they can tell bot from person — disclosure theater fools no one; **65%** trust university staff/faculty to use AI ethically vs. **50%** trusting fellow students (15-point gap, integrity anxiety); **76%** prefer a person for complex issues; **65% overall know how to escalate** from bot to human — with escalation knowledge much weaker among AI non-users (the synthesis's "40%+ of non-users can't find the human"; the brief reports escalation comfort varying sharply by usage segment — verify exact segment figure against the brief at drafting). Regular AI users increasingly default to chatbots over staff (63% vs. 24% occasional vs. 7% non-users) while still preferring human feedback — reliance drift without preference change.

**Common misconception:** "Disclosure is a compliance checkbox; once stated, trust follows." Both halves are wrong: students already know (89%), and disclosure mishandled *reduces* trust (Schilke & Reimann). Disclosure must be designed, not posted.

**Worked example:** Three disclosure designs for the same tutor: (A) terms-of-service line "this service may use AI" — legally compliant, relationally invisible; (B) persistent badge "AI Tutor — reviewed weekly by Prof. Ramos — [Get a human now]" — relational metadata + escape hatch; (C) anthropomorphic concealment (human name, photo-real avatar, no disclosure) — the design the litigation and the AI Act both target. The chapter's audit exercise scores products A→C.

**Source(s):** Schilke & Reimann 2025 OBHDP (verified, ScienceDirect S0749597825000172); WGU Labs research brief (wgulabs.org, verified); EU AI Act Article 50 transparency obligations (verified).

### 5. The single-click human escape hatch and the guardrail-spec assembly

The chapter's integrative move: convert seven weeks of decisions into one specification. The escape hatch is the emblematic pattern because it is cheap, measurable, and evidence-anchored (WGU: students who most need human help are least able to find it — the population-level inversion that recurs throughout the book). Spec requirements: the route to a human is (a) visible at every AI touchpoint, (b) one action away, (c) functional (a staffed queue, not a dead-end form), (d) never penalized (no lost progress, no "are you sure?" friction), and (e) logged, so escalation rates become an evaluation metric (Ch. 14). The guardrail specification format (per AI touchpoint): identity & disclosure → permitted actions → forbidden actions → reasoning gates & fading schedule (Ch. 6) → routing constraints & audit findings (Ch. 7–8) → content/feedback boundaries (Ch. 9) → assessment role (Ch. 10) → trust/transparency layer (this chapter) → escalation rule. A touchpoint with an empty cell is an unmade decision shipping as a default — and Ch. 2 established what the default is.

**Common misconception:** That the guardrail spec is documentation written after design. It is the design — the artifact that makes implicit decisions visible, reviewable, and refusable (the Week 15 defense requires declining at least one feature).

**Worked example:** Track A statistics tutor, one row of the spec: Touchpoint "homework help chat" — Disclosed AI, named as tool not persona; may give Socratic hints L1–L3; may never give final numeric answers or assess gradable work; reasoning gate before L2; fading after two consecutive unaided successes; escalation chip "Ask a person" pinned, routes to TA queue <24h; logs visible to student and instructor.

**Source(s):** WGU Labs brief (verified); synthesis §5–6; chapter-integration logic from TikTOC Part 8 Week 11.

---

## B. Domain examples and cases

### Case 1: Character.AI litigation and the under-18 ban (2024–2026)
The era-defining consumer case. Timeline, verified via press coverage: Oct 2024 — Megan Garcia sues Character Technologies (and Google) over the suicide of her 14-year-old son Sewell Setzer III, who had formed an intense parasocial relationship with a Character.AI persona. **May 21, 2025 — Judge Anne Conway (M.D. Fla.) denies the motion to dismiss**, rejecting the First Amendment defense at this stage and allowing product-liability theories (defect, negligence, failure-to-warn) to proceed — chatbot outputs treated as features of a *product*, which is precisely the designed-relationship framing this chapter teaches. Sept 2025 — additional wrongful-death suits (e.g., Juliana Peralta, 13, Colorado). **Oct 29, 2025 — Character.AI announces removal of open-ended chat for under-18s, effective Nov 25, 2025**, citing regulatory and legal pressure. **Jan 2026 — Google and Character.AI agree to mediate/settle**; joint notices pause five parallel cases in four states; Garcia comments the teen policy came "too late." Design lesson: every harm vector in the complaints maps to an interface decision (persona realism, memory, affective escalation, no crisis off-ramps) — the regulatory system is now pricing those decisions. **Sources:** NBC News (rcna240985), Fortune (Oct 29 2025; Jan 8 2026), K-12 Dive on settlement mediation. Register caution per TOC Risk 7: teach as design analysis, not moral panic; suicide content needs careful handling.

### Case 2: The LearnLM disclosure question
From the book's own spine (synthesis §2): in the Eedi/LearnLM RCT, the student interface looked identical whether help came from a human tutor or human-supervised AI — methodologically defensible blinding, but as production design it is non-disclosure. Use as the in-domain discussion case: when the *best-evidenced* tutoring result in the field was produced under conditions a production system could not ethically replicate, what does the transparency layer owe the learner, and would disclosure change the effect? (Unknown — flag as open empirical question; connects to Schilke & Reimann's trust-cost finding.) **Source:** synthesis §2/§6 (Eedi/Google DeepMind LearnLM RCT, exploratory label preserved).

### Case 3: WGU's AI student-support ecosystem
WGU Labs as the institutional designer-side case: building multi-agent student support assistants while publishing the trust survey that constrains them — an institution measuring its own escape-hatch problem. Useful as the "designed relationship at institutional scale" example and the source of the chapter's non-negotiable pattern. **Sources:** wgulabs.org briefs ("Trust, Tech, and the Human Touch"; "How WGU Labs Built an AI Student Support Assistant").

### Failure case: anthropomorphic concealment as engagement strategy
Composite of documented practice: companion-style apps deploying simulated typing, persistent memory, affective escalation, and humanlike personas to maximize session duration — the market-incentive pattern Bhat & Long's audit documents and the litigation now targets. The failure is a *designed* failure: each cue individually defensible as polish, collectively constructing a relationship the system cannot honor, aimed at populations least equipped to decalibrate (minors; per Klarin et al., executive-function-challenged adolescents). For the learning-design version: any edtech product whose retention metrics depend on parasocial attachment has imported the failure wholesale. **Sources:** Bhat & Long 2025; Bhat 2025; Character.AI litigation record.

---

## C. Connections and dependencies

**Prerequisites:** Ch. 2 (engagement ≠ learning; populations most at risk are most targeted); Ch. 6 (tutoring spec — the relationship being disclosed is the one specified there); Ch. 9 (perceived authenticity/social presence — performance can be flat while trust sags); Ch. 10 (disclosure of AI's assessment role feeds the spec). Weeks 5–10 artifacts are literally assembled here (load-bearing integration point per TOC Part 6).

**Unlocks:** Ch. 12 (agentic AI raises the stakes: a system that *acts* needs the trust layer as a precondition — notification, override, escalation are this chapter's patterns extended to autonomous action); Ch. 13 (trust calibration is the experiential half of AI literacy; the DIS '24 Bhat & Long XAI-literacy work bridges directly); Ch. 14 (escalation rates, verification behavior, and reliance trajectories become evaluation metrics); Ch. 15 (the guardrail spec is the core of the final deliverable).

**Adjacent chapter connections:** From Ch. 10: assessment redesign told the learner what AI may do on gradable work; this chapter generalizes disclosure to every touchpoint and confronts the evidence that disclosure itself has a trust cost. To Ch. 12: the bridge sentence is exact — "the specification governs an AI that responds; Act Three begins with an AI that acts on its own." Bounded authority, audit logs, and reversibility are trust-calibration patterns under autonomy.

---

## D. Current state of the field

**Settled:**
- Trust calibration / appropriate reliance as the design goal (Lee & See 2004; two decades of human-factors replication).
- Anthropomorphic cues increase perceived warmth/competence and can inflate trust beyond capability (broad HCI literature; Bhat & Long audit for conversational AI specifically).
- Students can identify automated interactions at very high rates (WGU 89%); concealment is not viable design.
- Legal/regulatory floor now exists: EU AI Act Art. 50 (AI interaction disclosure), product-liability exposure for companion-style design choices (Garcia ruling).

**Contested or emerging:**
- The transparency dilemma: how to disclose without the legitimacy penalty (Schilke & Reimann 2025) — active research; no validated "disclosure that preserves trust" pattern yet.
- Whether counter-anthropomorphic design costs measurable engagement/persistence in learning contexts (no causal studies in education populations).
- The "four vulnerability vectors" / "Agency Design Framework" as stated in the synthesis — provenance unverified (see G).
- Parasocial relationships with educational AI specifically: consumer-companion evidence is strong and growing; education-product evidence is nearly absent.
- Where the boundary lies between motivational design and manipulative relational design — normative debate, sharpened by litigation and state-level companion-bot statutes (e.g., California SB 243-style disclosure laws; verify current statutory landscape at drafting).

**Key references:**
1. Lee, J.D. & See, K.A. (2004). "Trust in Automation: Designing for Appropriate Reliance." *Human Factors* 46(1), 50–80. VERIFIED.
2. Bhat, M. & Long, D. (2025). "Emotional Plausibility vs. Emotional Truth…" *AIES-25*, 430–444, 10.1609/aies.v8i1.36561. VERIFIED.
3. Bhat, M. (2025). "Toward an Ethic of Synthetic Relationality…" *AIES-25*, 416–429, 10.1609/aies.v8i1.36560 (the N=344 survey). VERIFIED.
4. Schilke, O. & Reimann, M. (2025). "The transparency dilemma: How AI disclosure erodes trust." *OBHDP* 188. VERIFIED.
5. WGU Labs (2026). "Trust, Tech, and the Human Touch" research brief (n=545). VERIFIED via wgulabs.org.
(Supporting: Bansal et al. 2019/2021; Bhat & Long DIS '24 XAI-literacy paper, 10.1145/3643834.3660722.)

**Recent developments (last 3 years):** 2024 — Bhat & Long DIS '24 XAI tools; Garcia v. Character Technologies filed; companion-app scrutiny intensifies. 2025 — Conway ruling (May) establishes product framing; Schilke & Reimann transparency dilemma (13 experiments); AIES-25 publishes both Bhat papers (Oct); Character.AI under-18 ban (Oct–Nov); WGU Labs fields trust survey. 2026 — Google/Character.AI settlements pause five cases (Jan); WGU brief published (Feb); EU AI Act transparency obligations in application; state companion-chatbot disclosure statutes proliferating.

---

## E. Teaching considerations

**Where students get stuck:**
- Reading the chapter as ethics commentary rather than design method. The unsticker is the audit exercise: every "harm" must be traced to a specific, screenshot-able interface decision.
- The transparency dilemma feels paradoxical ("disclose and lose trust, conceal and violate") until reframed: the dilemma exists only if disclosure is a label rather than a designed relationship with accountability attached.
- Overcorrecting into cold, dehumanized interfaces — concluding all warmth is manipulation. Distinguish *false relational claims* (simulated memory-as-caring) from *honest supportive design* (evidence-grounded encouragement, clear role framing).
- Confusing trust in the AI with trust in the institution deploying it (WGU's 65/50 gap shows learners already separate these; specs should too).
- Register risk (TOC Risk 7): the Character.AI material involves teen suicide; students either sensationalize or sanitize. The facilitation guide needs the design-analysis register modeled explicitly.

**Analogies and framings that work:**
- "Trust is a gauge, not a fuel tank" — calibration, not maximization.
- The placebo-packaging analogy: simulated typing delays are sugar pills for relational presence — effective, dishonest, and dose-dependent.
- Nutrition-label framing for relational metadata: disclosure that travels with the interaction, not a consent form at the door.
- The fire-exit analogy for escape hatches: measured by findability in the bad moment, not by existence on the floor plan; and you don't make people earn the exit.
- "Every cue is a claim": each anthropomorphic feature asserts something about the system's inner life; the audit asks which claims are true.

**Exercises that build the target skill:**
1. (Analyze) Trust-miscalibration audit: given a conversational learning interface (or transcript + screenshots), inventory every anthropomorphic cue, classify each as honest signal / false relational claim, and predict its calibration effect. (Maps to LO2.)
2. (Apply) Redesign three cues from the audit into honest equivalents that preserve the supportive function (the worked-example pattern above).
3. (Evaluate) The disclosure design shoot-out: three disclosure treatments (ToS line, relational-metadata badge, concealment) argued against Schilke & Reimann + WGU + AI Act Art. 50; recommend and defend one. (Bloom: Evaluate.)
4. (Create) Design the escape hatch for the Track A tutor end-to-end: placement, copy, routing, staffing assumption, no-penalty guarantee, and the metric that proves it works. (Bloom: Create.)
5. (Create — checkpoint) Assemble the Guardrail Specification: integrate Weeks 5–10 artifacts into the per-touchpoint table; peer-review for empty cells ("an empty cell is a shipped default"). Track B: own project. (Bloom: Create; 100-pt checkpoint.)

---

## F. Library files relevant to this chapter

- **_lib_The_Most_Human_Human.md** — Christian on what conversation reveals about humanness; the conceptual frame for why simulated conversation makes relational claims at all.
- **_lib_Influence_Science_and_Practice.md** — Cialdini's persuasion mechanics (liking, reciprocity, authority, commitment) are the operating principles of affective misinformation; the vulnerability patterns are persuasion principles automated and personalized.
- **_lib_The_Extinction_of_Experience.md** — disembodied interaction displacing human contact; the emotional-substitution pattern at cultural scale.
- **_lib_Technopoly.md** — Postman on tools restructuring relationships and authority; useful for the authority-modulation discussion.
- **_lib_AI_A_Guide_for_Thinking_Humans.md** — Mitchell on why systems that perform understanding don't possess it; the cognitive-science backing for "feels understanding, does not understand."
- **ai_lxd_definitive_synthesis.md** — §5 (affective misinformation, WGU findings) and §6 (designed relationship) are the spine, **with the citation corrections in this file applied**.
- **experience_design_edtech_merged_synthesis.md** — companion-volume trust/transparency and interface-design material for series continuity.

---

## G. Gaps and flags

- **FLAG (CITATION — must fix in synthesis and Evidence Box):** "Bhat & Long (DIS '24)" in the synthesis conflates three papers. Affective misinformation = Bhat & Long AIES-25 (36561); N=344 Character.AI survey = Bhat solo, AIES-25 (36560); the actual Bhat & Long DIS '24 paper is the XAI-literacy tools paper. All three verified above with DOIs. The book's Week 11 citations must use the corrected attributions.
- **FLAG (UNVERIFIED):** The "four vulnerability vectors" (Reflection Simulation, Authority Modulation, Cognitive-Load Exploitation, Market-Security Tension) and the "Agency Design Framework (AFF)" appear in the synthesis and in the TikTOC learning outcomes, but could not be verified in either AIES abstract or any indexed source. They may appear in the full text of Bhat & Long 2025 (the AIES paper's "five normative principles" is the verified construct) — **someone must read the full PDFs before drafting**, and if the vectors/AFF can't be located, the chapter's LO1 and core-content list need rewording around the verified constructs (emotional plausibility vs. truth; five literacy-first principles; dynamic consent scaffolding, reflexivity prompts, interactional transparency).
- **FLAG (single-source):** WGU Labs findings are one institution's survey (n=545, online-university population — non-traditional, older than typical). Generalization to K-12 or traditional campuses is inference. The synthesis's "40%+ of non-users can't find the human" needs verification against the brief's exact segment breakdown (the verified topline is 65% overall *do* know how to escalate).
- **FLAG (register / Risk 7):** Character.AI material involves minor suicide; requires the HCI-ethics reviewer (TOC Open Question 6) and the sensitivity notes in the instructor's manual. Litigation is active/settling — facts will move; date-stamp everything.
- **GAP:** No causal studies of disclosure designs or counter-anthropomorphic patterns on *learning* outcomes in education populations. The chapter's design patterns are inference from adjacent evidence (human factors, organizational behavior, consumer-app harms) — label at the same epistemic grade the book uses for Week 12's agentic patterns.
- **GAP:** Statutory landscape for companion-bot disclosure (California SB 243 and successors; state minor-protection laws) was not exhaustively verified in this pass; needs a legal-currency check before print.
