# Research Notes: Chapter 10 — Assessment Redesign: Making Reasoning Visible
**Source:** TIKTOC.md chapter entry
**Notes file:** 10-assessment-redesign_notes.md
**Corresponding chapter:** chapters/10-assessment-redesign.md (not yet written)
**Generated:** 2026-06-07

---

## Chapter summary (from TIKTOC.md)

**One-line:** Students learn AI-era assessment as a validity design problem — and redesign assessments around the three-question framework so that reasoning, process, and judgment become the visible artifact.

**Learning outcomes:**
1. (Understand) Explain why GenAI creates a validity problem, not just an integrity problem: the assessment no longer measures what it claims to.
2. (Apply) Apply the three-question framework — may AI assist production, may AI assist completion, what must the assessment make visible — to disentangle a confused policy.
3. (Create) Redesign one assessment using the emerging pattern set: process portfolios, oral defenses, reflective components, AI-integrated tasks with disclosed use, assessment of AI use itself.
4. (Create / Track B) Redesign the highest-stakes assessment in their own project, with the validity claim stated explicitly.

**Opening:** A take-home assessment, full marks, written entirely by an LLM — submitted by the instructor, to the instructor's own rubric. The rubric never noticed. What was the rubric measuring?

**Core content:** Validity-first framing (Corbin, Dawson & Liu); why AI-proofing is the wrong goal; the three-question framework; the AI-era pattern set; designing supervised-use, disclosed-use, and AI-free windows by learning objective.

**Bridge:** Every decision so far assumes the learner knows what the AI is and trusts it appropriately. The evidence says the interface is actively teaching them not to.

---

## A. Conceptual foundations

### 1. Validity, not integrity: the reframe that organizes the chapter

The instinctive institutional response to GenAI is an integrity response: students are cheating, so detect and punish. The chapter's central move is to relocate the problem one level up. An assessment is an inference machine: from an observed performance (an essay, an exam answer), the institution infers something unobserved (the student can analyze, can reason, has mastered the construct). GenAI breaks the inference, not the rule. When an LLM can produce the observed performance, the performance no longer warrants the inference — for *every* student, including the ones who never touched AI. That is a validity failure, and it exists whether or not any individual cheats. Integrity framing asks "who broke the rules?"; validity framing asks "what does this score still mean?" The second question is the designer's question.

The measurement-theory grounding: Messick's unified view of validity (1989) holds that validity is not a property of a test but of the *interpretations and uses* of its scores — a single evaluative judgment integrating evidence about whether score-based inferences are warranted. Kane's argument-based framework operationalizes this as an interpretation/use argument (IUA): a chain of inferences from **scoring** (performance → score) through **generalization** (this score → performance in the test domain) and **extrapolation** (test domain → real-world capability) to **implications/decisions** (capability claim → grade, credential, progression). GenAI attacks the chain primarily at the extrapolation link: an unproctored essay score generalizes fine to "can produce essays under unproctored conditions," but no longer extrapolates to "can analyze independently." Teaching students to locate *which inference broke* turns a moral panic into a design diagnosis. (For the depth this book needs, Kane's four-inference chain is sufficient; full psychometrics is out of scope per Part 14 of the TOC.)

**Common misconception:** "If we catch the cheaters, the assessment is fine." No — the validity problem persists even at zero cheating, because the institution can no longer *demonstrate* that scores mean what they claim. Certification of learning requires positive evidence of the inference, not just absence of detected fraud.

**Worked example:** Take the Track A statistics course's take-home data-analysis report. Scoring inference: rubric scores the written report. Extrapolation claim: "the student can choose, run, and interpret an appropriate statistical test." An LLM given the assignment brief produces a full-marks report in one prompt. The extrapolation inference is dead. Redesign options that repair specific links: a 10-minute oral defense of the report repairs extrapolation (the student must reason live); a process portfolio repairs generalization (multiple observation points); a supervised in-class analysis window repairs the scoring conditions themselves.

**Source(s):** Messick (1989, in *Educational Measurement*, 3rd ed.); Kane (2013, *Journal of Educational Measurement*; see also Cook et al. 2015, "A contemporary approach to validity arguments," *Medical Education*); validity-link analysis applied to AI is synthesized from Corbin, Dawson & Liu 2025 and the assessment-validity literature; framing verified via NCME *Educational Measurement* 5th ed. ch. 4 (Lane).

### 2. Discursive vs. structural change (Corbin, Dawson & Liu 2025)

The chapter's anchor citation, verified: **Corbin, T., Dawson, P., & Liu, D. (2025). "Talk is cheap: why structural assessment changes are needed for a time of GenAI." *Assessment & Evaluation in Higher Education*. DOI: 10.1080/02602938.2025.2503964.** The paper's core distinction: **discursive changes** modify the instructions and rules *around* a task — "you may use AI for brainstorming but not drafting," traffic-light scales, AI-use declarations — while leaving the task mechanics untouched. **Structural changes** modify the task itself so that its validity does not depend on whether students follow the instructions. Discursive change is cheap to issue and almost universal; it is also unverifiable in unsupervised conditions, which makes it cosmetic as a validity repair. The authors argue most institutional AI-assessment policy to date is discursive — rules that look good on paper but change nothing about what students actually do or what scores actually mean.

This maps cleanly onto the book's thesis: discursive guardrails are aspirational guardrails, and Chapter 2's chess-academy evidence already established that aspirational guardrails fail — learners take the rational shortcut. Structural redesign is the assessment-layer version of "guardrails must be structural, not aspirational."

**Common misconception:** "A clear AI policy is an assessment redesign." A policy is a communication act; if compliance is unobservable, the policy transfers responsibility to the student without restoring validity. Students in 'Where's the line?' research (Corbin and colleagues' related interview work) describe institutional AI rules as arbitrary and absurd precisely because they are discursive lines drawn on unverifiable terrain.

