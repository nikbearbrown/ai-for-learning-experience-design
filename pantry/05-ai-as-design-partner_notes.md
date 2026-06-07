# Research Notes: Chapter 05 — AI as Design Partner: Better First Drafts, Not Better Designers
**Source:** TIKTOC.md chapter entry
**Notes file:** 05-ai-as-design-partner_notes.md
**Corresponding chapter:** chapters/05-ai-as-design-partner.md (not yet written)
**Generated:** 2026-06-07
---
## Chapter summary (from TIKTOC.md)

**One-line:** Students learn what the evidence shows about AI in design practice — it raises the floor of novice output (Moore et al.), compresses workflow, and carries documented deskilling and design-by-analogy risks — and set the rules for their own AI use.

**Learning outcomes:**
1. (Understand) Summarize the practitioner evidence: ideation, drafting, and workflow compression as the established gains; quality, authorship, and privacy as the documented concerns.
2. (Analyze) Explain the raises-the-floor / raises-the-ceiling distinction and the design-by-analogy critique — AI reproducing familiar course formats instead of first-principles design.
3. (Evaluate) Assess the deskilling warning honestly: an evidence-backed signal, not a proven causal claim — and decide what it implies for junior roles on a design team.
4. (Create) Produce a personal/team AI workflow policy: which design tasks AI drafts, which it never touches, and why the never-touch list is where designers are made.

**Opening:** Two microlessons from the same novice designer, one AI-assisted, one not — the assisted one is better. Then the harder question the A/B test cannot answer: which workflow produces the better designer in year three?

**Core content:** Luo, Yang & Stefaniak, Kumar, Moore et al.; co-creative framing (AI + learning analytics, not AI as author); narrowing of creative range; the NNG finding that narrow features beat all-in-one generators; the toolchain (Figma AI, xAPI + AI analytics) with polish-before-pedagogy as the named trap.

**Assessment:** Design Lab #1 (25/30 pts)

**Bridge:** The designer's own AI use is settled. Now the harder design surface: the AI the learner talks to.

---
## A. Conceptual foundations

### 1. Workflow compression: what instructional designers actually do with GenAI

Three peer-reviewed practitioner studies form the chapter's empirical base, and they agree on the shape of adoption. **Luo, Muljana, Ren & Young (2025, *Educational Technology Research and Development* 73(2), 741–766; "Exploring instructional designers' utilization and perspectives on generative AI tools," mixed methods)**: designers use GenAI most for ideation, low-stakes drafts (learning objectives, activity ideas — "overcoming designer's block"), streamlining the design process, and collaboration support; their documented concerns are quality, privacy (sensitive data leaking into prompts), ownership/authorship of outputs, plagiarism, and the absence of organizational guidelines. **Yang & Stefaniak (2025, ETR&D)**: designers used ChatGPT for content generation, writing improvement, problem-solving, communication, and information searching — with attitudes splitting into optimistic, wary, and pessimistic camps rather than a uniform adoption story. **Kumar et al. (2024, *Online Learning*)**: higher-ed instructional designers use GenAI not only for design work but as institutional translators — guiding faculty use, building training, shaping policy. That third finding matters for the chapter's professional framing: the LX designer is becoming the org's de facto AI-governance layer, which is precisely the role the rest of this book trains.

The pattern across all three: the established gains are *upstream* (ideation, drafting, formatting, summarizing) and the unresolved questions are *downstream* (quality assurance, pedagogical judgment, authorship, expertise development). Speed moved; judgment didn't. Industry numbers corroborate the adoption story without adding evidential weight: Adobe's 2024 Creative Trends report found 83% of creative professionals integrating AI tools — useful as context, not as outcome evidence (Week 4 discipline applies to industry surveys too).

**Common misconception:** "Designers are using AI to design." Mostly they are using AI to *draft and unblock* — the studies consistently show usage concentrated at the low-stakes front end of the workflow, with designers explicitly withholding high-stakes work. The chapter's policy exercise formalizes what good practitioners already do by instinct.
**Worked example:** Map the ADDIE (or companion-volume) workflow stages against the Luo et al. usage categories: GenAI appears densely at Analyze-as-summarization and Develop-as-drafting, sparsely at Design-as-strategy and Evaluate. Students annotate their own last project the same way — almost everyone discovers their usage is already 80% drafting.
**Source(s):** Luo et al. 2025, ETR&D (link.springer.com/article/10.1007/s11423-024-10437-y); Yang & Stefaniak 2025, ETR&D (per synthesis; see flag §G); Kumar et al. 2024, *Online Learning*; Adobe Creative Trends 2024 (per synthesis).

