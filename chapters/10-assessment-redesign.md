# Chapter 10 — Assessment Redesign: Making Reasoning Visible

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Explain why generative AI creates a *validity* problem, not just an integrity problem: the assessment no longer measures what it claims to measure — for every student, including the ones who never touched AI. *(Tracks A and B)*
2. **(Apply)** Apply the three-question framework — may AI assist *production*, may AI assist *completion*, and what must the assessment *make visible* about the learner — to disentangle a confused assessment policy into per-objective design decisions. *(Tracks A and B)*
3. **(Create)** Redesign one assessment using the AI-era pattern set: process portfolios, interactive orals, reflective components, AI-integrated tasks with disclosed use, and assessment of AI use itself — with the evidence status of each pattern stated honestly. *(Track A: the DataWise 101 course assessments)*
4. **(Create)** Redesign the highest-stakes assessment in your own project, with the validity claim stated explicitly: what a passing score warrants someone to believe about the learner. *(Track B)*

## Opening Case: The Examination System That Graded the Machine

In 2024, researchers at the University of Reading did something institutions rarely permit: they attacked their own assessment system and published the results. Peter Scarfe and colleagues covertly submitted exam answers written entirely by GPT-4 into the university's real online examination system, across five undergraduate psychology modules, under fake student identities. The markers did not know the study was happening.

The result: **94% of the AI submissions went undetected**, and the AI's answers earned, on average, grades higher than those of the real students sitting the same exams — in most modules, the AI comfortably outperformed the median human (Scarfe, Watcham, Clarke & Hamill, 2024, *PLOS ONE*; the 94% figure is the paper's headline — exact per-module grade margins should be checked against the published tables before citing them downstream [verify]).

Sit with what this means. These were real rubrics, written by real instructors, applied by real markers who believed they were measuring student learning. The rubrics worked perfectly — every criterion was applied as designed. And the rubrics never noticed that there was no student.

The instinctive reading is a cheating story: students *could* do this, so we must catch them. This chapter argues that reading is wrong, or at least badly incomplete. The Reading study is not evidence that students cheat. It is evidence that **the rubric was measuring the artifact, not the author** — and it always was. Generative AI did not break the assessment. It revealed that the link between "this essay exists" and "this student can think" was an assumption all along, one that held only as long as no machine could write the essay.

The TikTOC version of this scene — an instructor submitting an LLM-written paper to their own rubric and watching it score full marks — happens informally in departments everywhere. The Reading study is the citable version, and it is strong enough to carry the chapter's question: *what was the rubric measuring?*

## Prerequisites

This chapter assumes you can:

- **Distinguish assisted from unassisted performance as different measurements** (Chapter 1) — the validity problem is this distinction applied to grading.
- **Explain why shortcut-seeking is rational in the moment** (Chapter 2) — because it predicts exactly what happens to unenforceable assessment rules.
- **Weigh a design claim against its evidence state** (Chapter 4) — the AI-era assessment pattern set is consensus-plus-case-studies, not RCT canon, and you will need to handle it at that grade.
- **State what AI can now produce** (Chapter 9) — because whatever AI can produce, AI can submit.

## Core Content

### The Inference Machine: Validity, Not Integrity

An assessment is not a task. It is an *inference machine*. From an observed performance — an essay, a problem set, an exam answer — an institution infers something it cannot observe directly: this student can analyze, can reason statistically, has mastered the construct. The grade is shorthand for that inference. The diploma is shorthand for thousands of them.

Measurement theory has spent decades making this precise. Messick's (1989) unified view holds that validity is not a property of a test but of the *interpretations and uses* of its scores — an integrated judgment about whether score-based inferences are warranted. Kane's (2013) argument-based framework operationalizes the judgment as a chain of four inferences:

1. **Scoring** — the performance is correctly converted into a score.
2. **Generalization** — this score predicts performance across the test domain (other essays, other problems).
3. **Extrapolation** — performance in the test domain predicts real-world capability.
4. **Implication/decision** — the capability claim warrants the grade, the credential, the progression decision.

A validity argument is only as strong as its weakest link. Generative AI attacks the chain primarily at **extrapolation**. An unproctored essay score still generalizes fine — to "can produce essays under unproctored conditions." What it no longer supports is the extrapolation to "can analyze independently," because an LLM given the assignment brief produces the same observable performance in one prompt.