**Worked example:** A program's policy says "AI may be used for grammar only" on a take-home essay (discursive). Structural alternatives: (a) move the construct-critical component into a supervised window; (b) restructure the take-home so the assessed artifact is an annotated revision history plus a viva; (c) redesign the task to *require* AI use and assess the student's evaluation of the AI output. Each changes mechanics, not messaging.

**Source(s):** Corbin, Dawson & Liu 2025 (T&F, open access); ERIC EJ1490530; secondary explainers by Furze (leonfurze.com, Aug 2025) and Potkalitsky (Educating AI Substack) confirm reception.

### 3. The two-lane approach (Liu & Bridgeman, University of Sydney)

Danny Liu and Adam Bridgeman's "two-lane approach" is the most widely adopted structural framework. **Lane 1 ("secure"):** supervised, authenticated assessment *of* learning — in-person exams, vivas, practical demonstrations — used at key points to assure that program-level outcomes have actually been attained. **Lane 2 ("open"):** unsupervised assessment *for/as* learning, where AI use cannot be policed and is therefore permitted and pedagogically embraced — students use AI and are assessed partly on how well they critique, supplement, and improve its output. The crucial design insight is **program-level allocation**: not every assessment must be secure; the program must guarantee that every claimed graduate capability is verified in Lane 1 *somewhere*, freeing Lane 2 to be honest about AI ubiquity instead of pretending rules are enforceable. The University of Sydney adopted this institution-wide (full implementation 2026, paired with its Cogniti platform); the University of Auckland, VU Amsterdam, and others have adapted it.

Critiques worth teaching (the chapter should not present the framework as settled): some commentators argue the two-lane model over-concentrates validity in high-stakes supervised events (reviving the exam, with its own validity and equity problems — performance anxiety, narrow construct sampling), and that the binary can be too coarse — hence hybrid proposals bridging the two-lane model with Perkins/Furze/Roe's five-level AI Assessment Scale (AIAS). This connects to **programmatic assessment** (van der Vleuten et al.): many low-stakes data points, aggregated for high-stakes decisions — the medical-education lineage the two-lane approach implicitly draws on.

**Common misconception:** "Lane 1 = good/rigorous, Lane 2 = compromised." The lanes serve different functions; a program that is all Lane 1 has abandoned teaching students to work with AI (a stated graduate outcome almost everywhere), and a program that is all Lane 2 certifies nothing.

**Worked example:** Track A statistics course, 12 assessments. Two-lane redesign: weekly problem sets become Lane 2 (AI-open, assessed for reasoning quality and AI-critique, low stakes, feedback-rich); two supervised checkpoints (a midterm in-class analysis and an end-of-term oral defense of the course project) become Lane 1, mapped explicitly to the course's three certified outcomes. The validity claim is now stated: "interpretation-under-pressure is verified in Lane 1; everything else is formative."