### 2. Raises the floor, not the ceiling: the Moore et al. microlesson experiment

The chapter's central empirical anchor. **Moore, Eckstein, Kwon & Stamper (2025), "Generative AI in Instructional Design Education: Effects on Novice Microlesson Quality," AIED 2025 (Springer LNCS)**: an A/B field experiment inside a 14-week graduate educational technology course, n=27 students, each creating eight microlessons across four modules, alternating between GPT-4 (ChatGPT) assistance and unassisted work, scored on a 5-criteria quality rubric. Result: **AI-assisted microlessons scored significantly higher for half the assignments and never scored lower on average.** Read precisely, this is a floor-raising finding: AI assistance reliably lifts novice output toward competence; it is not evidence that AI lifts expert output toward excellence, and it is not evidence about what happens to the *novice* (as opposed to the novice's *artifacts*) over time.

The floor/ceiling distinction is the chapter's organizing lens and it recurs across the book: Tutor CoPilot's 9-point gain for the *lowest-rated* tutors (Ch3) is the same signature — AI compresses the bottom of the distribution toward the middle. The economic and organizational implications differ completely depending on which end moves: floor-raising argues for AI as a quality-assurance layer for novice-produced work; ceiling-raising (unevidenced) would argue for AI as a replacement for expertise. Conflating them is how "our juniors produce better decks" becomes "we need fewer seniors" — a non sequitur the chapter should name explicitly.

The honest limit, which the opening case dramatizes: an A/B test on artifact quality *cannot answer the year-three question*. Better drafts today and atrophied judgment in three years are fully compatible with every data point the field has. Moore et al. is a semester-length artifact-quality study, not a professional-capability trajectory study — the authors' own framing supports "thoughtful integration can enhance novice materials," nothing more.

**Common misconception:** "The assisted lessons were better, so AI makes better designers." The study measures *lessons*, not *designers*; the dependent variable is the artifact. The course's whole epistemology (Ch4: what does this endpoint license?) applies — the within-designer A/B design controls for talent but says nothing about skill development under sustained assistance.
**Worked example:** Give students two microlesson rubrics' worth of scores from a Moore-style alternating design and ask them to write the two strongest *incompatible* conclusions the data supports ("AI assistance raises novice output quality" vs. "novices learn less from assignments AI helps them complete") — then identify the study design that would distinguish them (longitudinal, with an unassisted capability endpoint — which does not yet exist; the bridge to the deskilling section).
**Source(s):** Moore et al. 2025, AIED (Springer, doi:10.1007/978-3-031-98459-4_35; author PDF at stevenjamesmoore.com/assets/papers/aied25_short_moore.pdf); companion ECTEL 2025 paper "Integrating Generative AI into Instructional Design Practice: Effects on Graduate Student Learning and Self-Efficacy" (Springer, 2025) — same team, learner-side outcomes.

### 3. Design fixation and the narrowing of creative range

The best causal evidence on AI's cost to design thinking comes from HCI, not education. **Wadinambiarachchi et al. (2024), "The Effects of Generative AI on Design Fixation and Divergent Thinking," CHI 2024 (ACM)**: between-participants experiment, N=60, visual ideation task. Participants supported by an AI image generator showed **higher design fixation, and lower fluency, variety, and originality** than baseline. Two mechanism findings matter for LXD: fixation arises both *when writing prompts* (the prompt commits you to a framing) and *when ideating in response to AI output* (the generated artifact becomes the anchor); and the study documents **"fixation displacement"** — the designer's fixation shifts from the original exemplar onto the AI's outputs. The AI doesn't just fail to diversify ideation; it substitutes its own distribution for yours.