Here is the move that organizes the entire chapter: **GenAI breaks the inference, not the rule.** When the inference breaks, it breaks for *every* student. The honest scholar's essay and the outsourced essay are now observationally identical, which means the institution can no longer demonstrate that either score means what it claims. That is a validity failure, and it exists at zero percent cheating.

Run the zero-cheating thought experiment whenever you feel the integrity framing pulling you back: suppose, by magic, no student ever uses AI dishonestly. Is the assessment fixed? No — because certification requires *positive evidence* that the inference holds, not the absence of detected fraud. A bank does not accept "nobody has been caught counterfeiting" as proof its notes are genuine. Integrity framing asks "who broke the rules?" Validity framing asks "what does this score still mean?" The second question is the designer's question, and learning to locate *which Kane inference broke* converts a moral panic into a design diagnosis.

This is also why the chapter sits where it does in the book. Chapter 1 taught you that assisted and unassisted performance are different measurements that can move in opposite directions. An assessment that cannot tell which one it is measuring is not measuring either. McTighe and Silver's argument in *Teaching for Deeper Learning* — that understanding must be *earned* by the learner through active meaning-making, and that good assessment makes students' internal thinking explicit to both learner and teacher — turns out to be the validity repair manual: the assessments that survive AI are the ones that were eliciting visible thinking all along.

### Why AI-Proofing Fails: Detection as a Design Strategy

The first institutional reflex was detection: buy a tool that flags AI-generated text, and the old assessments survive. The evidence says this strategy fails three times over — technically, statistically, and ethically — and the third failure is the one a designer cannot walk past.

**Technically**, detector accuracy is unstable and adversarially fragile. Light paraphrasing defeats most tools; a market of "humanizer" services exists specifically to launder AI text past detectors. Turnitin's own published design trades sensitivity for fewer false positives — it acknowledges letting roughly 15% of AI text through — and independent tests of GPTZero report false-positive rates ranging from under 1% to around 10% depending on the corpus (treat all vendor-published figures as vendor claims).

**Statistically**, the base-rate arithmetic is unforgiving. At 10,000 submissions per term, even a 2% false-positive rate manufactures about 200 false accusations per term — each one a high-stakes adjudication where the only evidence is a probabilistic score the accused cannot meaningfully contest. This is the breathalyzer question: would you certify a profession on a test with this false-positive profile, administered at this scale, with the burden of proof on the accused?

**Ethically**, the decisive finding is Liang, Yuksekgonul, Mao, Wu and Zou (2023, *Patterns*): seven widely used GPT detectors flagged **61.3% of human-written TOEFL essays by non-native English speakers as AI-generated**. 97.8% of those essays were flagged by at least one detector; roughly one in five was misclassified by *all seven*. The mechanism is mundane and damning: detectors key on low lexical "burstiness" and perplexity, and writing in a second language exhibits the same statistical signature as machine generation. Detection does not just fail; it fails *selectively, against the students with the least institutional power* — an allocative harm directly parallel to the routing harms you audited in Chapter 8. The false accusations land precisely where the appeals are least likely to succeed.

The field's cautionary tales are now canonical: the May 2023 Texas A&M–Commerce episode, in which an instructor pasted essays into ChatGPT itself (not even a detector), asked it whether it had written them, and temporarily withheld an entire class's grades on its say-so [verify exact administrative outcome before print]; and Vanderbilt University's public decision (August 2023) to disable Turnitin's AI detector over reliability concerns.

The design conclusion is not "detection needs to get better." The failure is structural: LLM output is a moving target, paraphrase laundering is trivial, and the base-rate problem guarantees harmful false-positive volumes at any plausible accuracy. Detection is an arms race; redesign is an exit from the race. And as an *experience* design, detection converts the assessment relationship into surveillance — a cost Chapter 11 will price.

### Talk Is Cheap: Discursive Versus Structural Change

If detection fails, the second institutional reflex is policy: write clearer rules about permitted AI use. Corbin, Dawson and Liu (2025, *Assessment & Evaluation in Higher Education*) supply the distinction that sorts these efforts: **discursive changes** modify the instructions and rules *around* a task — "AI may be used for brainstorming but not drafting," traffic-light permission scales, AI-use declarations — while leaving the task mechanics untouched. **Structural changes** modify the task itself, so that its validity no longer depends on whether students follow the instructions.