**Source(s):** Teaching@Sydney FAQ and program-level posts (educational-innovation.sydney.edu.au); University of Auckland TeachWell adaptation; VU Amsterdam guidance; critique: "The two-lane approach has us veering further off track" (The Mindfile Substack); Bellamy (2025) on bridging two-lane with the AI Assessment Scale.

### 4. The three-question framework

From the synthesis (synthesized from field practice, not a single citable paper — label accordingly): (1) May AI assist **production** of the assessment (the instructor's side: rubric design, item generation)? (2) May AI assist **completion** of the assessment (the learner's side, during execution)? (3) What is the assessment **intended to make visible** about the learner? Institutional policies routinely collapse these — e.g., banning student AI use while instructors generate items with AI, with no stated rationale, breeding the cynicism documented in student-perception research. Question 3 is the validity question and is logically prior: once a program states what each assessment must make visible, the production and completion answers follow per learning objective, yielding the designed mix of supervised-use, disclosed-use, and AI-free windows.

**Common misconception:** That one AI policy can cover a whole course. The unit of decision is the learning objective, not the course; a single course legitimately contains AI-required, AI-permitted-with-disclosure, and AI-free assessment windows.

**Worked example:** Confused policy: "AI tools are prohibited in this course except where noted." Disentangled for one assignment: production — instructor used AI to draft the rubric (fine, disclosed); completion — AI permitted for code generation, prohibited for interpretation sections; visibility target — "can the student judge whether a statistical conclusion follows from the output?" The redesigned task pastes flawed AI-generated analysis into the prompt and asks the student to find and fix the flaw — completion-by-AI is now structurally useless because the construct *is* the critique.

**Source(s):** pantry/ai_lxd_definitive_synthesis.md §4 (label: synthesized from field practice); consistent with Liu & Bridgeman Lane-2 menu framing and the Perkins/Furze AIAS.

### 5. Detection as a failed design strategy

The book treats AI detection as out of scope as an enforcement topic (TOC Part 14) but in scope as *evidence for why structural redesign is necessary*. The evidence: detector accuracy is unstable and adversarially fragile (light paraphrasing defeats most tools); Turnitin's own design deliberately trades sensitivity for fewer false positives (it acknowledges letting ~15% of AI text through, with real-world document-level false positives still occurring at scale); GPTZero's independent test false-positive rates range from <1% to ~10% depending on corpus. The equity result is the decisive one: **Liang, Yuksekgonul, Mao, Wu & Zou (2023, *Patterns*), "GPT detectors are biased against non-native English writers"** — seven detectors flagged 61.3% of human-written TOEFL essays by non-native speakers as AI-generated; 97.8% were flagged by at least one detector; ~19–20% were misclassified by *all seven*. Detectors confuse "writing in a second language" with "generated by a machine" because both exhibit lower lexical burstiness. At institutional scale, even a 1–4% false-positive rate yields hundreds of false accusations per term, concentrated on ESL students — an allocative harm directly parallel to Chapter 8's routing harms. Design conclusion: detection cannot carry validity, and as an experience design it converts the assessment relationship into surveillance. The chapter's line: detection is an arms race; redesign is an exit from the race.

**Common misconception:** "Detection just needs to get better." The failure is structural: LLM output is a moving target, paraphrase laundering is trivial, and the base-rate problem guarantees harmful false-positive volumes at any plausible accuracy. Watermarking research (e.g., conformal watermark frameworks, arXiv 2025) may change the picture for cooperating vendors but cannot cover open-weight models.

**Worked example:** A skeptical dean proposes buying a detector instead of funding redesign. The student's brief: at 10,000 submissions/term and a 2% false-positive rate, ~200 false accusations/term, disproportionately ESL students, each requiring an unwinnable adjudication (the tool's evidence is probabilistic and contested) — versus redesigning the six highest-stakes assessments under the two-lane model. Cost-benefit and harm analysis favor redesign.

**Source(s):** Liang et al. 2023 *Patterns* (Stanford); University of San Diego LRC guide on detector false positives; MDPI *Information* 16(10):905 (2025) on detector effectiveness/ethics in higher ed; vendor-published Turnitin/GPTZero figures (treat as vendor claims).