For LXD this lands as the **design-by-analogy critique**: GenAI trained on existing course formats reproduces existing course formats. Ask for a "module on statistical inference" and you get the modal module — objectives, video, quiz — with high surface coherence. The synthesis attributes the general critique (GenAI replicates training-data patterns rather than transforming design thinking) to McCormack et al. 2024; verification note: Jon McCormack's group (SensiLab, Monash) published closely matching critiques in 2023–2024 (e.g., "The Creative Act as AI Research," ICCC 2024; earlier work arguing GenAI's design paradigms "do not stem from artists' practice and desires"), but the exact "McCormack et al. 2024" citation needs pinning before print (see §G). The critique stands on Wadinambiarachchi's experimental evidence regardless of attribution: surface coherence arrives before pedagogical assumptions have been tested — the **polish-before-pedagogy trap**, which is also the named risk of prototype-speed toolchains (Figma AI below).

**Common misconception:** "AI gives me more ideas, so my ideation is more divergent." The experimental result is the opposite: more *output*, less *variety*. Volume of generated alternatives is not divergence if they are samples from one mode. Students confuse fluency-of-artifacts with fluency-of-ideas (the CHI paper measured both; AI lowered measured fluency).
**Worked example:** Live exercise replicating the finding at micro-scale: half the class ideates learning-activity concepts for a given objective with an LLM, half with sticky notes, ten minutes; pool and code the concepts by format family (quiz, scenario, discussion, game, simulation, project…). The AI-assisted pool reliably clusters into fewer families. Then show Wadinambiarachchi's N=60 version. (Label honestly: classroom demo, not data.)
**Source(s):** Wadinambiarachchi, S., et al. 2024, CHI (dl.acm.org/doi/10.1145/3613904.3642919; arXiv:2403.11164); McCormack/SensiLab critique line (ICCC 2024 paper; attribution flag §G); ai_lxd_definitive_synthesis.md §1.

### 4. The deskilling warning: an evidence-backed signal, not a proven causal claim

The chapter must hold an exact epistemic line, because both overclaiming and dismissal are professionally costly. What exists: (a) adjacent-field documentation that creative practitioners themselves report offloading, role-shift, and erosion-of-craft concerns as AI absorbs routine design work (Palani & Ramos 2024 — synthesis citation; venue likely ACM C&C/DIS-family, verify before print, §G); (b) experimental evidence that AI assistance changes the *cognitive character* of design work in the moment (fixation, reduced divergence — Wadinambiarachchi); (c) the book's own Act One mechanism evidence that offloading degrades unassisted capability in *learners* (Bastani; Kosmyna et al. cognitive-debt EEG, single-study flag) — and the inferential step the chapter must mark in red: *designers practicing design are also learners*, so the crutch mechanism plausibly applies to them, but no longitudinal study of designer capability under sustained AI assistance exists. None. The "what kind of designer does this workflow produce?" question is open in exactly the way the durability gap (Ch4) is open for students.

The LXD-specific sharpening: content generation, branching-scenario drafting, and persona construction are precisely the tasks through which junior designers historically *built* pedagogical intuition — they are the profession's practice problems. Automating them is automating the apprenticeship. The risk-asymmetry argument from Ch4's three-bucket discipline justifies a conservative design response (protected skill-building tasks for juniors) without requiring the causal claim to be proven: the cost of unnecessary practice is small; the cost of a cohort of prompt-fluent, judgment-poor designers is large and slow to detect.

The chapter's positive frame — what to do, not just what to fear — is the **co-creative framing** from the 2025 *Journal of Applied Instructional Design* line: AI + learning analytics as instruments the designer conducts (e.g., AI-assisted persona generation grounded in real learner data when direct research is scarce), explicitly *not* AI-as-author. The designer owns problem framing, pedagogical strategy, and evaluation; AI accelerates the material between.

**Common misconception:** Two symmetric ones. "Deskilling is proven — ban AI for juniors" (it is not proven; bans also forfeit floor-raising gains and push use underground). "No causal evidence — so the concern is hand-waving" (warning signals with mechanism evidence and asymmetric risk justify design responses before causal proof; that's what professional judgment under uncertainty *is* — the Ch4 skill applied to one's own career).
**Worked example:** A design team scenario: three juniors, one senior, corporate L&D, leadership mandates "AI-first content production." Students draft the junior-role redesign: which tasks juniors must still do unassisted (objective writing from raw SME interviews; one full unassisted storyboard per quarter — the "gym" tasks), which they do AI-assisted with senior review (drafts, variants, alt-text), and what the senior now reviews *for* (pedagogical-assumption errors that polish conceals). The deliverable is Learning Outcome 4's team policy in miniature.
**Source(s):** Palani & Ramos 2024 (per synthesis; verify); Wadinambiarachchi 2024 CHI; Kosmyna et al. 2025 (single-study flag maintained from Ch2); JAID 2025 co-creative/persona articles (per synthesis); ai_lxd_definitive_synthesis.md §1 ("deskilling… warning signal, not proven causal claim").