Their argument, now the field's organizing citation: most institutional AI-assessment policy to date is discursive — and discursive change in unsupervised conditions is unverifiable, which makes it cosmetic as a validity repair. A rule nobody can check transfers responsibility to the student without restoring meaning to the score. Students in Corbin and colleagues' related interview work describe institutional AI rules as arbitrary precisely because they are lines drawn on unverifiable terrain.

You already have the behavioral half of this argument. Chapter 2's chess-academy evidence established that learners reliably take the rational shortcut when the design permits it — that aspirational guardrails fail. Discursive assessment policy *is* an aspirational guardrail. "Structural, not aspirational" is the same principle you have been applying to tutoring interactions since Week 6, now applied to the assessment layer.

The design pattern: for any assessment policy clause, ask *what would have to be true for this clause to be load-bearing?* If the answer is "students comply voluntarily under incentive to do otherwise," the clause is discursive. Either restructure the task so the clause becomes unnecessary, or move the construct-critical component somewhere compliance is observable.

### The Three-Question Framework

The book's protocol for assessment redesign asks three questions of every assessment. (Provenance note: this framework is synthesized from field practice in this book's research synthesis — it has no single citable origin paper, and you should label it accordingly when you use it. It is consistent with the Liu–Bridgeman two-lane menu and the Perkins–Furze–Roe AI Assessment Scale.)

**Question 1 — Production: may AI assist in *producing* the assessment?** This is the instructor's side: rubric drafting, item generation, scenario writing. Usually yes, with human validation per Chapter 9's boundary — but it must be *disclosed*, because policies that ban student AI use while instructors generate items with AI, with no stated rationale, breed exactly the cynicism the student-perception research documents.

**Question 2 — Completion: may AI assist in *completing* the assessment?** This is the learner's side, during execution. The answer is never course-wide; it is per learning objective, and it comes in at least three designed flavors: **AI-free windows** (supervised, for constructs that must be demonstrated unassisted), **disclosed-use** (AI permitted, use documented and visible), and **AI-required** (the task is to use AI well, and the construct is the judgment exercised over it).

**Question 3 — Visibility: what must the assessment *make visible* about the learner?** This is the validity question, and it is logically prior to the other two. Once you can state what each assessment must make visible — "the learner can choose an appropriate statistical test," "the learner can judge whether a conclusion follows from output" — the production and completion answers follow per objective, and the supervised/disclosed/AI-free mix designs itself.

The framework's diagnostic power shows on confused policies. "AI tools are prohibited in this course except where noted" collapses all three questions into one unenforceable sentence. Disentangled for a single assignment: production — instructor drafted the rubric with AI, disclosed; completion — AI permitted for code generation, prohibited for the interpretation sections; visibility — "can the student judge whether a statistical conclusion follows from the output?" And once visibility is stated, a better task design appears: paste a *flawed* AI-generated analysis into the prompt and ask the student to find and fix the flaw. Completion-by-AI is now structurally useless, because the construct *is* the critique.

The unit of decision is the learning objective, not the course. One course legitimately contains AI-required, AI-disclosed, and AI-free assessment windows — and saying so out loud, with reasons, is itself a trust intervention (Chapter 11 will show why).

### The Two-Lane Approach — and Its Critics

The most widely adopted structural framework is Danny Liu and Adam Bridgeman's **two-lane approach** (University of Sydney, institutional adoption with full implementation in 2026; adapted by the University of Auckland, VU Amsterdam, and others — cite as an institutional framework, not peer-reviewed causal evidence).

**Lane 1 ("secure"):** supervised, authenticated assessment *of* learning — in-person exams, vivas, practical demonstrations — used at key points to assure that program-level outcomes were actually attained. **Lane 2 ("open"):** unsupervised assessment *for* and *as* learning, where AI use cannot be policed and is therefore permitted and pedagogically embraced — students work with AI and are assessed partly on how well they critique, supplement, and improve its output.

