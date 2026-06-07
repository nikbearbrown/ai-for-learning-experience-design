# Research Notes: Chapter 02 — The Crutch Effect: Shortcut-Seeking and Cognitive Debt
**Source:** TIKTOC.md chapter entry
**Notes file:** 02-the-crutch-effect_notes.md
**Corresponding chapter:** chapters/02-the-crutch-effect.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn why the crutch is the default — learners rationally seek cognitive shortcuts (the chess-academy finding), and offloading measurably reduces neural engagement in subsequent unassisted work (cognitive debt).

**Learning outcomes:**
1. (Understand) Explain the crutch effect's behavioral mechanism: shortcut-seeking as in-the-moment rational, not lazy — and why this closes the "let students self-regulate" escape hatch.
2. (Understand) Describe the cognitive-debt finding (declining functional connectivity with increasing reliance on generative assistance) and its limits as a single-study result.
3. (Analyze) Identify the crutch-producing features in a provided product: answers on request, no reasoning requirement, unrestricted access, no fading.
4. (Apply / Track B) Locate the highest-reliance-risk touchpoint in their own project.

**Opening:** The chess academies: learners given free choice of when to ask the AI for help — and the long-term outcomes of letting them choose. The students predict the result before seeing it. Most predict wrong.

**Core content:** The chess-academy follow-up; Kosmyna et al. cognitive debt (presented with single-study caution); Wang et al. — 85% of STEM students use GenAI, over half paste problems and take solutions; the crutch-producing pattern list; the default thesis.

**Assessment:** Project selection due (ungraded gate) + Evidence Brief #2 (30 pts)

**Bridge:** If the crutch is the default, the scaffold is a counter-design. Three RCTs show what it looks like.

---

## A. Conceptual foundations

### Shortcut-seeking as rational behavior: the chess-academy finding

The chess-academy study is the Bastani group's follow-up that closes the design field's favorite escape hatch — "we don't need guardrails; students will self-regulate." Design (per Knowledge at Wharton and INSEAD Knowledge coverage, early 2026, of the working paper "When Does AI Assistance Undermine Learning?"): more than 200 chess students in chess academies completed a 12-week intensive AI-enabled training program using an AI tutor purpose-built for the experiment. Chess was chosen deliberately: it is a sequential decision-making domain where both immediate decisions and long-term skill growth can be measured with precision (engine evaluation provides an objective skill metric). Students were randomized to a **system-regulated** condition — the platform automatically provided AI tips at pedagogically chosen key moments — or a **self-regulated** condition, identical except students could *additionally* request AI help at any time via a button.

Results: system-regulated students improved **64%** over the program; self-regulated students improved **30%** — less than half the learning, from a design difference as subtle as one extra button. The behavioral trace is the mechanism made visible: self-regulated students escalated their help requests over time, and by the end of three months were requesting move-reveal tips every three to four moves — effectively outsourcing decision-making. Most damning for the self-regulation hypothesis: **students were aware of their over-reliance and increased their usage anyway**. Awareness did not produce restraint.

The conceptual move the chapter must make: this is not laziness, it is *rational time-discounting under cognitive load*. At each decision point, asking the AI is locally optimal — it reduces effort, reduces error risk, and feels like progress. The cost (foregone schema construction) is invisible, delayed, and probabilistic. No individual help request is irrational; the *accumulated policy* is ruinous. This is structurally identical to other self-control problems (diet, savings), which is why the remedy is structural (choice architecture, guardrails) rather than exhortative (telling learners to be disciplined). Pre-AI precedent the chapter should cite so this doesn't read as AI-novelty: the intelligent-tutoring-systems literature documented "help abuse" and "gaming the system" two decades ago — students exploiting on-demand hints to extract answers, with associated learning costs (Baker, Corbett, Koedinger & Wagner 2004; Aleven & Koedinger's work on help-seeking) — meaning *the help button has always been a design hazard; LLMs made the button omnipotent.*