---

## B. Domain examples and cases

### Case 1: University of Sydney's institution-wide two-lane implementation
The most complete real-world structural redesign at scale: Sydney's assessment framework sorts every assessment into "secure" or "open" lanes, with program-level mapping of which outcomes are verified securely; paired with interactive oral assessment practice and the Cogniti instructor-steered AI platform. Useful as the chapter's primary "what structural change looks like institutionally" case, including its politics (staff workload, exam-revival criticism). **Sources:** Teaching@Sydney posts (FAQ; "Program level assessment design and the two-lane approach"; "Interactive Oral Assessment in practice").

### Case 2: Interactive oral assessments (IOA) in Australian higher education
Documented practice (Griffith, Sydney, ASCILITE community): structured professional conversations replacing or supplementing written submissions — e.g., accounting students defending a portfolio in a simulated client meeting. Evidence base: practitioner and case-study level (improved authenticity, integrity assurance, communication skill development; scalability and reliability concerns — rubric standardization and examiner training are the cost centers). Kofinas et al. (2025, *BJET*) examine GenAI's impact on authentic assessment integrity and support in-person/oral formats as integrity-preserving while warning about marking burden. Emerging twist: voice-AI-administered oral assessment pilots (arXiv 2026 preprints) — scalable but reintroduces the AI-in-the-loop validity question. **Sources:** ASCILITE TELall blog "Interactive Oral Assessments: Charting the Course While Holding the Line"; Teaching@Sydney IOA in practice; Kofinas et al. 2025 BJET 10.1111/bjet.13585; College Teaching (2025) "Oral Exams for a Generative AI World."

### Case 3: The instructor-submits-the-LLM-essay opening
The TikTOC opening (instructor submits an LLM-written paper to their own rubric, gets full marks) should be labeled **illustrative** unless a specific documented instance is sourced — but it is well-grounded in published analogs: multiple 2023–2025 studies passed LLM-generated work through real rubrics and blind markers undetected (e.g., Scarfe et al. 2024, *PLOS ONE*, University of Reading: researchers covertly submitted AI-generated exam answers in psychology courses; 94% went undetected and earned above-average grades). The Reading study is the citable version of the opening and is strong enough to carry it. **Source:** Scarfe, P., Watcham, K., Clarke, A., & Hamill, E. (2024). "A real-world test of artificial intelligence infiltration of a university examinations system." *PLOS ONE* 19(6): e0305354. (Verify exact figures at drafting time — 94% undetected is the widely reported headline.)

### Failure case: AI detection deployed as the strategy
Composite, well-documented: institutions that led with detection saw (a) false-accusation incidents — the May 2023 Texas A&M–Commerce episode in which an instructor ran essays through ChatGPT itself (not even a detector) and temporarily withheld an entire class's grades is the canonical cautionary tale; (b) documented ESL bias (Liang et al. 2023); (c) an adversarial spiral ("humanizer" paraphrase tools market directly against detectors); (d) several universities (e.g., Vanderbilt, 2023) publicly disabling Turnitin's AI detector over reliability concerns. The failure is instructive at the design level: detection treats a validity problem as a policing problem, spends the redesign budget on surveillance, and damages the trust relationship Chapter 11 takes up. **Sources:** Vanderbilt CTL announcement (Aug 2023); Liang et al. 2023; press coverage of Texas A&M–Commerce (Rolling Stone/Washington Post, May 2023 — verify details at drafting; the broad outline is solid).

### Bridging case: Einstein, the course-completing agent (Feb 2026)
A 22-year-old founder launched "Einstein," an agentic tool that connects to Canvas and autonomously watches lectures, writes papers, posts discussion replies, and submits homework — marketed as completing entire courses. Triggered an open letter asking OpenAI, Google, Anthropic, and Perplexity to make their agents refuse LMS work. For Chapter 10 this is the limit case: when completion can be fully delegated, *every* unsupervised assessment fails the extrapolation inference simultaneously — the strongest possible argument that discursive policy is dead and the cleanest bridge to Chapter 12's agentic-AI material. **Source:** Inside Higher Ed, "Agentic AI Can Complete Whole Courses. Now What?" (Feb 26, 2026).

---

## C. Connections and dependencies