The load-bearing insight is **program-level allocation**: not every assessment must be secure. The program must guarantee that every claimed graduate capability is verified in Lane 1 *somewhere* — which frees Lane 2 to be honest about AI ubiquity instead of pretending its rules are enforceable. Think of load-bearing walls versus drywall: not every wall holds the building up, but you must know which ones do. This is the medical-education lineage of programmatic assessment (van der Vleuten and colleagues): many low-stakes data points, aggregated for high-stakes decisions.

Teach the critiques alongside the framework, because they are serious [contested — see pantry flag]. First, the two-lane model risks over-concentrating validity in high-stakes supervised events — reviving the exam, with its own validity and equity problems: performance anxiety, narrow construct sampling, accommodation burdens, and scheduling costs that fall hardest on working and disabled students. (The equity costs of re-securing assessment are under-researched in the AI-era literature; the honest position is directional caution, not confidence.) Second, the binary may be too coarse — hybrid proposals bridge the two lanes with the five-level AI Assessment Scale. Third — the misconception to kill early — Lane 1 is not "rigorous" and Lane 2 "compromised." A program that is all Lane 1 has abandoned teaching students to work with AI, which is a stated graduate outcome almost everywhere; a program that is all Lane 2 certifies nothing.

### The AI-Era Pattern Set

The redesign patterns below are the field's working answers to Question 3 — formats that make reasoning, process, and judgment the visible artifact. Evidence status, stated plainly: **head-to-head causal evidence comparing these designs is largely absent.** This pattern set is professional consensus plus case studies, not RCTs. That does not make it worthless; it makes it Chapter 4's third bucket — decisions requiring pilot measurement.

**Process portfolios.** The assessed artifact is the *trajectory*: drafts, revision histories, annotated AI interactions, decision logs. Repairs the generalization inference (multiple observation points) and partially repairs extrapolation (process is harder to outsource convincingly than product, though not impossible — an agent can fabricate a revision history, which is why portfolios pair with orals).

**Interactive oral assessments.** Structured professional conversations — defending a portfolio in a simulated client meeting, explaining an analysis choice live. Documented practice across Australian higher education (Griffith, Sydney, the ASCILITE community) shows integrity assurance and authenticity gains; Kofinas et al. (2025, *BJET*) support in-person and oral formats as integrity-preserving while warning honestly about the cost centers: marking burden, rubric standardization, examiner training, and reliability. Repairs extrapolation directly — the student must reason in real time, and follow-up questions probe the boundary of understanding. Voice-AI-administered orals are an emerging, unproven answer to the scaling problem — and they reintroduce the AI-in-the-loop validity question they were meant to solve.

**Reflective components with specifics.** Reflection that requires citation of the student's own process artifacts ("point to the draft where you changed your test choice, and say why") resists generic LLM reflection-prose far better than "reflect on your learning."

**AI-integrated tasks with disclosed use.** The task assumes AI, and the assessment targets what the student did *with* it: prompts, critique, correction, judgment. The flawed-analysis-critique task above is the type specimen.

**Assessment of AI use itself.** Grading the quality of a student's AI collaboration — prompt strategy, verification behavior, knowing when not to use it. Honest flag: whether this is a stable construct worth certifying, or a fast-aging skill, is genuinely open.

## Mid-Chapter Checkpoint

Answer without looking back. (1) Your colleague says: "We caught and removed the three students who used ChatGPT, so our take-home exam is valid again." Which Kane inference is your colleague ignoring, and what is the one-sentence rebuttal? (2) Classify: "Students must include an AI-use declaration with each essay" — discursive or structural, and why? (3) A detector with a 2% false-positive rate screens 5,000 essays. Roughly how many false accusations, and which student population absorbs a disproportionate share?

*If (1) was hard, re-read "The Inference Machine" — the zero-cheating thought experiment is the key. If (2) was hard, apply the load-bearing test: does the clause's force depend on voluntary compliance? If (3) was hard, the arithmetic is 100 accusations, concentrated on non-native English writers per Liang et al. — re-read "Why AI-Proofing Fails."*

## The Evidence Box