### 5. Narrow tools beat all-in-one generators: the NNG line and the toolchain

Nielsen Norman Group's multi-year review program is the chapter's practitioner-grade tool evidence. The 2024 assessment: few design-specific AI tools meaningfully enhanced workflows; practitioners mostly used general chatbots for drafting and brainstorming. The 2025 follow-up verdict: "marginally better" — and the durable finding that **specialized, narrow features (rename layers, rewrite microcopy, summarize research notes, clean typography) genuinely save time, while broad "design this whole screen" generators disappoint**, producing plausible-looking output that ignores flows, accessibility, content constraints, and edge cases. Designers' roles shift toward editor/curator/prompt-writer; judgment, prioritization, and systems thinking remain human. This is the procurement heuristic students can carry: *buy verbs, not magic* — evaluate AI features as specific verbs applied to specific artifacts, and distrust features whose claimed scope is "design."

Toolchain specifics (flag: extreme aging risk per TikTOC Part 11 — verify all product names/capabilities before each offering): **Figma AI / Figma Make** — prompt-to-prototype and prompt-to-app workflows; Figma positions AI as a "creative collaborator"; for LXD this compresses concept → mockup → clickable learner-journey prototype, which is genuinely useful for testing alternate flows and genuinely dangerous for the polish-before-pedagogy trap (a beautiful clickable prototype of an untested pedagogical assumption is a more persuasive mistake). **xAPI + LRS + AI analytics** — the quieter, more durable structural shift: real-time behavioral feedback loops at small-institution scale, formerly a major-platform privilege; this is the "learning analytics" half of the co-creative framing and the data substrate Ch7–8 will need.

**Common misconception:** "The all-in-one AI design platform is the mature version of today's narrow tools." NNG's two-year arc suggests the opposite ordering of value: narrow tools are not immature fragments of a future generalist — they are where the value actually is, because they leave judgment in the workflow. (Genuinely contestable as a forecast; teach as current evidence, not prophecy.)
**Worked example:** Tool-evaluation worksheet for Design Lab #1: pick any two AI features in the student's actual toolchain; for each, name the verb, the artifact, the judgment it removes from the workflow (if any), and the failure that would be invisible until a learner hit it. Narrow features tend to score "no judgment removed"; whole-artifact generators don't.
**Source(s):** NN/g 2024 + May 2025 AI-tools assessments (nngroup.com; "AI Isn't Ready for UX Design" video; secondary synthesis in LINC "AI x UX 2025 Wrapped"); Figma AI/Make positioning (per synthesis; verify current product names); ai_lxd_definitive_synthesis.md §1.

---
## B. Domain examples and cases

### Case 1: The Moore et al. A/B microlesson experiment (the opening case, fully specified)
n=27 graduate students, 14-week ed-tech course, 8 microlessons each across 4 modules, within-subject alternation of GPT-4 assistance, 5-criteria rubric: assisted microlessons significantly better on half the assignments, never worse on average. Use the actual design (alternation within the same designer) as the opening's "two microlessons from the same novice." The companion ECTEL 2025 paper (same group) adds learner-side data on graduate-student learning and self-efficacy when GenAI is integrated into ID practice — worth checking for the Evidence Box.
**Sources:** Moore, Eckstein, Kwon & Stamper 2025, AIED proceedings (Springer); stevenjamesmoore.com author PDFs; Hardman's Substack analysis ("Does GenAI Actually Improve Instructional Design Quality?") as accessible secondary reading.

### Case 2: The instructional-design field studies as one composite portrait
Luo et al. 2025 + Yang & Stefaniak 2025 + Kumar et al. 2024 read together: adoption concentrated in ideation/drafting; concern concentrated in quality/privacy/authorship; attitude heterogeneity (optimistic/wary/pessimistic) within the same profession; the designer's emerging role as institutional AI-policy guide. Good seminar move: assign each study to a third of the class, have each third brief the others, then build the composite on the board — modeling evidence synthesis rather than single-study citation.
**Sources:** as in §A.1; also MDPI *Education Sciences* 15(9) 2025 "Instructional Designers' Integration of Generative AI into Their Professional Practice" and Frontiers in Education 2025 "Between scaffolds and shifts: novice instructional designers' experiences with generative AI" as newer corroborating entries.

