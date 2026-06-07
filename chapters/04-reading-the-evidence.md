# Chapter 4 — Reading the Evidence: Thin Causal Bases, Vendor Claims, and the Durability Gap

**[MIDTERM: SCAFFOLD/CRUTCH DIAGNOSTIC]**

## Learning Objectives

By the end of this chapter, you will be able to:

1. **(Understand)** Characterize the field's evidence state: the Stanford SCALE finding of roughly 20 high-quality causal studies among 800+ papers, the converging meta-reviews, and what "exploratory" means on the field's best positive result. *(Track A and B identical.)*
2. **(Analyze)** Deconstruct a vendor product description into testable interaction design claims, outcome claims lacking causal support, and borrowed evidence — and assign each the evidence tier its actual support would earn. *(Track A and B identical.)*
3. **(Evaluate)** Judge which design decisions can responsibly be made on current evidence, which require a pilot with measurement, and which should be declined — the three-bucket discipline. *(Track B: applied to your own project's feature list as midterm preparation.)*
4. **(Evaluate)** Explain the durability gap and articulate the risk-asymmetry argument that converts the absence of longitudinal evidence into conservative design defaults rather than paralysis. *(Track A and B identical.)*

This is the midterm chapter: every objective is tested directly in the Scaffold/Crutch Diagnostic.

## Opening case: Two product pages

Two product pages, projected side by side in class, names redacted.

**Product A** describes an adaptive mathematics tutor. The copy is dry. It mentions "mastery-based progression grounded in cognitive science" and links to a research page listing studies going back two decades — including a large randomized trial across 73 schools in seven states. Follow the links and the news is strikingly modest: no significant effect in year one, roughly +0.20 standard deviations in year two, after schools learned to implement it (Pane et al. 2014); a federal evidence review rating its effects on algebra achievement as *mixed* (WWC 2016). Decades of work; honest, modest, implementation-dependent results.

**Product B** describes a conversational AI tutor. The copy is electric. "A personal tutor for every student." "Socratic by design — it never just gives the answer." "Built on the breakthrough science of one-on-one tutoring." The research page cites Bloom's two-sigma finding and a satisfaction survey. There is no randomized trial of the product itself, no comparison group anywhere, no measure of what students can do after the tutor is taken away.

Students rank the two by strength of evidence. Nearly everyone ranks A above B — the exercise makes the answer almost embarrassing. Then the reveal: the market ranked them the other way. Product B commanded the headlines, the keynotes, the district pilots, and valuations Product A's maker never approached — the exact opposite of the evidence ranking a graduate class produced in four minutes.

This is not a story about foolish buyers. It is a structural fact you will work inside for your whole career: **evidence accumulates slowly, and marketing doesn't wait.** Market visibility and evidence maturity are not just uncorrelated — they can run inverse, because the products with the most evidence have had the most years to disappoint, and the products with the least have had the most freedom to promise. This chapter's job is to make sure that, unlike the market, you can tell the difference — and know what to do when the honest answer is "nobody knows yet."

*(The paired pages are an illustrative reconstruction, modeled on the public positioning of Carnegie Learning's Cognitive Tutor/MATHia line and the most market-visible conversational tutors circa 2023–2025. The evidence citations are real.)*

## Prerequisites

You should arrive able to:

- **Explain the three-condition Bastani table** — same model, +48%/−17% under one design, +127%/no deficit under another (Chapter 1).
- **Describe the crutch mechanism** behaviorally and say why self-regulation cannot be the guardrail (Chapter 2).
- **Name the scaffold-producing patterns** and the three RCT architectures — constrain the AI, supervise the AI, support the human (Chapter 3).

If any are shaky, return to the relevant chapter before the midterm: the diagnostic assumes all three.

## Core content

### The 20-in-800 problem: what the evidence base actually contains

Start with the number that should reorganize how you read everything else. Stanford's SCALE Initiative, in *The Evidence Base on AI in K-12: A 2026 Review*, analyzed more than 800 academic studies of AI in K-12 education and identified only about 20 that rigorously measure **causal impact** — studies designed to tell whether an AI tool *changed outcomes*, rather than describing usage, perceptions, or correlations (Stanford SCALE 2026). The repository has since passed 1,100 papers without the causal core growing proportionally.

The review's other findings matter as much as the ratio. There are, by SCALE's census criteria, **no high-quality causal studies of student AI use conducted in U.S. K-12 classrooms** — the spine RCTs of this book come from Turkey (Bastani), the UK (LearnLM/Eedi), and a tutoring-provider context (Tutor CoPilot). Most studies measure short-term outcomes. Equity, wellbeing, and social development are nearly unstudied. And — read this twice — tools with pedagogical guardrails show more promising outcomes than general-purpose chatbots: the field's most systematic evidence census independently corroborates this book's thesis. (One epistemic note: the "no U.S. K-12 causal studies" claim is a single organization's census with explicit inclusion criteria — quote it with the criteria attached, not as a bare fact.)

The thin-base conclusion does not rest on SCALE alone. A PRISMA-guided meta-review of 35 systematic reviews of generative AI in education reached the same verdict from the opposite direction: the *reviews themselves* are methodologically inconsistent — variable database selection, opaque search strategies, weak or absent quality appraisal — so the secondary literature inherits and amplifies the weaknesses of the primary (Zhang, Deng & Shadiev 2026; the synthesis this book draws on also cites a "Han et al. 2025" review cluster making the same argument — that citation is unpinned [verify], so this chapter leans on the verified Zhang, Deng & Shadiev record). Learn the structure of this argument: when the primary-study census and the review-of-reviews converge on "thin and methodologically weak," the conclusion is robust to either source being wrong.

The design consequence is the book's recurring refrain: **practice is years ahead of evidence.** Institutions are signing platform contracts, redesigning curricula, and restructuring staffing — hard-to-reverse decisions — on an evidence base that would not support a confident claim in either direction. Your job in this chapter is not to become cynical. It is to become *calibrated*: able to say, for any claim, exactly which kind of evidence stands behind it and what that evidence licenses.

The misconception to surrender now: "800 papers means a well-studied field." Volume of publication is not volume of evidence. Roughly 780 of those papers are descriptive, perceptual, or correlational — valuable for design insight, useless for outcome claims. The gap between "much-studied" and "well-evidenced" is where most vendor copy lives. This is normal science-system behavior, not an AI-education anomaly: the incentives that fill literatures with weak-but-publishable studies are documented across fields (Ritchie 2020).

### Four endpoints wearing one word: assisted, unassisted, transfer, retention

The most load-bearing distinction in this chapter — arguably in the book — is that "the AI improved learning" can mean four different measurements, and they can disagree with each other *in sign*.

- An **assisted endpoint**: what the learner can do with the AI present. Bastani: +48% GPT Base, +127% GPT Tutor.
- An **unassisted endpoint**: what the learner can do after the AI is withdrawn. Bastani: −17% GPT Base, approximately zero GPT Tutor.
- A **transfer endpoint**: performance on novel material or contexts. LearnLM/Eedi: students supported by human-supervised AI were 5.5 percentage points more likely to solve a novel problem in the *next* topic — the field's strongest positive finding, explicitly labeled exploratory by its own authors.
- A **retention (durability) endpoint**: performance after time has passed. Across the entire field, this column is essentially empty.

The Bastani RCT is the canonical demonstration that the first two endpoints can move in opposite directions in the same condition: students scored 48% higher with the tool and 17% lower without it (Bastani et al. 2025). Hold that sentence still until it stops sounding like a paradox. It means any evaluation that reports only assisted performance is *structurally incapable of detecting a crutch* — not unlikely to, incapable of. It also disposes of three metrics that dominate pilot reports: engagement, satisfaction, and usage minutes are not learning endpoints at all — they are product metrics that correlate with assisted performance and can anti-correlate with unassisted performance.

Two calibration notes. First, "exploratory" on LearnLM is not a slur — it is the authors' own precision label for a first-of-its-kind trial, unreplicated, run within one platform, with human supervision of the AI's messages (76.4% approved with zero or minimal edits). The field's best positive finding comes with a human in the loop *and* a modesty label; learn to read both facts. Second, even the field's good news lives in the leftmost columns. Kestin et al. (2025, *Scientific Reports*) found a research-based AI tutor outperforming in-class active learning in Harvard physics — strong on immediate unassisted post-tests, silent on retention and long-run transfer, because the intervention spanned about a week. Classifying a study's endpoints before reacting to its headline is the skill the midterm tests.

### Effect-size literacy: enough to read the table, resist the hype, and respect the small

You need just enough effect-size fluency to avoid two opposite errors: dismissing small effects that matter, and trusting large effects from small, unrepresentative studies.

The working toolkit. A **standardized mean difference** (Cohen's *d* or Hedges' *g* — *g* is *d* with a small-sample correction; for a designer they read the same) expresses a between-group difference in standard-deviation units. The WWC's **improvement index** translates this into expected percentile change for the median comparison student: an effect of about 0.25 ≈ +10 percentile points. And — the recalibration most of the field still hasn't absorbed — **Kraft's education-specific benchmarks**: Cohen's 0.2/0.5/0.8 labels were never derived from field-based education research, where 36% of RCT effect sizes on standardized achievement outcomes fall below 0.05. Kraft proposes, for this literature: <0.05 small, 0.05–0.20 medium, >0.20 large — always interpreted jointly with cost and scalability (Kraft 2020).

That recalibration flips the opening case. By Cohen's labels, the Cognitive Tutor's at-scale results look pathetic. By Kraft's, a modest positive effect demonstrated across dozens of schools over two decades is *more* evidentially impressive than a +0.8 from one sixty-person lab study — because effect sizes are functions of the study, not properties of the product; researcher-designed proximal outcomes routinely run two to four times larger than standardized distal outcomes for the same intervention. (A "+0.04 weighted effect at scale" figure for Cognitive Tutor circulates, including in this book's own planning documents; direct verification found the WWC's official rating to be "mixed effects," and the +0.04 could not be confirmed verbatim [verify against the WWC June 2016 report before citing]. The fully verified formulation, which this book uses: **WWC 2016 — mixed, modest effects; Pane et al. 2014 — null in year one, ≈+0.20 SD in year two.**)

One more habit: distrust averages without spread. AI-in-education effects are heavily **heterogeneous** — moderated by domain structure, implementation quality, and population — so the moderator table is usually more informative than the headline mean. And the benchmark question is itself contested: Horvath's *Digital Delusion* argues for a 0.40 hinge below which interventions shouldn't impress you — a standard incompatible with Kraft's — while the rebuttal essay in this book's pantry argues the implementation gap explains more than the hinge concedes. That benchmarks are arguments, not facts, is itself effect-size literacy.

### Vendor claims: design intent wearing an evidence costume

A vendor product page is a *design document wearing an evidence costume*. The deconstruction method this chapter trains — and the midterm tests — separates every sentence into three piles:

1. **Interaction design claims.** Testable descriptions of what the product does: "it never gives direct answers; it asks guiding questions." Informative about intended experience design, verifiable the cheap way — by using the product. Real information; not outcome evidence.
2. **Outcome claims.** Assertions about learning effects: "proven to accelerate mastery." These require causal evidence that, per the 20-in-800 state, usually does not exist for the product in question.
3. **Borrowed evidence.** Citations to an adjacent product class's literature — LLM tutors borrowing the cognitive-tutor evidence, or any tutor borrowing Bloom's (1984) two-sigma claim.

Pre-bunk the two-sigma move now, because you will meet it in nearly every vendor deck of your career: Bloom's claim that one-on-one tutoring yields two standard deviations of improvement was based on small studies and has never replicated at that magnitude. VanLehn's (2011) review found human tutoring at roughly *d* ≈ 0.79 — substantial, not mythical — and intelligent tutoring systems close behind at ≈ 0.76. A vendor citing two-sigma is citing a number the field retired over a decade ago, borrowed from a product class (human tutors) the vendor doesn't sell.

The regulatory scaffold for tiering claims is the **ESSA evidence framework**: Tier 1 (Strong — well-designed RCTs), Tier 2 (Moderate — quasi-experimental), Tier 3 (Promising — correlational with controls), Tier 4 (Demonstrates a Rationale — a logic model plus an evaluation underway). Two field facts turn the tiers from checkbox into literacy: most edtech products cluster at Tiers 3–4, because correlational designs are achievable on product timelines; and "ESSA-aligned" in marketing copy frequently means Tier 4 — *the company has a theory and intends to test it*. The U.S. Department of Education's EdTech Evidence Toolkit (2023) exists because districts could not parse vendor claims; Digital Promise runs a formal Tier 3 certification; the gaming of the "evidence-based" label is now its own literature (LSE Impact blog 2026). Why do RCTs sit at Tier 1? Randomization is the only design that severs the link between who gets the intervention and every other difference between groups — a logic told accessibly in Leigh's *Randomistas* (2018); the claim-autopsy heuristics in Bergstrom & West's *Calling Bullshit* (2020) — find the comparison group; ask what the percentage is a percentage of — are the midterm's informal spine.

The misconception to retire: "the vendor cites a study, so the product is evidence-based." The cited study is routinely (a) of a different product version, (b) of a different product class, (c) internal and unpublished, or (d) Tier 3–4 dressed as Tier 1–2. A citation's existence is not the claim's support. And hold the harder, fairer thought alongside it: a product can be simultaneously *well-designed by Chapter 3's pattern catalog* and *unevidenced by this chapter's standards* — Khanmigo's public description (Socratic moves, no direct answers, teacher visibility) is genuinely scaffold-leaning design intent with, at this writing, no published causal evaluation at the Cognitive Tutor's maturity. Holding both judgments at once is the skill.

### The durability gap and the three-bucket discipline

Now the field's most consequential unknown. **No rigorous longitudinal studies exist anywhere in the field** on whether the crutch effect persists or fades with extended use, whether learners develop appropriate reliance or deepen dependency, or what multi-year AI-mediated learning does to expertise development. Bastani measures one term. LearnLM is exploratory. Kestin spans a week. The strongest statement the field can honestly make about year-four effects is "not yet known." This is not a routine "more research is needed" footnote: the decisions being made right now — curriculum architecture, assessment policy, what early-career practice looks like — are exactly the decisions longitudinal evidence would inform, and they are being made irreversibly in its absence.

What it costs to skip this reasoning: in spring 2024, Los Angeles Unified launched "Ed," an AI student advisor built by the startup AllHere, on a contract reported at roughly $6 million. Within about three months, AllHere's CEO had departed, most staff were furloughed, the company collapsed into insolvency, and a former employee publicly warned that the system's data handling did not match what was promised. No causal evaluation of Ed's learning impact ever existed; the second-largest U.S. district procured on demo quality and vision (The 74, EdWeek, LA Times, mid-2024 — figures "as reported"). Structurally, it is the opening case's error at institutional scale: ranking by market visibility instead of evidence.

The chapter's answer to all this uncertainty is a decision discipline, not a mood. For any proposed design decision, sort into three buckets:

1. **Decide on current evidence.** Causal direction established, cost of error low or symmetric. Example: requiring reasoning before help — supported by Bastani plus the self-explanation literature, near-zero downside.
2. **Pilot with measurement.** Evidence suggestive but unestablished, and a local pilot with an *unassisted* endpoint can carry the weight. Example: an AI feedback layer on essay drafts, with a pre/post unassisted writing measure.
3. **Decline.** The evidence affirmatively warns (unrestricted answer-providing access during practice), or the risk is asymmetric and unmeasurable on pilot timescales — features whose main risk is long-run dependency, which the durability gap means you cannot test locally.

The bridge concept is **risk asymmetry**, and it keeps the third bucket honest rather than timid. "Absence of evidence of harm" and "evidence of absence of harm" are different things; the durability gap means long-run harm and long-run benefit are *equally* unevidenced. What breaks the tie: harm to skill development compounds and is hard to reverse; foregone convenience is cheap. When you cannot measure the harm on your timescale, the burden of proof flips to the feature. Be able to articulate this in full — "be careful" is not a position; risk asymmetry is.

## Mid-chapter checkpoint

*Ungraded. Three claims about one fictional AI tutor. For each: name the endpoint type and what the claim licenses.*

1. "Students using StatTutor scored 31% higher on in-app quizzes."
2. "In a randomized study, StatTutor users scored 0.12 SD higher on a proctored, no-AI final exam."
3. "94% of students said StatTutor helped them learn."

*Answers: (1) assisted endpoint — cannot detect a crutch; licenses nothing about learning. (2) unassisted endpoint with a causal design — the only claim that bears on learning; by Kraft's benchmarks, medium and decision-relevant. (3) a perception measure, not a learning endpoint. If you classified (1) or (3) as learning evidence, reread "Four endpoints wearing one word"; if you dismissed (2) as too small, reread the effect-size section.*

## The Evidence Box

| Study / source | What it found | Endpoint type(s) | Verification status |
|---|---|---|---|
| Stanford SCALE (2026), *The Evidence Base on AI in K-12* | ~20 rigorous causal studies among 800+ (now 1,100+) papers; none of student AI use in U.S. K-12 classrooms; guardrailed tools outperform general chatbots | Census of the field | Verified; the "no U.S. K-12" claim is one organization's census — present with its criteria |
| Zhang, Deng & Shadiev (2026), meta-review of 35 systematic reviews | The field's secondary literature is methodologically inconsistent; thin-base conclusion corroborated | Review of reviews | Verified. The parallel "Han et al. 2025" citation is unpinned [verify] — do not cite without resolving |
| Bastani et al. (2025), *PNAS* 122(26) | GPT Base: +48% assisted, −17% unassisted; GPT Tutor: +127% assisted, no deficit; n≈1,000, three Turkish high schools; Aug 2025 correction was affiliation-only | Assisted + unassisted (the canonical divergence) | Verified |
| LearnLM/Eedi RCT | +5.5 pp on a novel next-topic problem vs. human-only tutoring; 76.4% of AI messages approved with zero/minimal edits | Transfer | Verified; **exploratory by the authors' own label** — unreplicated, single platform |
| Kestin et al. (2025), *Scientific Reports* | Research-based AI tutor beat in-class active learning in physics | Immediate unassisted post-test (~1-week scale) | Verified; silent on retention and long-run transfer |
| Pane et al. (2014), *EEPA*; WWC (2016) | Cognitive Tutor Algebra I at scale: null year 1, ≈+0.20 SD year 2; WWC: mixed effects | Unassisted (standardized) | Verified. The circulating "+0.04" figure is PARTIALLY VERIFIED [verify against the WWC PDF] |
| Kraft (2020), *Educational Researcher* | Education-specific benchmarks: <0.05 / 0.05–0.20 / >0.20, read with cost and scale | Methodological | Verified |
| VanLehn (2011) | Human tutoring ≈ *d* 0.79; ITS ≈ 0.76 — the two-sigma corrective | Meta-analytic, mixed endpoints | Verified |
| LAUSD "Ed" / AllHere collapse (2024) | ~$6M procurement on demo and vision; vendor insolvent within months; no causal evaluation ever existed | Institutional failure case | Journalism — label "as reported" |
| Retention / durability column | — | Retention | **Empty across the field.** Zero rigorous longitudinal studies in either direction — the book's most falsifiable sentence; wired to the edition trigger |

## Pattern Card: The Vendor-Claim Deconstruction Protocol + The Three-Bucket Rule

**Name:** Vendor-Claim Deconstruction (with Three-Bucket Disposition)

**Trigger:** Any product page, white paper, pilot report, or pitch deck enters a decision you are accountable for — procurement, integration, or your design lab project.

**Structure:**
1. Sort every claim-bearing sentence into three columns: *interaction design claim* (testable by using the product), *outcome claim* (requires causal evidence), *borrowed evidence* (cites an adjacent product class or the two-sigma myth).
2. For each outcome claim, demand the comparison group, the endpoint type, and the ESSA tier the actual support would earn. "ESSA-aligned" without a tier number is Tier 4 until shown otherwise.
3. For each design claim, verify directly: use the product; check what it permits, forbids, requires, reveals, logs, and hands off.
4. Dispose of every proposed feature into a bucket: **decide / pilot with an unassisted endpoint / decline** — risk asymmetry deciding the close calls.

**Fading rule:** The protocol never fully fades — it compresses with expertise. By Week 14 you should run steps 1–2 mentally on any evaluation table (checking for the missing unassisted and retention columns is the reflex this book is installing). New product categories (agentic features, Week 12) reset it to full deliberate form.

**Failure mode:** *Cynicism overshoot.* The protocol produces calibrated dispositions, not maximal doubt. "Nothing is proven, so my judgment is as good as anything" is exactly as uncalibrated as believing the product page — and it forfeits the genuinely decidable bucket-1 patterns the evidence does support. The companion failure: deconstructing the vendor's claims while exempting your own — your design lab artifacts make outcome claims too.

## Worked example: Deconstructing "Mentora" — a diagnostic walkthrough

*(Illustrative case, modeled on real product-page patterns; no real vendor is depicted.)*

**Situation.** Priya is an LX designer at a community-college system. A vice-chancellor forwards the product page for "Mentora," a conversational AI tutor, with the note: *"Board is excited. Thoughts by Friday?"* The page says: "Mentora never gives away answers — it coaches like the world's best tutors." "Built on the science of one-on-one tutoring: students with personal tutors perform two standard deviations better (Bloom, 1984)." "In pilot programs, students improved scores by 34%." "ESSA-aligned." "Loved by 9 out of 10 students."

**The problem as the designer sees it.** She cannot run an RCT by Friday. Her deliverable is a calibrated reading: which sentences carry information, which carry costume, and what disposition each implies.

**Process — including the dead ends.** Priya's first pass goes wrong instructively: she puts "never gives away answers" in the outcome-claim pile and nearly dismisses it as puffery. It isn't — it is an *interaction design claim*, checkable in an afternoon with a free trial and probe problems. She tests it; Mentora holds the line on direct requests but yields a full worked solution when asked to "check my answer" against a wrong answer — a leak impossible to learn from the page. Her second dead end: an hour hunting the "34%" study. It is an internal pilot summary — no comparison group, endpoint unstated but clearly in-product. Bergstrom and West's question — *34% compared to what, measured how?* — closes that lane: the claim is unanchored, which is worse than false. The Bloom citation she now recognizes on sight: borrowed evidence, from a different product class, at a magnitude the field retired (VanLehn 2011: ≈ 0.79, not 2.0). "ESSA-aligned": she emails the vendor asking *which tier*; the answer ("our logic model is informed by ESSA principles") is Tier 4, translated.
 
**Resolution.** Priya's Friday memo runs one page. Design intent: genuinely scaffold-leaning, with one documented leak. Outcome evidence: none that survives classification — every cited number is assisted, uncontrolled, or borrowed. Disposition: *pilot with measurement* — one course section, one semester, primary endpoint a proctored unassisted exam against a business-as-usual section, the "check my answer" leak raised as a contract condition. Not *decide* (no causal support), not *decline* (the design claims are real; the pilot is cheap and measurable on her timescale).

**The lesson.** A product page is a blueprint review, not an inspection report — it tells you what the designers intended, never what the product does to learning.

**The limit.** The protocol reads claims, not products. A badly marketed product with strong evidence will score better than it sounds, and a Tier 4 rationale can be a good-faith research program or a costume — deconstruction cannot tell which; only the vendor's behavior under measurement can. And the protocol is silent exactly where the field is silent: had Mentora's main risk been long-run reliance, no one-semester pilot could resolve it — that is the durability gap, and the honest memo says so.

## Exercises

**Exercise 4.1 — Vendor-page autopsy (Analyze).** Choose one real AI tutoring product's public page. Produce the three-column deconstruction, each row tagged with the ESSA tier its available support would earn. One page, table plus 150 words. *Direct midterm preparation.*

**Exercise 4.2 — Endpoint audit (Evaluate).** Using the methods sections of Bastani et al. (2025) and Kestin et al. (2025) plus one vendor white paper, complete the four-endpoint table for each and write a 150-word "what this licenses" verdict per source.

**Exercise 4.3 — Three-bucket memo (Evaluate/Create; production).** For the Track A statistics tutor (or your Track B project), bucket five proposed features into decide / pilot / decline, with one evidence citation or one named gap per decision, and the risk-asymmetry argument written out for at least one decline. The Week 4 rehearsal of the Week 11 guardrail specification.

**Exercise 4.4 — Effect-size translation drill (Apply).** Convert *g* = 0.04, 0.20, and 0.79 into improvement-index percentiles and Kraft-benchmark language; then, given stated costs (cheap-at-scale, moderate, boutique-expensive), defend which you would fund.

**Assessment notes.** This week carries the **Midterm: Scaffold/Crutch Diagnostic (100 pts)**: six unseen AI learning products described at the interaction level; for each, you classify scaffold-leaning or crutch-leaning, cite the implicated evidence, and name the one design change with the largest expected effect. Grading rewards calibration — claims sized to their evidence — over verdict confidence. An **Evidence Brief (30 pts)** is also due: classify the endpoints and tier the claims of one published study or product evaluation. Both tracks sit the same midterm; Track B students should draw Exercise 4.3 from their own project, which seeds Design Lab #1.

## Withdrawal Test + Reliance Disclosure

**Withdrawal Test (Chapter 4 template).** This chapter's version applies to *claims* rather than designs. For every product judgment in your midterm and Evidence Brief, answer: *What does the cited evidence say about what the learner can do when the AI is taken away?* If the evidence is silent on unassisted performance, your classification must say "unassisted endpoint: absent" — silence misread as safety is the error the −17% finding exists to prevent.

**Reliance Disclosure (Chapter 4 template).** Name (1) one place your analysis relied on the vendor's description rather than independent verification, and (2) one classification where the honest evidence state is "cannot tell." A diagnostic that discloses its own reliance is practicing the transparency it will later specify for learners.

## What would change my mind

The 20-in-800 framing — and the conservative defaults it justifies — would need substantial revision if the causal core stopped being thin: a body of preregistered RCTs of deployed products, run across multiple country contexts including U.S. classrooms, reporting unassisted and retention endpoints, and *converging* on durable positive effects for lightly guardrailed tutors. The single most decisive finding would be a multi-year cohort study showing that early unassisted deficits (the −17% pattern) wash out or reverse with sustained use — that would empty the durability gap of its menace and move several "decline" features into "pilot." The framework is built to be overturned by exactly that evidence; what it refuses is being overturned by product pages.

## Still puzzling

- **Does the causal-only census undercount design knowledge?** Qualitative and design-based research carries real design insight that SCALE-style counting renders invisible. The book's position — design knowledge and outcome claims have different uses, and only one supports vendor outcome language — is defensible, not settled.
- **Can evidence tiers survive their own success?** "ESSA-aligned" is already gamed; certification economies professionalize labeling and create new Goodhart targets. What does tier-inflation-resistant labeling look like?
- **What is the half-life of a null?** Cognitive Tutor needed a second year of implementation to show effects. How many null results measure implementation immaturity rather than product inefficacy — and how would a buyer tell?
- **Who runs the five-year study?** No funding structure rewards any actor — vendor, district, or lab — for the longitudinal trial the durability gap demands. The field's most important study is nobody's job.

## Chapter summary

You can now: characterize the field's evidence state — a thin causal core inside a large descriptive literature, corroborated from two independent directions — while resisting both credulity and cynicism overshoot; classify any claim by endpoint type and explain why assisted-only evaluations cannot detect a crutch; read effect sizes with education-specific benchmarks, heterogeneity and cost in view; deconstruct a vendor page into design claims, outcome claims, and borrowed evidence, tier the support, and pre-bunk the two-sigma move; and convert honest uncertainty into the three-bucket discipline, with risk asymmetry — not vibes — deciding what gets declined. Act One is complete: you can diagnose, and you can read the evidence behind any diagnosis.

## Key terms

- **Causal study** — a design capable of attributing an outcome change to the intervention rather than to who happened to use it.
- **Endpoint** — the specific measurement an evaluation reports; the four types are assisted, unassisted, transfer, retention.
- **Unassisted performance** — what the learner can do after the AI is withdrawn; this book's primary endpoint.
- **Transfer** — performance on novel material or contexts; not a synonym for "any unassisted measure."
- **Durability gap** — the field-wide absence of longitudinal evidence on sustained AI-mediated learning.
- **Hedges' g / improvement index** — standardized effect size; its translation into expected percentile change.
- **Kraft benchmarks** — education-specific effect-size categories (<0.05 / 0.05–0.20 / >0.20), read with cost and scale.
- **ESSA tiers** — the four-level federal evidence framework (Strong / Moderate / Promising / Demonstrates a Rationale).
- **Borrowed evidence** — citing an adjacent product class's literature (canonically, Bloom's two-sigma) as one's own support.
- **Three-bucket discipline** — decide / pilot with measurement / decline, with risk asymmetry breaking ties.

## Bridge

Act One is complete: you can classify an unfamiliar product's interaction design and weigh the evidence behind any claim about it. Act Two turns from diagnosis to design — and it starts uncomfortably close to home. Before you design the AI your learners will talk to, you must govern the AI already inside your own workflow: the one drafting your objectives, storyboards, and assessment items. Having deconstructed everyone else's claims this week, next week you turn the same instruments on yourself — and the first vendor you audit is the tool you already pay for.

## Further reading

- **Kraft, M. A. (2020). "Interpreting Effect Sizes of Education Interventions." *Educational Researcher* 49(4).** The most useful methods paper a working LX designer can read; replaces Cohen's folklore with field-derived benchmarks.
- **Bastani, H., et al. (2025). "Generative AI without guardrails can harm learning." *PNAS* 122(26).** Reread at methods depth — the endpoint table, the error-propagation evidence of copying.
- **Bergstrom, C., & West, J. (2020). *Calling Bullshit.*** The claim-autopsy toolkit — comparison groups, denominators, selection effects — the midterm quietly examines.
- **Ritchie, S. (2020). *Science Fictions.*** Why a 780-in-800 ratio of weak-to-strong papers is normal science-system behavior; the hype chapter maps directly onto vendor-claim deconstruction.
- **Stanford SCALE Initiative (2026). *The Evidence Base on AI in K-12: A 2026 Review.*** The census itself; read the inclusion criteria, not just the headline ratio.

## LLM Exercise: The Claim-Autopsy Coach

Copy-paste the following into the LLM of your choice. Note its design: it refuses to work without your artifact and makes you commit to classifications before revealing its own — a reasoning gate, the pattern you will formally design in Chapter 6.

```
You are my evidence-audit coach for AI-in-education product claims. Follow
these rules exactly.

RULE 1 — REQUIRED INPUT. I must paste the actual text of a vendor product
page, pilot report, or evidence page for an AI learning product. If I have
not pasted one, your ONLY permitted response is to ask me for it. Do not
demonstrate with an invented example. Do not proceed.

RULE 2 — I CLASSIFY FIRST. Present the claim-bearing sentences as a
numbered list and require me to classify each as (a) interaction design
claim, (b) outcome claim, or (c) borrowed evidence — one sentence of
reasoning per claim. Do not reveal your own classification until I commit
to mine in writing.

RULE 3 — GATED COMPARISON. Then compare classifications one claim at a
time. Where we disagree, do not simply correct me: ask one question that
exposes what I may have missed, and let me revise first.

RULE 4 — ENDPOINTS AND TIERS. For each outcome claim, require me to name
the endpoint type (assisted / unassisted / transfer / retention) and the
ESSA tier the visible support would earn. If the page doesn't say, the
correct answer is "cannot tell" — push back if I guess.

RULE 5 — DISPOSITION. End by requiring me to write the three-bucket
disposition (decide / pilot with an unassisted endpoint / decline) for the
flagship feature, with the risk-asymmetry argument if I choose decline.
Only then give your one-paragraph critique — including the strongest
argument AGAINST my choice.

Never produce the finished analysis for me. Your job is to make my
classification visible and contestable, not to replace it.
```

*Deliverable: the transcript plus a 100-word reflection on the one classification you revised and why. An analysis the AI produced for you is, by this chapter's own standards, an assisted endpoint.*