| Finding | Source | Endpoint type | Status |
|---|---|---|---|
| 94% of covertly submitted AI exam answers undetected in a real university examination system; AI earned above-average grades | Scarfe et al. 2024, *PLOS ONE* 19(6) | Detection/grading outcomes in a live system | VERIFIED (re-check per-module grade margins before citing [verify]) |
| GPT detectors flagged 61.3% of human-written TOEFL essays by non-native English speakers as AI; ~1 in 5 flagged by all seven detectors | Liang et al. 2023, *Patterns* 4(7) | Classification accuracy / equity | VERIFIED; independently corroborated direction |
| Discursive policy changes do not restore assessment validity; structural change required | Corbin, Dawson & Liu 2025, *Assess. & Eval. in Higher Ed.* (DOI 10.1080/02602938.2025.2503964) | Conceptual/analytic argument, widely endorsed | VERIFIED |
| Two-lane secure/open allocation at program level | Liu & Bridgeman, Teaching@Sydney corpus (2023–2026) | Institutional framework + implementation reports | VERIFIED as practice; **not** causal evidence [contested — exam-revival critique] |
| Argument-based validity chain (scoring → generalization → extrapolation → decision) | Messick 1989; Kane 2013, *J. Educational Measurement* 50(1) | Measurement theory canon | VERIFIED |
| Detector accuracy claims (Turnitin ~15% miss rate; GPTZero <1–10% false positives) | Vendor publications; third-party tests | Vendor claims | UNVERIFIED at evidentiary grade — use Liang et al. for anything load-bearing |
| Three-question framework | This book's synthesis of field practice | Design protocol | Book's synthesis — no single origin citation |
| Head-to-head comparisons of AI-era assessment designs (portfolio vs. oral vs. AI-integrated) | — | — | **GAP: largely absent.** Pattern set = consensus + case studies |
| "Einstein" agentic tool completing whole courses via LMS | Inside Higher Ed, Feb 26, 2026 | Journalism; product demonstration | VERIFIED as reported; fast-aging — see Ch. 12 |

## Pattern Card: The Three-Question Assessment Redesign Protocol

**Name:** Three-Question Redesign (Production / Completion / Visibility)
**Use when:** Any assessment whose artifact an LLM can produce — which now means any unsupervised assessment.
**Trigger:** A validity audit, a confused AI policy, or a high-stakes assessment inherited from the pre-GenAI course.

**Structure:**
1. **State the construct.** What must this assessment make visible about the learner? Write it as an inference claim ("a passing score warrants the claim that the learner can ___ unassisted/with-AI"), not a logistics claim ("the assessment is proctored").
2. **Locate the broken link.** Walk Kane's chain (scoring → generalization → extrapolation → decision). Name which inference GenAI breaks for this task.
3. **Answer Question 3 first** (visibility), then Question 2 (completion: AI-free / disclosed / AI-required — per objective, not per course), then Question 1 (production: instructor AI use, disclosed).
4. **Choose repair patterns** keyed to the broken link: oral defense → extrapolation; process portfolio → generalization; supervised window → scoring conditions; AI-integrated critique task → relocates the construct into judgment.
5. **Allocate at program/course level** (two-lane logic): every certified outcome verified in a secure window *somewhere*; everything else honest about AI.
6. **Red-team the result.** Feed the redesigned task to a frontier model and an agentic browser. What survives is your validity floor.
7. **Write the validity claim** into the assessment description, visibly, for students.

**Fading rule:** Not applicable in the tutoring sense — but stakes-proportionality is the analog: low-stakes formative work tolerates open AI; certification points demand secure verification.
**Failure modes:** (a) Baroque "AI-proof" task designs an LLM defeats in one prompt — red-teaming is mandatory, not optional. (b) Over-rotation to Lane 1: every task supervised, recreating the exam regime thirty years of authentic-assessment research argued against. (c) Validity claims that are secretly logistics claims. (d) Disclosure rules with no structural backstop (discursive relapse).

## Worked Example: Redesigning DataWise 101's Highest-Stakes Assessment

**Situation.** The Track A case: *DataWise 101*, the introductory statistics course with an AI homework tutor. Its highest-stakes assessment is the end-of-term data analysis project — 35% of the grade. Students receive a real dataset, choose and run appropriate analyses, and submit a 2,500-word written report scored against a six-criterion rubric. It is a take-home, two weeks, unsupervised. The course's certified outcome: *the learner can choose, run, and interpret an appropriate statistical analysis for a real question.*