### Case 3: Figma AI and the prototype that outran its pedagogy (illustrative)
A composite/illustrative case (label as such per sourcing rules): a design team uses prompt-to-prototype to produce a polished onboarding-course walkthrough in two days; stakeholders approve on visual fidelity; the untested assumption (that new hires can already perform the prerequisite workflow the course "reviews") survives to launch because nothing in the compressed cycle forced a learner-research touchpoint. The compression deleted exactly the step the companion volume teaches. Pattern name: polish-before-pedagogy.
**Sources:** Figma AI/Make capabilities per synthesis (verify current); pattern named in ai_lxd_definitive_synthesis.md §1; case labeled ILLUSTRATIVE.

### Failure case: AI-assisted ideation that converged — the fixation experiment
Wadinambiarachchi et al. (CHI 2024) as a designed failure demonstration: N=60, the AI-supported group fixated more and scored *lower* on fluency, variety, and originality than the no-support baseline — the assistance condition underperformed unassisted work on every divergence measure. The failure is subtle and therefore instructive: participants experienced the AI as helpful while their measured creativity dropped — the designer-side echo of Act One's "engagement is not learning" (assisted performance up, capability signature down). The mechanism (fixation displacement onto AI outputs) gives the failure a name students can spot in their own practice.
**Sources:** dl.acm.org/doi/10.1145/3613904.3642919; arXiv:2403.11164.

---
## C. Connections and dependencies

**Prerequisites:** Chapter 4 is load-bearing: "warning signal vs. causal claim" is a Week 4 epistemic category, and the deskilling discussion collapses into either panic or dismissal without it; the three-bucket discipline justifies the never-touch list. Chapter 2 supplies the mechanism analogy (the designer as learner; shortcut-seeking as rational in the moment — designers under deadline are the chess-academy students). Chapter 1's two-layer distinction is the chapter's address: this is the *practice-of-design* layer, taught before the learner-facing layers so the student's own AI use is governed before they govern anyone else's.

**Unlocks:** Chapter 6 immediately (the bridge: "the designer's own AI use is settled; now the AI the learner talks to") — and practically: students will use AI to *draft* their Week 6 tutoring specs, so Week 5's workflow policy is self-referentially in force for every subsequent Design Lab. Chapter 9 (content generation at scale reuses the judgment-bottleneck frame: generation fast, validation human). Chapter 14 (the year-three question returns as the durability gap applied to professional capability). The Week 11 guardrail spec inherits the workflow-policy genre established here (Design Lab #1 is the first "rules for AI" document the student writes).

**Adjacent chapter connections:** From Ch4: the student has just learned to deconstruct vendor claims; Ch5 turns the lens inward — the first artifact deconstructed is the student's own workflow, and the first vendor audited is the tool they already pay for. To Ch6: floor-raising via constraint is the through-line — Moore et al.'s novices improved under *structured* AI integration (course-designed prompts and process), exactly as GPT Tutor's students did under a structured system prompt; Week 6 converts that observation into specification practice.

---
## D. Current state of the field

**Settled:**
- Instructional designers have broadly adopted GenAI for ideation, drafting, and workflow streamlining, with consistent concerns about quality, privacy, and authorship (Luo 2025; Yang & Stefaniak 2025; Kumar 2024 — convergent, peer-reviewed).
- AI assistance raises the quality floor of novice instructional-design artifacts in at least one controlled course experiment (Moore et al. 2025) — never-worse, sometimes-better.
- Exposure to generative AI output during ideation can increase design fixation and reduce divergent thinking in controlled conditions (Wadinambiarachchi 2024, CHI).
- Narrow, task-specific AI features currently deliver more practitioner value than whole-artifact generators (NNG 2024–2025 program).