**Prerequisites:** Ch. 1 (assisted vs. unassisted performance as different measurements — the validity problem is this distinction applied to grading); Ch. 2 (shortcut-seeking is rational → discursive rules will be bypassed); Ch. 4 (evidence literacy — students must weigh the thin head-to-head evidence on alternative assessment designs honestly); Ch. 9 (the content/feedback boundary work establishes what AI can produce, which is exactly what assessments can no longer naively assess).

**Unlocks:** Ch. 11 (the guardrail spec checkpoint integrates the assessment redesign; disclosure design recurs there as relational metadata); Ch. 12 (agentic completion — Einstein — escalates the validity problem); Ch. 14 (the Withdrawal Test at scale *is* assessment design: unassisted-performance endpoints are Lane 1 thinking applied to evaluation); Ch. 15 (final spec includes the assessment redesign artifact).

**Adjacent chapter connections:** From Ch. 9 the bridge is direct — "if AI can produce the content, AI can complete the assessment"; the perception/performance split (perceived authenticity) also previews why oral/process formats carry trust weight beyond their measurement function. To Ch. 11: assessment redesign assumes learners are told what AI may do — disclosure design, trust calibration, and the transparency dilemma (disclosure can *reduce* trust) are the next layer.

---

## D. Current state of the field

**Settled:**
- Unsupervised written assessment can no longer support capability inferences on its own (Scarfe et al. 2024 and replications; uncontested).
- Detection tools have non-trivial false-positive rates with documented bias against non-native English writers (Liang et al. 2023; multiple independent confirmations).
- Discursive policy alone does not restore validity (Corbin, Dawson & Liu 2025; widely endorsed in the assessment literature).
- Argument-based validity (Messick → Kane) is the standard measurement-theory frame and adapts cleanly to AI-era analysis.

**Contested or emerging:**
- Whether the two-lane model over-relies on supervised exams (equity, construct narrowing, anxiety) — active debate 2025–2026.
- Head-to-head causal evidence comparing AI-era assessment designs (process portfolio vs. oral vs. AI-integrated) is **largely absent**; the pattern set is professional consensus plus case studies, not RCTs. The chapter must say so.
- Scalability of oral/interactive formats (examiner cost, reliability) — voice-AI proctored orals are an emerging, unproven answer.
- Watermarking and provenance standards (C2PA, conformal watermarks) — could partially change the detection calculus for cooperative vendors; immature.
- Whether "assessment of AI use itself" (prompting, critique) is a stable construct worth certifying, or a fast-aging skill.

**Key references:**
1. Corbin, Dawson & Liu (2025). "Talk is cheap: why structural assessment changes are needed for a time of GenAI." *Assessment & Evaluation in Higher Education* (10.1080/02602938.2025.2503964). VERIFIED.
2. Liang, Yuksekgonul, Mao, Wu & Zou (2023). "GPT detectors are biased against non-native English writers." *Patterns* 4(7). VERIFIED.
3. Liu & Bridgeman — Teaching@Sydney two-lane corpus (2023–2026, institutional, not journal-published; cite as institutional framework). VERIFIED as practice.
4. Scarfe et al. (2024). *PLOS ONE* 19(6) — undetected AI submissions in a real exam system. VERIFIED (re-check exact stats at drafting).
5. Kane (2013). "Validating the interpretations and uses of test scores." *J. Educational Measurement* 50(1); plus Messick (1989). VERIFIED canon.

**Recent developments (last 3 years):** 2023 — Liang et al. detector-bias study; Vanderbilt disables Turnitin AI detection. 2024 — Reading covert-submission study; two-lane approach spreads internationally. 2025 — Corbin/Dawson/Liu structural-change argument lands as the field's organizing citation; AIAS (Perkins, Furze, Roe) v2; interactive-oral practice matures. 2026 — Einstein agentic course-completion tool (Feb) collapses the remaining case for unsupervised-assessment-plus-policy; Sydney-style frameworks become mainstream; voice-AI oral assessment pilots appear.

---

## E. Teaching considerations