**The problem as the designer sees it.** Run the Reading test mentally: an LLM given the brief and the dataset produces a full-marks report in one prompt — the instructor verified this in twenty minutes. Kane's chain: scoring holds (the rubric scores what is on the page); generalization holds weakly; **extrapolation is dead** — the report no longer warrants "this student can interpret an analysis." And the course's AI tutor makes the irony sharper: the institution supplied the AI that invalidates its own capstone.

**Process — including the dead ends.** First attempt: AI-proof the brief. The designer rewrote the project around an obscure local dataset with a deliberately ambiguous question, reasoning that an LLM would flounder. Red-teaming destroyed this in one session — the model handled ambiguity gracefully, and the obscurity mostly punished *students*. Dead end one: obscurity is not security.

Second attempt: detection plus declaration. Require an AI-use declaration and run reports through a detector. The Corbin–Dawson–Liu coding exposed this as purely discursive, and the Liang et al. finding made it ethically untenable — DataWise 101's enrollment is one-third international students. Dead end two: the policy looked like design and was actually a press release.

Third attempt: move everything in-class. A three-hour supervised practical replacing the project. This secured the construct but destroyed it at the same time — "interpret a real analysis over two weeks" is not a three-hour construct, and the accommodation logistics were brutal. Dead end three: pure Lane 1 narrowed the construct until it was no longer worth certifying.

**Resolution.** The three-question protocol, applied per objective:

- *Visibility target:* judgment — can the student choose a defensible analysis and say whether a conclusion follows?
- *Structure:* the project survives as a **disclosed-AI process portfolio** (Lane 2): students may use AI, must log prompts and decisions, and submit the trajectory — proposal, two annotated drafts, AI-interaction log — alongside the report. Worth 15%.
- *Secure verification:* a **12-minute interactive oral** (Lane 1), scheduled in the final week: the student defends three examiner-chosen decisions from their own portfolio ("here you switched from a t-test to Mann-Whitney — walk me through why"). Worth 15%. Rubric standardized; examiners calibrated on three recorded benchmark orals.
- *AI-integrated component:* one section of the report requires students to include a flawed AI-generated interpretation of their own dataset and correct it (5%). The construct is the critique.
- *Validity claim, stated in the syllabus:* "A passing oral warrants the claim that the analysis decisions in your report are yours — that you can reconstruct, defend, and correct them live. The written report alone warrants no such claim, and we say so."

**The lesson.** Security is a program property, not a per-task property: the take-home did not have to be AI-proof once the oral carried the extrapolation inference.

**The limit.** This pattern is priced for a 60-student course. At 600, the oral becomes the bottleneck — 120 examiner-hours per term — and the honest options are sampling (oral for a random subset, which weakens the per-student claim), more examiners, or the unproven voice-AI oral. The pattern does not yet scale cheaply, and pretending otherwise is how it fails.

### Track B extension

Apply the protocol to the highest-stakes assessment in your own project. Deliverables: (1) the construct as an inference claim; (2) the broken Kane link, named; (3) the redesigned structure with the per-objective AI-free / disclosed / AI-required mix; (4) the red-team transcript — what a frontier model did to your redesign — and the revision it forced; (5) the validity claim as it will appear to learners. If your project has no assessment layer (some corporate products do not), redesign the nearest verification event: the certification quiz, the manager sign-off, the completion criterion — the inference machinery is the same.

## Exercises