**Contested or emerging:**
- Deskilling of junior designers: mechanistically plausible, professionally feared, causally unestablished — no longitudinal designer-capability study exists. The chapter's central honest uncertainty.
- Whether fixation effects found in visual ideation transfer to instructional/curricular ideation (plausible, untested — the classroom demo in §A.3 is suggestive, not evidence).
- Whether "co-creative" AI+analytics methods (persona generation, journey-map drafting) improve design *outcomes* or just design *speed* — current support is design-case literature, not comparative studies.
- The floor/ceiling boundary itself: does sustained assisted practice eventually raise ceilings (a skill-acquisition claim), or does the ceiling effect reflect a hard limit of pattern-replication? No evidence either way.

**Key references:**
1. Luo, T., Muljana, P. S., Ren, X., & Young, D. (2025). "Exploring instructional designers' utilization and perspectives on generative AI tools: A mixed methods study." *ETR&D* 73(2), 741–766.
2. Moore, S., Eckstein, L., Kwon, C., & Stamper, J. (2025). "Generative AI in Instructional Design Education: Effects on Novice Microlesson Quality." *AIED 2025*, Springer.
3. Wadinambiarachchi, S., et al. (2024). "The Effects of Generative AI on Design Fixation and Divergent Thinking." *CHI 2024*, ACM.
4. Kumar et al. (2024). *Online Learning* — higher-ed instructional designers' GenAI roles (design work + faculty guidance + policy).
5. Nielsen Norman Group (2024; 2025). AI design-tool assessments ("narrow features beat all-in-one generators").