**Common misconception:** "Shortcut-seeking shows students are lazy or don't care, so motivated/adult learners are safe." The chess students were motivated enough to enroll in academies and aware of their over-reliance; professionals show the same pattern (cf. Chapter 5's deskilling literature). The behavior is rational in the moment for *everyone*; vulnerability is a property of the choice architecture, not the learner's character. Corollary misconception: "the fix is teaching self-regulation" — metacognitive training helps at the margin, but the chess result shows awareness alone fails; guardrails must be structural (Prior Misconception #2).

**Worked example:** Model the learner's decision at a single moment: a student is stuck on a problem, 40 minutes of homework left, AI button available. Option A (struggle): high effort now, uncertain success, invisible future benefit (stronger schema). Option B (ask AI): low effort, guaranteed progress, invisible future cost. Run the same decision 100 times across a semester: each choice of B is individually defensible; the policy "always B when stuck" is the −17% policy. Then redesign the choice architecture: what happens to the decision if the AI requires the student to state their current approach first (raises cost of B slightly, converts B into partial A)? If help unlocks only after one attempt? If tips arrive system-timed instead of on-demand? Students see that the chess study's 64/30 split is this decision model, run experimentally.

**Source(s):** Knowledge at Wharton, "When Does AI Assistance Undermine Learning?" (coverage of Bastani et al. chess-academy working paper; also INSEAD Knowledge, "How On-Demand AI Assistance Undermines Learning"; Penn coverage March 2026). **FLAG: working paper — verify publication status and exact author list before press.** Baker, R. S., Corbett, A. T., Koedinger, K. R., & Wagner, A. Z. (2004). Off-task behavior in the Cognitive Tutor classroom: When students "game the system." *CHI 2004*. Aleven, V., & Koedinger, K. R. (e.g., 2000s help-seeking work with the Help Tutor).

### Cognitive offloading: the general phenomenon beneath the AI panic

Cognitive offloading is the use of physical action or external resources to reduce the information-processing demands of a task — writing things down, tilting your head to read rotated text, storing memories in your phone. The framing source is Risko & Gilbert (2016, "Cognitive Offloading," *Trends in Cognitive Sciences* 20(9), 676–688): offloading is ubiquitous, often adaptive (it genuinely extends what we can do), and governed by metacognitive cost-benefit decisions — we offload when we judge internal processing to be effortful or unreliable. Two critical findings for the chapter: (1) offloading decisions are driven by *perceived* effort and confidence, which are miscalibrated in systematic ways — people offload more than performance-optimal when the external option is easy; and (2) offloading has *downstream memory consequences*: information we expect to be externally available is encoded more shallowly. The canonical demonstrations: Sparrow, Liu & Wegner (2011, *Science*, "Google Effects on Memory") — people remember *where* to find information rather than the information itself when they expect future access; Storm & Stone (2015, *Psychological Science*) — saving one file improves memory for the next (offloading frees capacity), showing offloading is not simply bad.

The chapter's job is calibration: offloading is neither sin nor panic — it is a *trade*. You trade internal encoding for external access. The trade is excellent when the external resource will reliably be present at performance time (calculators in engineering practice) and disastrous when the performance context strips the resource away (exams, novel problems, interviews, life) or when the offloaded process *was the learning objective itself*. GenAI radicalizes the trade in three ways: it offloads *generative* processes (composition, reasoning, problem-solving) rather than storage; it is conversational and frictionless, lowering the offload threshold below any prior technology; and it produces finished-looking artifacts, masking the fact that no internal work occurred. This is why the crutch is the *default*: the offloading decision system that served humans well with notebooks and calculators is miscalibrated for a machine that will do the thinking itself.

**Common misconception:** "We've heard this before — calculators, Google, spellcheck — and the panic was always wrong, so the AI version is also overblown." Partially right, and the chapter should honor it (offloading literature shows real benefits), but the disanalogy is what gets offloaded: calculators offload *computation* after the concept is learned; LLMs offload *the construction of understanding itself* — the exact process (generation, retrieval, organization) that the learning sciences identify as the mechanism of durable learning. The right question is never "is offloading bad?" but "which cognitive process is being offloaded, and was that process the point?"

**Worked example:** The "offloading ledger" exercise: take three tools — calculator in a statistics course, ChatGPT summarizing assigned readings, ChatGPT drafting the student's data-analysis interpretation. For each, fill four cells: what process is offloaded; is that process the learning objective; will the tool be present at performance time; what is encoded internally afterward. The calculator passes (arithmetic ≠ objective; present later; concepts still encoded). Summarization is marginal (reading-for-structure may be the objective). Interpretation drafting fails all cells — and is the one students report doing most (Wang et al. below).

**Source(s):** Risko, E. F., & Gilbert, S. J. (2016). Cognitive offloading. *Trends in Cognitive Sciences* 20(9), 676–688. Sparrow, B., Liu, J., & Wegner, D. M. (2011). Google effects on memory. *Science* 333, 776–778. Storm, B. C., & Stone, S. M. (2015). Saving-enhanced memory. *Psychological Science* 26(2), 182–188. Gilbert's subsequent intention-offloading work (UCL) for the metacognitive-miscalibration point.

### Cognitive debt: the Kosmyna EEG finding — and exactly how far it goes

The study: Kosmyna, N., et al., "Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task" (MIT Media Lab; arXiv:2506.08872, posted June 2025; a peer-reviewed version subsequently appeared — the book's synthesis records the venue as *AI, Brain and Child*; **verify final venue/citation before press**). Design: 54 participants from Boston-area universities wrote SAT-style essays across three sessions in three groups — **LLM** (ChatGPT allowed), **Search** (Google allowed, no LLM), **Brain-only** (no tools) — wearing EEG; a fourth session (n=18 total) crossed participants over (LLM users wrote unassisted; Brain-only users got the LLM).

Findings as reported: EEG functional connectivity scaled *down* with the amount of external support — Brain-only showed the strongest, most distributed networks; Search intermediate; LLM weakest. LLM users showed weaker memory of their own essays (in session 1, a large majority could not accurately quote a sentence they had "written" minutes earlier; Brain-only and Search users could), and reported lower ownership of their essays. LLM-group essays were more homogeneous in vocabulary and structure. In the crossover, LLM-to-Brain participants showed weaker connectivity and under-engagement relative to people who had practiced unassisted — the pattern the authors label **"cognitive debt"**: accumulated reliance on generative assistance leaves the learner neurally under-engaged when the assistance is withdrawn. This is the neurological face of the behavioral crutch effect — Bastani measured what learners *could no longer do* unassisted; Kosmyna measured what learners' brains *no longer did* unassisted.

The chapter must teach the limits with the same care as the finding (learning outcome 2 demands it):
- **Sample:** 54 total ≈ 18/group; crucial session 4 had only 18 participants (~9 per crossover direction). Geographically and demographically narrow (Boston-area university students).
- **Task:** one task type (timed essay writing) over a few months — not learning a domain, not classroom learning.
- **Measure:** EEG connectivity is an *engagement* proxy, not a learning outcome; lower connectivity during a task is not "brain damage" and does not directly establish worse learning. The arrow from connectivity to capability is interpretive.
- **Status:** released as a preprint explicitly to gather feedback; at release it was not peer-reviewed. A published critical commentary (arXiv:2601.00856) raised selective-reporting concerns and internal inconsistencies in how session-4 interview results were described, plus reproducibility issues (55 vs. 54 participants; unclear exclusions).
- **Author pushback against hype:** the authors' own FAQ asked media not to use "brain scans," "brain damage," "LLMs make you dumb," or "terrifying findings." The study became a case study in science communication failure — its most viral interpretations are ones the authors disclaimed.

Book position (per TikTOC Part 11): taught as **the candidate mechanism with an explicit single-source flag**. The honest formulation: a small, suggestive, mechanistically plausible study whose direction agrees with the behavioral evidence (Bastani, chess academies, Fan et al.) — convergence across methods is the reason to take it seriously; the EEG study alone would not carry the weight.

**Common misconception:** Two symmetrical ones, both wrong. (1) "MIT proved ChatGPT damages your brain" — overclaim; the study measured task-time connectivity in essay writing in 54 people and its authors explicitly rejected this framing. (2) "It's a tiny unreviewed preprint, so cognitive debt is debunked" — also wrong; the finding's value is convergent validity with independent behavioral RCTs, and dismissing it wholesale repeats the same evidence-hygiene failure in the other direction. The chapter should explicitly use this study to teach *holding a finding at its correct weight* — a skill Chapter 4 formalizes.

**Worked example:** Evidence Brief #2 candidate task: students receive three real headlines about the study ("ChatGPT is rotting your brain," "MIT study finds AI makes you dumber," "Small study hints at cognitive cost of AI writing") plus the study's actual parameters (n, task, measure, status). They write the one-paragraph Evidence Box entry: finding, endpoint type (neural engagement during task — neither assisted nor unassisted *performance*), sample limits, verification status, and what additional study would upgrade confidence (e.g., classroom domain-learning replication with delayed unassisted performance outcomes). This trains the exact register the book's Evidence Boxes use.

**Source(s):** Kosmyna et al., arXiv:2506.08872; MIT Media Lab project page (media.mit.edu/projects/your-brain-on-chatgpt — includes authors' anti-hype FAQ); critical commentary arXiv:2601.00856; Science (AAAS) ScienceAdviser coverage; Transparency Coalition explainer on results and limitations. **FLAG: confirm final peer-reviewed venue and whether session-4 inconsistencies were resolved in the published version.**

### Desirable difficulties: why removing struggle removes learning

The positive theory underneath the whole chapter: durable learning is produced by effortful processing, and conditions that make acquisition *harder in specific ways* make learning *stronger*. Bjork's "desirable difficulties" (Bjork 1994; Bjork & Bjork 2011, "Making things hard on yourself, but in a good way") catalog the canon: **retrieval practice** (testing beats restudy — Roediger & Karpicke 2006), **spacing** (distributed beats massed), **interleaving** (mixed problem types beat blocked), and **generation** (producing an answer, even a wrong one, beats reading it). The shared mechanism: these manipulations force the learner to execute the cognitive operations — retrieval, discrimination, construction — that build and strengthen the memory traces and schemas later performance depends on. Closely allied: Kapur's **productive failure** (2008, *Cognition and Instruction*; 2016 review) — learners who struggle with problems *before* instruction outperform direct-instruction groups on conceptual understanding and transfer, even though they perform worse during the struggle phase.

The connection to AI is precise, not rhetorical: an on-demand answer engine is a machine for *removing exactly the difficulties the literature identifies as desirable*. It replaces retrieval with lookup, generation with reception, struggle-before-instruction with instruction-on-demand, and spaced effort with immediate resolution. The crutch effect is therefore not an anomaly requiring new theory — it is the desirable-difficulties literature's *prediction*. (This is also why the scaffold patterns of Chapter 3 work: hint ladders, reasoning gates, and fading are mechanisms for *re-inserting* desirable difficulty into an AI interaction.) Critical nuance to carry: difficulties are desirable only when the learner can succeed with effort — difficulty beyond the learner's reach is just failure (the ZPD boundary, picked up in Chapter 3). The design problem is calibrating difficulty, not maximizing it.

The recent AI-specific corroboration: Fan, Y., et al. (incl. Gašević) (2025, *British Journal of Educational Technology*), "Beware of metacognitive laziness": in a lab study of essay-revision learning, the ChatGPT-supported group improved essay scores most but showed **no greater knowledge gain or transfer**, and exhibited fewer metacognitive processes (evaluation, orientation) in trace data than groups supported by a human expert or a checklist — the authors coin "metacognitive laziness" for the offloading of self-regulation itself. This is the bridge finding: better artifacts, unchanged learning, reduced self-monitoring.

**Common misconception:** "Good learning experiences minimize friction; struggle means the design failed." This UX instinct — correct for checkout flows — is wrong for learning, and it is the single most professionally dangerous transfer LX designers make from general UX into LXD. Frictionless task completion and durable learning are different objectives that frequently trade off against each other. The designer's job is to remove *extraneous* friction (confusing navigation, unclear instructions) while preserving *germane* difficulty (the cognitive work that is the point).

**Worked example:** Two versions of the Track A statistics tutor handling the same student error on a sampling-distribution problem. Version A (crutch): student pastes the problem; AI returns the full worked solution; student copies it; in-session score 100%. Version B (scaffold preview): AI flags that an error exists in the student's setup, asks the student to identify which assumption fails, and only then offers a hint targeting the misconception. Map each version against the desirable-difficulties checklist: retrieval (B forces it; A bypasses), generation (B partial; A none), error-driven processing (B engages Kapur's mechanism; A terminates it). Predict each version's two columns (assisted/unassisted) — students should be able to derive the Bastani table's *shape* from theory alone. That derivation is the chapter's payoff.

**Source(s):** Bjork, R. A. (1994). Memory and metamemory considerations in the training of human beings. In Metcalfe & Shimamura (Eds.), *Metacognition*. Bjork, E. L., & Bjork, R. A. (2011). Making things hard on yourself, but in a good way. In *Psychology and the Real World*. Soderstrom & Bjork (2015), *Perspectives on Psychological Science*. Roediger & Karpicke (2006), *Psychological Science*. Kapur, M. (2008). Productive failure. *Cognition and Instruction* 26(3); Kapur (2016), *Educational Psychologist*. Fan et al. (2025), *BJET* — "Beware of metacognitive laziness" (also arXiv:2412.09315; ERIC EJ1460793).

### The crutch-producing pattern list and the default thesis

The synthesis's crutch pattern list, now groundable feature-by-feature in the chapter's evidence: **(1) complete answers on request** (Bastani GPT Base; ITS "help abuse" precedent), **(2) no reasoning requirement before help** (contrast: GPT Tutor's articulate-first design; Fan et al.'s reduced metacognition), **(3) unrestricted access throughout practice** (chess academies: the self-regulated button), **(4) optimizing for fluency/speed/affective engagement while collapsing cognitive work** (four-pillars analysis from Ch. 1; Kosmyna's homogenized essays), **(5) no fading as competence builds** (the understudied pattern — flagged honestly; Ch. 6 designs it anyway).

The **default thesis** is the chapter's destination: the crutch is not a worst-case scenario — it is the *zero-design outcome*. Evidence that the default is what actually ships and what learners actually do: Wang et al. (2024, arXiv:2412.02653, literally titled "Scaffold or Crutch? Examining College Students' Use and Views of Generative AI Tools for STEM Education") — **85% of surveyed STEM students report using GenAI for coursework; over half report inputting problems directly for the AI to generate solutions; 38% simply copy-paste the problem to be solved**. CRITICAL CITATION CAUTION: this is a survey of **40 STEM students (plus 28 faculty)** across US institutions — a small exploratory sample whose headline percentages circulate as if from a national survey. The book should cite it for the *pattern* (default usage mode is solution-extraction) with the n stated, and can triangulate with larger surveys (e.g., HEPI/Kortext 2025 UK student survey, n≈1,000+, finding ~88% of UK undergraduates had used GenAI for assessments in some form — verify exact figure if used). The default thesis also explains the market: consumer AI products optimize engagement and task completion (the crutch profile) because those are the metrics buyers see — connecting back to Chapter 1's dashboard critique and forward to Chapter 3's claim that scaffolding requires deliberate counter-design against both learner instinct and market gradient.

**Common misconception:** "Crutch products are badly built products." The opposite: the crutch profile is what *excellent* consumer product design produces when pointed at learning — instant resolution, zero friction, delightful tone. The crutch is a local optimum of standard product-design practice. This reframing matters professionally: students must learn to argue against their own org's best practices, with evidence, which is the Reliance Disclosure mechanic in embryo.

**Worked example:** The pattern-list audit (learning outcome 3): provide a feature-level description of a fictional-but-typical homework helper ("snap a photo of any problem, get step-by-step solutions instantly, unlimited, with a friendly coach persona"). Students mark each phrase against the five crutch patterns, then rank the product's touchpoints by reliance risk, then (Track B) repeat on their own project — producing the "highest-reliance-risk touchpoint" deliverable the week requires. Note the photo-solver category (Photomath, Chegg-style) as the pure case: every one of the five patterns, at scale, marketed as learning.

**Source(s):** Wang et al. (2024), arXiv:2412.02653 (n=40 students + 28 faculty — state the n); ai_lxd_definitive_synthesis.md §2 (pattern lists, default thesis); HEPI/Kortext Student Generative AI Survey 2025 (hepi.ac.uk) for triangulation; Bastani et al. 2025; chess-academy working paper; Fan et al. 2025.

---

## B. Domain examples and cases

### Case 1: The chess academies (the opening case — prediction exercise)

Run exactly as the TikTOC opening specifies: describe the design (two conditions, the only difference an always-available help button), have students predict which group improved more and by how much, then reveal 64% vs. 30%. The prediction failure is the lesson — most students (like most designers) underestimate both the direction-stability and the magnitude of self-regulation failure. Then the second reveal: students *knew* they were over-relying and accelerated anyway (every 3–4 moves by week 12). Texture: 200+ students, 12 weeks, purpose-built AI tutor, chess chosen for measurement precision. **Source:** Knowledge at Wharton "When Does AI Assistance Undermine Learning?" + INSEAD Knowledge coverage; working paper — FLAG as such in the Evidence Box.

### Case 2: GPT Base's error trail (K-12 mathematics — re-reading Chapter 1's table at the mechanism level)

Zoom into the Bastani study's mechanism evidence: GPT-4's arithmetic and logical errors propagated verbatim into student work in the GPT Base condition — students were transcribing, not processing. Pair with the study's perception data (students did not perceive the harm; assisted success felt like learning) to teach the *invisibility* property: the crutch effect cannot be felt from inside. This case carries the inflated self-assessment risk domain (synthesis: intellectual agency). **Source:** Bastani et al. 2025, PNAS.

### Case 3: "Metacognitive laziness" in essay revision (higher ed, lab study)

Fan et al. 2025 (BJET): four conditions for essay-revision support (ChatGPT, human expert, checklist, none); ChatGPT group produced the best essay-score improvement but no greater knowledge gain or transfer, with measurably fewer evaluation/orientation events in trace data. Use as the artifact/learning dissociation case: the deliverable improved; the learner didn't. Bridges cleanly to assessment validity (Chapter 10: if the artifact improved but the learner didn't, what was the assignment measuring?). **Source:** Fan et al. 2025, *BJET* (arXiv:2412.09315).

### Failure case: The cognitive-debt media cycle (science communication failure)

The Kosmyna study's public life as the failure case: a cautious 54-person preprint became "MIT: ChatGPT damages your brain" within days; the authors published an FAQ begging media not to use the framings that dominated coverage; a critical commentary then documented internal inconsistencies — and both the hype and the backlash outran the data. The failure being taught is not the study's; it is the *evidence-consumption* failure of a field that wanted a headline more than a finding — in both directions. This case does double duty: it delivers learning outcome 2's "limits as a single-study result" and previews Chapter 4's vendor-claim and evidence-state discipline. **Sources:** media.mit.edu project FAQ; arXiv:2506.08872; commentary arXiv:2601.00856; AAAS ScienceAdviser item.

---

## C. Connections and dependencies

**Prerequisites:** Chapter 1's vocabulary is load-bearing: the two layers, the three-condition table, assisted vs. unassisted endpoints. Students must arrive able to state the Bastani result; this chapter explains it. The design-lab project selection gate falls this week — students need the crutch pattern list before choosing, since the Track B deliverable is locating their project's highest-reliance-risk touchpoint.

**Unlocks:** Chapter 3 directly (the scaffold patterns are point-by-point negations of this chapter's crutch patterns — answer-giving→hint ladders; no-reasoning-requirement→reasoning gates; unrestricted access→structured triggers; no fading→fading schedules). Chapter 4 (the single-source caution practiced here on Kosmyna becomes the general evidence-weighing method). Chapter 5 (the designer-side version of the same mechanism: deskilling as professional cognitive debt). Chapter 10 (artifact/learning dissociation → assessment validity). Chapter 14 (reliance-trajectory metrics operationalize this chapter's escalation curves — the chess students' every-3-to-4-moves endpoint becomes a measurable evaluation construct).

**Adjacent chapter connections:** **Back to Chapter 1 (Two Layers):** Chapter 1 ended on the bridge "the −17% has a mechanism — two of them"; this chapter delivers both (behavioral: rational shortcut-seeking; neurological: cognitive debt) and re-reads the table as a *predictable* outcome rather than a surprise. **Forward to Chapter 3 (The Scaffold):** the default thesis sets up Chapter 3's framing of scaffolding as *counter-design* — if the crutch is what happens by default, the scaffold is what happens only on purpose; the bridge sentence ("the scaffold is a counter-design; three RCTs show what it looks like") should land as a relief after this chapter's deliberately uncomfortable evidence.

---

## D. Current state of the field

**Settled:**
- Performance during acquisition ≠ learning; effortful processing (retrieval, generation, spacing) drives durable learning — decades-deep cognitive science (Bjork; Soderstrom & Bjork 2015; Roediger & Karpicke 2006).
- Cognitive offloading is metacognitively governed and has encoding consequences (Risko & Gilbert 2016; Sparrow et al. 2011) — settled as a phenomenon; its AI-era magnitudes are not.
- On-demand help is exploited as an answer channel absent structural constraints — replicated from the ITS era (gaming-the-system literature) through Bastani (GPT Base) to the chess academies. Direction is consistent across two decades and three technologies.
- Default student GenAI usage mode skews toward solution-extraction (Wang et al. 2024; HEPI 2025; convergent though individually limited surveys).

**Contested or emerging:**
- **Cognitive debt as a neurological construct:** single study, small n, one task, preprint-era controversies, contested interpretation (connectivity ≠ capability). The behavioral crutch effect does not depend on it; the book uses it as candidate mechanism only.
- **Magnitude and persistence:** no longitudinal evidence on whether crutch effects compound, plateau, or wash out with extended use; whether learners ever develop spontaneous appropriate-reliance strategies (the chess data's within-study trend — escalation, not adaptation — is the only trajectory evidence, and it is 12 weeks).
- **Boundary conditions:** who is most vulnerable (Klarin et al. 2024: adolescents with executive-function difficulties perceive AI as more useful — at-risk populations overlap with most-marketed-to populations); whether domain expertise protects (plausible, not established).
- **Chess-academy study status:** working paper as of this writing — findings widely covered but pending peer review.

**Key references:**
1. Bastani et al. (2025), PNAS 122(26) — the behavioral anchor (GPT Base condition).
2. Bastani et al., chess-academy working paper ("When Does AI Assistance Undermine Learning?") — self-regulation closure. [Working paper — verify status.]
3. Kosmyna et al. (2025), "Your Brain on ChatGPT," arXiv:2506.08872 (+ published version; venue to confirm) — candidate neural mechanism, single-source flag.
4. Risko & Gilbert (2016), *Trends in Cognitive Sciences* — cognitive offloading framework.
5. Soderstrom & Bjork (2015), *Perspectives on Psychological Science*; with Bjork & Bjork (2011) — desirable difficulties / learning-vs-performance.
6. Fan et al. (2025), *BJET* — metacognitive laziness (AI-specific dissociation evidence).

**Recent developments (last 3 years):** 2024 — Wang et al. "Scaffold or Crutch?" survey names the frame; Fan et al. preprint. 2025 — Bastani PNAS publication makes the crutch effect a mainstream finding; Kosmyna preprint detonates publicly (June) and the hype/backlash cycle plays out; Fan et al. published in BJET. 2026 — chess-academy follow-up enters public discussion (Wharton/Penn coverage, March 2026), closing the self-regulation loophole; a "Metacognitive Laziness Scale" validation paper appears (Dizon et al., 2026, ECNU Review of Education / SAGE — early; treat as emerging instrumentation, not established measure). Trend: the field is moving from "does the crutch effect exist?" (answered) to "what moderates it and does it persist?" (open).

---

## E. Teaching considerations

**Where students get stuck:**
- **"Rational, not lazy" keeps collapsing back into moral language.** Students (and especially instructors) reflexively re-moralize: "kids these days," "cheaters." Re-anchor in the decision model: the costs are delayed and invisible; the benefits immediate. If the framing is moral, the remedy becomes exhortation, which the chess data just falsified.
- **The Kosmyna two-step.** Students either weaponize the study ("proof AI rots brains") or dismiss it ("n=54 preprint lol"). Holding a finding at intermediate confidence is genuinely hard and is the week's hidden curriculum. The Evidence Brief rubric should grade calibration explicitly.
- **Personal defensiveness.** Most graduate students in this course use LLMs exactly as Wang et al. describe. Expect deflection. The honest move (and best teaching move) is to point the lens inward: have students audit one week of their own AI use against the offloading ledger before auditing any product.
- **"So is all AI help bad?"** The chapter's evidence is one-sided by design (the scaffold chapter is next); some students will overcorrect into prohibitionism. Keep the GPT Tutor row visible all week as the standing counterexample.

**Analogies and framings that work:**
- **Compound interest / debt metaphor (native to "cognitive debt"):** each offload is a small loan against future capability; payments come due at the withdrawal moment (exam, job, novel problem). Debt is a tool when managed, ruinous when ambient and invisible — matches the calibration message.
- **GPS atrophy:** people who navigate by turn-by-turn GPS show degraded spatial memory of routes they've driven repeatedly (hippocampal-engagement findings in the navigation literature) — an offloading example every student has lived, with the same signature: flawless assisted performance, helplessness when the phone dies.
- **The gym mirror:** a spotter who lifts the bar whenever it slows produces beautiful session logs and no strength. "The AI never let the bar slow down" is the GPT Base condition in one line.
- **"The crutch is a local optimum":** for product-minded students, framing crutch design as an engagement-metric local optimum explains *why the market builds it* without conspiracy thinking.

**Exercises that build the target skill:**
1. *(Understand)* The decision model: write the cost-benefit table for one help-request moment, then for the accumulated policy; explain in ≤150 words why awareness fails to fix it (cite the chess escalation data). (Outcome 1.)
2. *(Understand/Evaluate)* Calibration brief: the Kosmyna Evidence Box exercise from §A.3 — finding, endpoint type, limits, status, upgrade study. (Outcome 2; Evidence Brief #2 alignment.)
3. *(Analyze)* Crutch-pattern audit of a provided product description (photo-solver or the Track A tutor's "base mode"): mark all five patterns, rank touchpoints by reliance risk. (Outcome 3; Bloom: Analyze.)
4. *(Apply — Track B)* Highest-reliance-risk touchpoint memo for the student's own project: name the touchpoint, the crutch pattern(s) it instantiates, the evidence that makes it risky for *their* population, and the trajectory metric that would detect escalation. (Outcome 4; Bloom: Apply/Analyze.)
5. *(Self-audit, ungraded)* One-week personal AI-use ledger against the offloading framework — which uses traded away a process that was the point? Feeds the course-long Reliance Disclosure habit.

---

## F. Library files relevant to this chapter

- **_lib_Teaching_for_Deeper_Learning.md** — transfer-oriented pedagogy; supplies the "what durable learning requires" backdrop that makes the crutch effect legible as theft of processing.
- **_lib_Building_Thinking_Classrooms.md** — Liljedahl's productive-struggle pedagogy; the strongest practitioner articulation of why removing struggle removes learning, and a source of classroom-level counter-designs that preview Chapter 3.
- **_lib_The_Digital_Delusion_-_Jared_Cooney_Horvath.md** — pre-AI evidence that engagement-optimized technology underdelivers learning; continuity case for "the crutch predates LLMs."
- **_lib_AI_A_Guide_for_Thinking_Humans.md** — Mitchell; useful for explaining *why* GPT Base's errors propagated (models generate plausible text, not verified reasoning), grounding the copy-without-checking evidence.
- **_lib_Science_Fictions.md** — (not on the Ch2 candidate list but directly relevant) hype, preprint culture, and overclaiming in science; ideal support for the cognitive-debt media-cycle failure case. Use selectively.
- **ai_lxd_definitive_synthesis.md** — §2 (chess academy, pattern lists, Wang et al.), §5 (cognitive debt, differential vulnerability), Principles 2–3.
- **experience_design_edtech_merged_synthesis.md** — companion-volume grounding for the UX-friction vs. learning-difficulty distinction.

---

## G. Gaps and flags

- **FLAG (working paper):** The chess-academy study is cited from Knowledge at Wharton / INSEAD coverage of a working paper. The 64%/30% figures, n>200, 12 weeks, and every-3–4-moves detail are consistent across outlets, but the paper's publication status, exact author list, and final numbers must be verified before drafting. If still unpublished, the Evidence Box must say "working paper" — the book cannot apply softer standards to findings it likes.
- **FLAG (single-source, by design):** Cognitive debt (Kosmyna) carries the book's most prominent single-source flag (TikTOC Part 11 mandates it). Confirm final peer-reviewed venue (synthesis says *AI, Brain and Child*; a PMC record exists) and whether the commentary's selective-reporting points (arXiv:2601.00856) were addressed in revision.
- **FLAG (miscitation hazard):** Wang et al. 2024's "85% / over half" figures come from n=40 students. The TikTOC core-content line repeats the percentages without the n. The chapter MUST state the sample size and ideally triangulate with HEPI/Kortext 2025 (verify its exact figures) — otherwise the book commits the citation-laundering it teaches against.
- **FLAG (mechanism chain):** The chapter's causal story (offloading → reduced processing → weaker encoding → unassisted deficit) is assembled from adjacent literatures plus the AI studies; no single study traces the full chain in one design. Present as a coherent account with seams visible, not as a unified finding.
- **GAP:** No evidence on crutch-effect *reversibility* — if a learner has been GPT-Base-style dependent for a year, does structured withdrawal restore capability? Nothing published. Relevant to Chapter 14's withdrawal-test design and worth naming as an open question in the chapter.
- **GAP:** Differential-vulnerability evidence is thin (Klarin et al. 2024 on executive function is perception data, not outcome data). The equity overlay ("most at-risk = most marketed-to") is directionally supported but needs careful hedging until Chapter 8's fuller treatment.
- **GAP (terminology):** "Crutch effect" as a named construct is the book's coinage/consolidation (Wang et al.'s title supplies "crutch" in the literature; Bastani et al. use "crutch" language in the paper). Fine to use, but the chapter should note it is the book's organizing label for a convergent pattern, not a term of art with a single citable definition.