**Exercise 10.1 (Analyze).** Obtain three real institutional AI-assessment policies (your institution's, plus two public ones). Code every clause as discursive or structural per Corbin, Dawson and Liu. For each discursive clause, state what would have to be true for it to be load-bearing, and predict its effect on validity. Deliverable: coding table plus a 300-word verdict per policy.

**Exercise 10.2 (Apply).** Disentangle this confused policy using the three-question framework: "AI tools are prohibited in this course except where noted. Instructors may use AI for course preparation. Detected AI use will be reported." Produce the per-objective table (production / completion / visibility target) for a course you know, with the supervised / disclosed / AI-free windows assigned and justified.

**Exercise 10.3 (Evaluate — production).** The detection brief. A skeptical dean proposes licensing an AI detector instead of funding assessment redesign. Write the one-page brief: base-rate arithmetic at your institution's submission volume, the Liang et al. equity findings, the adjudication burden, and the redesign alternative with costs. Take a position. (This brief is rhetoric practice for the Week 15 defense.)

**Exercise 10.4 (Create — Design Lab #6, 25 pts; Track B bonus +5).** The full redesign per the Pattern Card: Track A students redesign a *second* DataWise 101 assessment (the weekly problem sets — a different problem than the capstone, because the tutor itself can complete them); Track B students complete the Track B extension above. The Withdrawal Test and Reliance Disclosure below are required sections. Track B bonus requires the red-team transcript to use the student's actual project materials.

**Assessment notes.** Design Lab #6 is graded on: correctness of the validity diagnosis (which inference broke), structural-vs-discursive discipline (no clause that depends on voluntary compliance carries validity weight), red-team honesty (what survived, what did not), and the stated validity claim. A redesign that is merely a harder task, without a stated inference claim, caps at C-range.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 10 version).** For your redesigned assessment, answer: *if every AI tool vanished the night before the assessment, what could your learners demonstrate — and does your design make that more, rather than less, over the term?* A two-lane design answers this structurally: the Lane 1 window *is* the withdrawal test, scheduled and graded. If your design has no moment where unassisted capability becomes visible, you have redesigned the paperwork, not the assessment.

**Reliance Disclosure (Chapter 10 version).** Name (1) one place your redesign structurally preserves productive struggle — e.g., "the oral cannot be delegated; preparation for it forces the rehearsal the take-home used to skip" — and (2) one place reliance risk remains open — e.g., "the process portfolio can be fabricated by a patient student with an agent; the oral samples only three decisions, so fabrication of the rest may go unobserved." Track B: cite project-specific evidence (your red-team transcript, your enrollment profile, your examiner budget), not generic risk language.

## What Would Change My Mind

The chapter's load-bearing claim is that detection cannot carry assessment validity and structural redesign can. A specific finding that would force revision: a peer-reviewed, adversarially tested detection-plus-provenance system (for instance, cryptographic watermarking with C2PA-style provenance adopted by all major model vendors *and* robust to paraphrase and open-weight models) demonstrating a false-positive rate below 0.1% with no subgroup disparity, sustained across two academic years of real deployment. That would reopen the case for preserving unsupervised written assessment as a certification instrument — and the equity section of this chapter would need rewriting around the new evidence. No current system is within an order of magnitude of this bar.

## Still Puzzling

1. **Does the oral transfer?** Interactive orals repair extrapolation for the assessed task — but no one has shown whether oral-defended capability predicts long-term unassisted capability better than written assessment did. The format's validity argument is itself mostly unmeasured.
2. **What do secure windows cost the anxious, the disabled, and the working?** The equity ledger of re-securing assessment is under-researched; we may be trading a measurable harm (detector bias) for a less-measured one.
3. **Is "judgment over AI output" a stable construct?** If models stop making the kinds of errors students are trained to catch, the AI-integrated critique task ages out — and we do not know the half-life.
4. **What does assessment redesign do to the *teaching* upstream?** If the oral is what gets certified, does instruction drift toward oral-defensible knowledge — and is that drift good?

## Chapter Summary

You can now: diagnose an AI-era assessment failure as a *validity* failure and locate the broken inference in Kane's chain; explain — with base-rate arithmetic and the Liang et al. equity evidence — why detection fails as a design strategy; code policy clauses as discursive or structural and refuse to let discursive clauses carry validity weight; run the three-question protocol (visibility first) to produce a per-objective mix of AI-free, disclosed, and AI-required windows; deploy the AI-era pattern set with its evidence status stated honestly; and write a validity claim a skeptical reviewer can test. Most importantly: you red-team your own redesigns, because the assessment you have not attacked is the one the Reading study was about.

## Key Terms

- **Validity (argument-based):** the degree to which evidence supports the *interpretations and uses* of scores — a property of inferences, not of tests (Messick; Kane).
- **Kane's inference chain:** scoring → generalization → extrapolation → decision; a validity argument is as strong as its weakest link.
- **Extrapolation inference:** the claim that test-domain performance predicts real-world capability — the link GenAI most directly breaks.
- **Discursive change:** modifying rules and instructions around a task; unverifiable in unsupervised conditions (Corbin, Dawson & Liu).
- **Structural change:** modifying task mechanics so validity does not depend on rule-following.
- **Two-lane approach:** program-level allocation of assessment into secure (supervised, certifying) and open (AI-embracing, formative) lanes (Liu & Bridgeman).
- **Three-question framework:** production / completion / visibility — this book's synthesis protocol for per-objective AI assessment decisions.
- **Process portfolio:** assessment of the trajectory (drafts, logs, annotated AI interactions) rather than the product alone.
- **Interactive oral assessment:** a structured live conversation in which the learner defends their own work — extrapolation repair at examiner cost.
- **Base-rate problem (detection):** at scale, even small false-positive rates manufacture large absolute numbers of false accusations, concentrated on non-native writers.

## Bridge

Every decision in this chapter — disclosed-use windows, declared validity claims, the AI tutor barred from gradable work — assumes one quiet thing: that the learner knows what the AI is, what it is doing, and trusts it the right amount. The evidence says the interface is actively teaching them not to. A learning companion that simulates typing, remembers your name, and tells you it believes in you is making claims no system can honor — and the survey data from its consumer cousins shows what those claims do to the people most likely to believe them. Next: trust, transparency, and the designed relationship — and the checkpoint where seven weeks of decisions become one guardrail specification.

## Further Reading

1. **Corbin, T., Dawson, P., & Liu, D. (2025). "Talk is cheap: why structural assessment changes are needed for a time of GenAI."** *Assessment & Evaluation in Higher Education.* The discursive/structural distinction in full — the single most useful lens for auditing your institution's AI policy.
2. **Scarfe, P., Watcham, K., Clarke, A., & Hamill, E. (2024). "A real-world test of artificial intelligence infiltration of a university examinations system."** *PLOS ONE* 19(6). The opening case in its citable form; read the method section for what "covert" required.
3. **Liang, W., Yuksekgonul, M., Mao, Y., Wu, E., & Zou, J. (2023). "GPT detectors are biased against non-native English writers."** *Patterns* 4(7). Short, devastating, and the equity argument against detection in seven detectors' worth of data.
4. **Kane, M. (2013). "Validating the interpretations and uses of test scores."** *Journal of Educational Measurement* 50(1). The argument-based validity framework — denser than this chapter's treatment, and worth it for anyone who will defend a redesign to a measurement specialist.
5. **Liu, D. & Bridgeman, A., Teaching@Sydney two-lane corpus (2023–2026).** Institutional practice literature: the FAQ, the program-level design posts, and the interactive-oral implementation notes — what structural change looks like with workload politics included.

## LLM Exercise: Red-Team Your Redesign

Copy-paste the following into a frontier LLM. This exercise models scaffold design: it requires your own artifact and refuses to work without it, and its reasoning gates make the model interrogate your design before attacking it.

```
You are an adversarial assessment red-teamer for a graduate course on
AI-mediated learning design. Your job is to attack MY redesigned
assessment — not to design one for me.

RULES:
1. If I have not pasted my own redesigned assessment below (construct
   statement, task structure, AI policy per component, and validity
   claim), STOP and ask me for it. Do not invent an example. Do not
   proceed with a generic critique.
2. Before attacking, restate my validity claim in one sentence and
   identify which Kane inference (scoring / generalization /
   extrapolation / decision) my design relies on most. Ask me to
   confirm or correct your restatement. Wait for my answer.
3. Then attack in three rounds, pausing after each for my response:
   ROUND 1 — Completion attack: produce the strongest strategy by
   which a student with a frontier LLM and an agentic browser defeats
   my design. Be concrete: what gets delegated, what gets fabricated.
   ROUND 2 — Policy attack: identify every clause in my design that is
   discursive (depends on voluntary compliance) and explain what
   happens to my validity claim if compliance is zero.
   ROUND 3 — Equity attack: identify which student populations my
   design burdens disproportionately (language, disability, work
   schedules, anxiety) and whether any security feature transfers
   risk onto them.
4. After Round 3, require ME to write the revision: list the three
   weakest points you found and ask me to propose the structural fix
   for each. Critique my fixes; do not write them for me.
5. End by asking me for my one-sentence Withdrawal Test answer: what
   can my learners demonstrate when the AI is taken away, and where
   does my design make that visible?

MY REDESIGNED ASSESSMENT:
[PASTE YOUR FULL REDESIGN HERE — if this is empty, ask for it]
```

Deliverable for Design Lab #6: the full transcript, plus a half-page memo on what the red-team broke and what you changed.