**Recent developments (last 3 years):** The practitioner-study wave matured from surveys (2023–24) to mixed-methods and experimental designs (2024–25), peaking with Moore et al.'s AIED A/B study and its ECTEL learner-side companion; CHI 2024 delivered the first strong causal evidence on AI-induced fixation; NNG's tracking program produced the field's only longitudinal tool-value record (verdict trajectory: "not ready" → "marginally better," with value pooling in narrow features); Figma's 2024–2025 AI releases (Figma AI, Figma Make, AI in Sites) made prompt-to-prototype mainstream in the LXD toolchain; newer 2025–2026 entries (MDPI *Education Sciences*; Frontiers in Education on novice designers' "scaffolds and shifts") extend the portrait without changing its shape.

---
## E. Teaching considerations

**Where students get stuck:**
- *The self-exemption:* students apply Act One's crutch logic fluently to learners and resist applying it to themselves ("I'm a professional; I know what the AI is doing"). The chess-academy callback is the antidote: shortcut-seeking is rational in the moment *especially* for the competent and busy.
- *Floor/ceiling collapse:* "AI improves quality" gets remembered without the distribution clause. Force the precision: improves *whose* output, on *what* measure, relative to *what* baseline.
- *Policy theater:* first drafts of the workflow policy are aspirational ("use AI thoughtfully") rather than structural. Require task-level specificity and an enforcement surface (what a reviewer checks), mirroring Act One's "guardrails must be structural, not aspirational."
- *The never-touch list as taboo list:* students populate it with ethically fraught tasks (grading, learner data) but miss the developmental rationale — tasks they must do unassisted *because that is where their own skill is built*. The two rationales (risk vs. apprenticeship) need separate columns.

**Analogies and framings that work:**
- *The calculator line, upgraded:* nobody worries that senior accountants use Excel; everyone should worry if trainees never learn what the formulas do. The question is never "is the tool allowed" but "what must be learned before the tool absorbs the task."
- *The gym:* you can hire someone to lift your weights; the weights move, you don't get stronger. Junior design tasks are reps, not output. (Lands hard with working professionals.)
- *Buy verbs, not magic* (NNG distillation) — procurement heuristic version of the narrow-tools finding.
- *Polish-before-pedagogy:* the prettier the prototype, the more persuasive its untested assumptions. Speed of polish is a risk multiplier on unvalidated design.
- *The year-three question:* the chapter's refrain, and the bridge back to the durability gap — every workflow decision is also a bet on who you become.

**Exercises that build the target skill:**
1. (Analyze) **Workflow archaeology:** students log one week of their actual AI use (or reconstruct their last project), code each use against the Luo et al. categories, and tag each as floor-raising, ceiling-attempting, or judgment-displacing. (Bloom: Analyze.)
2. (Analyze/Evaluate) **Replication-in-miniature fixation demo** (§A.3 worked example) followed by a structured read of Wadinambiarachchi's method section: what did the demo lack that the study had? (Bloom: Analyze, with a Ch4 methods callback.)
3. (Evaluate) **The deskilling memo:** 400 words to a skeptical design director, stating exactly what the deskilling evidence does and does not establish, and recommending one structural change to junior roles with the risk-asymmetry justification. (Bloom: Evaluate.)
4. (Create) **Design Lab #1 — the AI workflow policy:** task-level table (AI drafts / AI assists with review / never-touch), each never-touch entry justified as risk-based or apprenticeship-based, plus the Withdrawal Test answer: *what can this team still design well if the AI subscription lapses tomorrow, and how does the policy keep that true?* (Bloom: Create; Track B applies it to their real team/workflow.)

---
## F. Library files relevant to this chapter

- **_lib_Co-Intelligence__Living_and_Working_with_AI.md** (Mollick) — the chapter's accessible counterpoint and complement: "always invite AI to the table," centaur/cyborg work patterns, "treat it as a person" heuristics; assign against the fixation and deskilling evidence so students must reconcile Mollick's enthusiasm with Wadinambiarachchi's data — the reconciliation (Mollick's *jagged frontier* requires exactly the task-level discrimination the workflow policy enforces) is the chapter's argument restated.
- **ai_lxd_definitive_synthesis.md** — primary grounding: §1 entire (practitioner studies, floor-raising, fixation, deskilling, toolchain, co-creative framing).
- **experience_design_edtech_merged_synthesis.md** — the companion volume's design-process baseline; needed to specify *which* workflow stages AI is compressing and which judgment steps (learner research, evaluation) the polish-before-pedagogy trap deletes.
- **_lib_Calling_Bullshit.md** — secondary: industry adoption statistics (Adobe's 83%) as claims to deflate with Week 4 tools; survey-of-enthusiasm vs. evidence-of-effect.
- **_lib_Science_Fictions.md** — secondary: hype cycles inside professional fields, useful for the attitude-camps finding (optimism/wariness/pessimism as predictable sociology, not data).

---
## G. Gaps and flags

- **FLAG (attribution): Yang & Stefaniak 2025, ETR&D.** Synthesis-sourced; my searches confirmed the Luo et al. ETR&D study in detail but did not independently surface the Yang & Stefaniak bibliographic record. Stefaniak has an extensive ID-research record so the citation is plausible; pin volume/pages before print.
- **FLAG (attribution): Kumar et al. 2024, *Online Learning*.** Same status — synthesis-sourced, consistent with the literature, full citation unverified in this pass.
- **FLAG (attribution): Palani & Ramos 2024** (deskilling/cognitive-offloading in creative practice). Synthesis-sourced; venue not confirmed in this pass (likely ACM C&C/DIS family). The deskilling argument should lean on Wadinambiarachchi (fully verified) and mark Palani & Ramos as supporting until pinned.
- **FLAG (attribution): "McCormack et al. 2024" for the design-by-analogy critique.** Verification found McCormack/SensiLab publishing closely matching critiques (ICCC 2024 "The Creative Act as AI Research"; 2023 statements that GenAI design paradigms don't stem from practitioners' desires), but not an exact 2024 citation matching the synthesis's framing. The critique itself is multiply supported; fix the citation or re-attribute before print.
- **FLAG (single-source): Moore et al. is one course, one instructor-team, n=27.** The chapter's central positive finding rests on it; the Evidence Box must say so. The ECTEL companion paper partially extends it (check before drafting).
- **FLAG (aging, extreme): Figma AI / Figma Make / NNG verdicts.** Product names, capabilities, and "narrow beats broad" could all shift within a product cycle; TikTOC Part 11 already assigns before-each-offering review — this chapter holds most of that risk.
- **GAP: no longitudinal designer-capability study exists.** The chapter's honest center. If one lands (today is June 2026; candidate venues: ETR&D, AIED, CHI), it either arms or disarms the deskilling section — wire to the evidence-update protocol.
- **GAP: floor-raising evidence is novice-only.** No comparable experiment on *expert* designer output quality with/without AI; the ceiling half of the chapter's title claim is currently inference from absence. Say so in the Evidence Box.
- **FLAG (illustrative case): the Figma polish-before-pedagogy case (§B.3) is composite/illustrative** and must carry the label per the book's sourcing requirement.