**Where students get stuck:**
- Conflating integrity and validity for weeks; they keep proposing better policing. The "zero-cheating thought experiment" (validity still broken at zero cheating) is the unsticker.
- Treating "AI-proof" as the design goal and producing baroque task designs that an LLM defeats in one prompt. Have them red-team their own redesign with a frontier model — humbling and fast.
- Over-rotating to Lane 1: redesigning everything into supervised exams, recreating the assessment regime authentic-assessment research (Wiggins 1990 onward) spent thirty years arguing against. The corrective: program-level thinking — security is a *program* property, not a per-task property.
- Writing validity claims that are actually logistics claims ("the assessment is proctored") rather than inference claims ("a passing score warrants the claim that the learner can X unassisted").

**Analogies and framings that work:**
- The breathalyzer analogy for detection: a test with a known false-positive rate, administered millions of times, with the burden of proof on the accused — would you certify a profession on it?
- "The rubric was measuring the artifact, not the author" — the opening case in one line.
- Currency framing: a grade is a promissory note; validity is the gold backing it; GenAI is a counterfeiting press — you don't fix counterfeiting by yelling at counterfeiters, you redesign the note.
- Two-lane as load-bearing walls vs. drywall: not every wall holds the building up, but you must know which ones do.

**Exercises that build the target skill:**
1. (Analyze) Given three real institutional AI-assessment policies, classify every clause as discursive or structural (Corbin/Dawson/Liu coding) and predict each clause's effect on validity. 
2. (Apply) Run the three-question framework on a deliberately confused policy; produce the disentangled per-objective table (production / completion / visibility target).
3. (Evaluate) Red-team exercise: feed your own redesigned assessment to an LLM and an agentic browser; score what survives; revise. (This doubles as the chapter's LLM Exercise.)
4. (Create / Track B) Redesign the highest-stakes assessment in the student's project: state the construct, identify the broken Kane inference, choose patterns (portfolio/oral/AI-integrated/secure window), and write the explicit validity claim plus the Withdrawal Test answer (what the learner can demonstrate with AI removed).
5. (Evaluate) Detection cost-benefit brief for a skeptical administrator using base-rate arithmetic and the Liang et al. bias findings (Bloom: Evaluate; also rhetoric practice for the Week 15 defense).

---

## F. Library files relevant to this chapter

- **_lib_Teaching_for_Deeper_Learning.md** — meaning-making, transfer, and assessment that elicits thinking rather than recall; directly supports the "make reasoning visible" pattern set and the authentic-assessment lineage.
- **_lib_Calling_Bullshit.md** — base-rate reasoning and quantitative skepticism; the detection false-positive arithmetic comes straight from this toolkit.
- **_lib_Building_Thinking_Classrooms.md** — de-fronting assessment and making student thinking observable in real time; classroom-level analog of process-visible assessment.
- **ai_lxd_definitive_synthesis.md** — §4 (assessment redesign, three-question framework) is the chapter's spine.
- **experience_design_edtech_merged_synthesis.md** — companion-volume assessment/evaluation framing for series continuity (Track A statistics course).

---

## G. Gaps and flags

- **FLAG (single-framework dependence):** The two-lane approach is institutional practice literature, not peer-reviewed causal evidence. Teach as the leading structural framework with named critiques, not as settled science.
- **FLAG (three-question framework provenance):** Synthesized from field practice in the book's own synthesis — no single citable origin. Must be labeled as the book's synthesis (consistent with the book's own sourcing rules).
- **GAP (head-to-head evidence):** Almost no causal studies compare AI-era assessment designs against each other on validity/learning outcomes. The Evidence Box must carry an explicit "pattern set = consensus + case studies" label.
- **FLAG (opening case):** The instructor-submits-LLM-essay opening needs either the Scarfe et al. 2024 citation swap or an explicit "illustrative" label. Verify Scarfe et al.'s exact figures (94% undetected; grade percentile) before print.
- **FLAG (vendor numbers):** All Turnitin/GPTZero accuracy figures are vendor-published or third-party blog tests of varying rigor; only Liang et al. 2023 and peer-reviewed evaluations (e.g., MDPI *Information* 2025) should carry weight in the Evidence Box.
- **FLAG (aging):** Detection-tool specifics and the Einstein case will age fast (extreme-risk content per TOC Part 11); isolate in the Evidence Box / case layer, keep Kane-Messick and discursive/structural in the stable core.
- **GAP (equity of secure assessment):** The equity costs of re-centering supervised exams (disability accommodation, test anxiety, work schedules for non-traditional students) are under-researched in the AI-era literature; needs a domain-expert read before the chapter claims more than directional caution.
