# Chapter 4 — Reading the Evidence: Thin Causal Bases, Vendor Claims, and the Durability Gap
*On the 20 studies hiding inside 800, the endpoints that cannot detect a crutch, and what to do when the honest answer is "nobody knows yet."*

Two product pages, projected side by side, names redacted.

Product A describes an adaptive mathematics tutor. The copy is dry. It mentions "mastery-based progression grounded in cognitive science" and links to a research page listing studies going back two decades — including a large randomized trial across 73 schools in seven states. Follow the links and the news is strikingly modest: no significant effect in year one, roughly +0.20 standard deviations in year two, after schools learned to implement it (Pane et al. 2014); a federal evidence review rating its effects on algebra achievement as *mixed* (WWC 2016). Decades of work; honest, modest, implementation-dependent results.

Product B describes a conversational AI tutor. The copy is electric. "A personal tutor for every student." "Socratic by design — it never just gives the answer." "Built on the breakthrough science of one-on-one tutoring." The research page cites Bloom's two-sigma finding and a satisfaction survey. There is no randomized trial of the product itself, no comparison group anywhere, no measure of what students can do after the tutor is taken away.

Students rank the two by strength of evidence. Nearly everyone ranks A above B — the exercise makes the answer almost embarrassing. Then the reveal: the market ranked them the other way. Product B commanded the headlines, the keynotes, the district pilots, and the valuations Product A's maker never approached — the exact opposite of the evidence ranking a graduate class produced in four minutes.

This is not a story about foolish buyers. It is a structural fact you will work inside for your entire career: **evidence accumulates slowly, and marketing doesn't wait.** Market visibility and evidence maturity are not just uncorrelated — they can run inverse, because the products with the most evidence have had the most years to disappoint, and the products with the least have had the most freedom to promise.

---

Start with the number that should reorganize how you read everything else. Stanford's SCALE Initiative analyzed more than 800 academic studies of AI in K-12 education and identified only about 20 that rigorously measure causal impact — studies designed to tell whether an AI tool *changed outcomes*, rather than describing usage, perceptions, or correlations (Stanford SCALE 2026). The repository has since passed 1,100 papers without the causal core growing proportionally.

The review's other findings matter as much as the ratio. By SCALE's census criteria, there are no high-quality causal studies of student AI use conducted in U.S. K-12 classrooms — the spine RCTs of this book come from Turkey (Bastani), the UK (LearnLM/Eedi), and a tutoring-provider context (Tutor CoPilot). Most studies measure short-term outcomes. Equity, wellbeing, and social development are nearly unstudied. And the tools with pedagogical guardrails show more promising outcomes than general-purpose chatbots — the field's most systematic evidence census independently corroborates this book's thesis. One epistemic note: the "no U.S. K-12 causal studies" claim is a single organization's census with explicit inclusion criteria; quote it with the criteria attached, not as a bare fact.

The thin-base conclusion does not rest on SCALE alone. A PRISMA-guided meta-review of 35 systematic reviews of generative AI in education reached the same verdict from the opposite direction: the *reviews themselves* are methodologically inconsistent — variable database selection, opaque search strategies, weak or absent quality appraisal — so the secondary literature inherits and amplifies the weaknesses of the primary (Zhang, Deng & Shadiev 2026). Learn the structure of this argument: when the primary-study census and the review-of-reviews converge on "thin and methodologically weak," the conclusion is robust to either source being wrong.

The misconception to surrender now: "800 papers means a well-studied field." Volume of publication is not volume of evidence. Roughly 780 of those papers are descriptive, perceptual, or correlational — valuable for design insight, useless for outcome claims. The gap between "much-studied" and "well-evidenced" is where most vendor copy lives.

---

The most load-bearing distinction in this chapter — arguably in the book — is that "the AI improved learning" can mean four different measurements, and they can disagree with each other in sign.

An **assisted endpoint** reports what the learner can do with the AI present. An **unassisted endpoint** reports what the learner can do after the AI is withdrawn. A **transfer endpoint** reports performance on novel material or contexts. A **retention endpoint** reports performance after time has passed. Across the entire field, this last column is essentially empty.

The Bastani RCT is the canonical demonstration that the first two endpoints can move in opposite directions in the same condition: +48% with the tool present, −17% without it (Bastani et al. 2025). Hold that sentence still until it stops sounding like a paradox. It means any evaluation that reports only assisted performance is *structurally incapable of detecting a crutch* — not unlikely to, incapable of. It also disposes of three metrics that dominate pilot reports: engagement, satisfaction, and usage minutes are not learning endpoints. They are product metrics that correlate with assisted performance and can anti-correlate with unassisted performance.

<!-- → [TABLE: Four-endpoint classification table — columns: Endpoint Type, Definition, Detects Crutch Effect?, Representative Source — rows: assisted, unassisted, transfer, retention — showing explicitly that assisted/satisfaction/engagement metrics cannot detect the Bastani-pattern harm, and that the retention column is empty across the field] -->

Two calibration notes. "Exploratory" on the LearnLM/Eedi transfer finding — +5.5 percentage points on a novel next-topic problem, 76.4% of AI messages approved with zero or minimal edits — is the authors' own precision label for a first-of-its-kind trial, unreplicated, run within one platform with a human in the loop. The field's best positive finding comes with that modesty label attached; learn to read both facts together. And even the field's good news lives in the leftmost columns. Kestin et al. (2025) found a research-based AI tutor outperforming in-class active learning in Harvard physics — strong on immediate unassisted post-tests, silent on retention and long-run transfer, because the intervention spanned about a week. Classifying a study's endpoints before reacting to its headline is the skill this chapter installs.

---

You need just enough effect-size fluency to avoid two opposite errors: dismissing small effects that matter, and trusting large effects from small, unrepresentative studies.

A standardized mean difference — Cohen's *d* or Hedges' *g*, where *g* is *d* with a small-sample correction — expresses a between-group difference in standard-deviation units. The WWC's improvement index translates this into expected percentile change for the median comparison student: an effect of about 0.25 ≈ +10 percentile points. And then the recalibration most of the field still hasn't absorbed: **Kraft's education-specific benchmarks**. Cohen's 0.2/0.5/0.8 labels were never derived from field-based education research, where 36% of RCT effect sizes on standardized achievement outcomes fall below 0.05. Kraft proposes, for this literature: below 0.05 small, 0.05–0.20 medium, above 0.20 large — always interpreted jointly with cost and scalability (Kraft 2020).

That recalibration flips the opening case. By Cohen's labels, the Cognitive Tutor's at-scale results look pathetic. By Kraft's, a modest positive effect demonstrated across dozens of schools over two decades is *more* evidentially impressive than a +0.8 from one sixty-person lab study — because effect sizes are functions of the study, not properties of the product. Researcher-designed proximal outcomes routinely run two to four times larger than standardized distal outcomes for the same intervention.

One more habit: distrust averages without spread. AI-in-education effects are heavily heterogeneous — moderated by domain structure, implementation quality, and population — so the moderator table is usually more informative than the headline mean. And the benchmark question is itself contested: some researchers argue for a 0.40 hinge below which interventions shouldn't impress you, a standard incompatible with Kraft's; the rebuttal position is that the implementation gap explains more than the hinge concedes. That benchmarks are arguments, not facts, is itself effect-size literacy.

---

A vendor product page is a design document wearing an evidence costume. The deconstruction method separates every sentence into three piles.

**Interaction design claims** are testable descriptions of what the product does: "it never gives direct answers; it asks guiding questions." Informative about intended experience design, verifiable the cheap way — by using the product. Real information; not outcome evidence.

**Outcome claims** are assertions about learning effects: "proven to accelerate mastery." These require causal evidence that, per the 20-in-800 state, usually does not exist for the product in question.

**Borrowed evidence** cites an adjacent product class's literature — LLM tutors borrowing the cognitive-tutor evidence, or any tutor borrowing Bloom's (1984) two-sigma claim.

Pre-bunk the two-sigma move now, because you will meet it in nearly every vendor deck of your career: Bloom's claim that one-on-one tutoring yields two standard deviations of improvement was based on small studies and has never replicated at that magnitude. VanLehn's (2011) review found human tutoring at roughly *d* ≈ 0.79 — substantial, not mythical — and intelligent tutoring systems close behind at ≈ 0.76. A vendor citing two-sigma is citing a number the field retired over a decade ago, borrowed from a product class the vendor doesn't sell.

The regulatory scaffold for tiering outcome claims is the **ESSA evidence framework**: Tier 1 (Strong — well-designed RCTs), Tier 2 (Moderate — quasi-experimental), Tier 3 (Promising — correlational with controls), Tier 4 (Demonstrates a Rationale — a logic model plus an evaluation underway). Two field facts turn the tiers from checkbox into literacy: most edtech products cluster at Tiers 3–4, because correlational designs are achievable on product timelines; and "ESSA-aligned" in marketing copy frequently means Tier 4 — *the company has a theory and intends to test it*. Why do RCTs sit at Tier 1? Randomization is the only design that severs the link between who gets the intervention and every other difference between groups. The two claim-autopsy questions that work in any hallway conversation: find the comparison group; ask what the percentage is a percentage of (Bergstrom & West 2020).

The misconception to retire: "the vendor cites a study, so the product is evidence-based." The cited study is routinely of a different product version, a different product class, internal and unpublished, or Tier 3–4 dressed as Tier 1–2. A citation's existence is not the claim's support. And hold the harder, fairer thought alongside it: a product can be simultaneously *well-designed by Chapter 3's scaffold patterns* and *unevidenced by this chapter's standards*. Khanmigo's public description — Socratic moves, no direct answers, teacher visibility — is genuinely scaffold-leaning design intent with, at this writing, no published causal evaluation at the Cognitive Tutor's maturity. Holding both judgments at once is the skill.

<!-- → [TABLE: Vendor-claim deconstruction of a fictional product page — columns: Claim (verbatim sentence), Category (interaction design / outcome / borrowed evidence), ESSA Tier the actual support earns, What it licenses — rows showing several claim types including a two-sigma citation, a satisfaction metric, an interaction design description, and an internal pilot result] -->

---

Now the field's most consequential unknown.

No rigorous longitudinal studies exist anywhere in the field on whether the crutch effect persists or fades with extended use, whether learners develop appropriate reliance or deepen dependency, or what multi-year AI-mediated learning does to expertise development. Bastani measures one term. LearnLM is exploratory. Kestin spans a week. The strongest statement the field can honestly make about year-four effects is "not yet known." This is not a routine "more research is needed" footnote: the decisions being made right now — curriculum architecture, assessment policy, what early-career practice looks like — are exactly the decisions longitudinal evidence would inform, and they are being made irreversibly in its absence.

What it costs to skip this reasoning: in spring 2024, Los Angeles Unified launched "Ed," an AI student advisor built by the startup AllHere, on a contract reported at roughly $6 million. Within about three months, AllHere's CEO had departed, most staff were furloughed, the company collapsed into insolvency, and a former employee publicly warned that the system's data handling did not match what was promised. No causal evaluation of Ed's learning impact ever existed; the second-largest U.S. district procured on demo quality and vision (The 74, EdWeek, LA Times, mid-2024 — figures "as reported"). Structurally, it is the opening case's error at institutional scale: ranking by market visibility instead of evidence.

The chapter's answer to all this uncertainty is a decision discipline, not a mood. For any proposed design decision, sort into three buckets.

**Decide on current evidence.** Causal direction established, cost of error low or symmetric. Example: requiring reasoning before help — supported by Bastani plus the self-explanation literature, near-zero downside.

**Pilot with measurement.** Evidence suggestive but unestablished, and a local pilot with an *unassisted* endpoint can carry the weight. Example: an AI feedback layer on essay drafts, with a pre/post unassisted writing measure against a matched section.

**Decline.** The evidence affirmatively warns — unrestricted answer-providing access during practice — or the risk is asymmetric and unmeasurable on pilot timescales: features whose main risk is long-run dependency, which the durability gap means you cannot test locally.

The bridge concept is **risk asymmetry**, and it keeps the third bucket honest rather than timid. "Absence of evidence of harm" and "evidence of absence of harm" are different things; the durability gap means long-run harm and long-run benefit are equally unevidenced. What breaks the tie: harm to skill development compounds and is hard to reverse; foregone convenience is cheap. When you cannot measure the harm on your timescale, the burden of proof flips to the feature. "Be careful" is not a position. Risk asymmetry is.

---

Translate the framework into a case.

Priya is an LX designer at a community-college system. A vice-chancellor forwards the product page for "Mentora," a conversational AI tutor, with the note: *"Board is excited. Thoughts by Friday?"* The page says: "Mentora never gives away answers — it coaches like the world's best tutors." "Built on the science of one-on-one tutoring: students with personal tutors perform two standard deviations better (Bloom, 1984)." "In pilot programs, students improved scores by 34%." "ESSA-aligned." "Loved by 9 out of 10 students."

She cannot run an RCT by Friday. Her deliverable is a calibrated reading.

First pass goes wrong instructively: she puts "never gives away answers" in the outcome-claim pile and nearly dismisses it as puffery. It isn't — it is an interaction design claim, checkable in an afternoon with a free trial and probe problems. She tests it. Mentora holds the line on direct requests but yields a full worked solution when asked to "check my answer" against a wrong answer — a leak impossible to learn from the page.

Second dead end: an hour hunting the "34%" study. It is an internal pilot summary with no comparison group and an unstated endpoint. Bergstrom and West's question — *34% compared to what, measured how?* — closes that lane: the claim is unanchored, which is worse than false.

The Bloom citation she now recognizes on sight: borrowed evidence, from a different product class, at a magnitude the field retired. VanLehn 2011: ≈ 0.79, not 2.0.

"ESSA-aligned": she emails the vendor asking which tier. The answer — "our logic model is informed by ESSA principles" — is Tier 4, translated. "Loved by 9 out of 10 students" is a perception measure: neither a learning endpoint nor evidence of anything beyond satisfaction with the assisted experience.

The Friday memo runs one page. Design intent: genuinely scaffold-leaning, with one documented leak. Outcome evidence: nothing that survives endpoint classification — every cited number is assisted, uncontrolled, or borrowed. Disposition: *pilot with measurement* — one course section, one semester, primary endpoint a proctored unassisted exam against a business-as-usual section, the "check my answer" leak raised as a contract condition. Not *decide* (no causal support), not *decline* (the design claims are real and the pilot is cheap and measurable on her timescale).

A product page is a blueprint review, not an inspection report — it tells you what the designers intended, never what the product does to learning.

The limit: the protocol reads claims, not products. And it is silent exactly where the field is silent. Had Mentora's main risk been long-run reliance, no one-semester pilot could resolve it — that is the durability gap, and the honest memo says so.

---

## Exercises

**Warm-up**

1. *(Recall — the 20-in-800)* Without consulting the text, explain in three sentences what the SCALE finding actually says — including what the 780+ papers that are not causal studies *are* good for, and what claim they cannot support. Then write the one-sentence version you would give to a vice-chancellor who just forwarded a vendor deck.

2. *(Recall — endpoints)* Three claims about one fictional AI tutor: (a) "Students using StatTutor scored 31% higher on in-app quizzes." (b) "In a randomized study, StatTutor users scored 0.12 SD higher on a proctored, no-AI final exam." (c) "94% of students said StatTutor helped them learn." For each: name the endpoint type, state whether it can detect a crutch, and say what decision — if any — it licenses.

**Application**

3. *(Apply — vendor-page autopsy)* Choose one real AI tutoring product's public page. Produce the three-column deconstruction — interaction design claim, outcome claim, or borrowed evidence — with each row tagged for the ESSA tier its actual visible support would earn. Flag the two-sigma move if present. One page plus 150 words.

4. *(Apply — effect-size translation)* Convert *g* = 0.04, 0.20, and 0.79 into improvement-index percentile estimates and Kraft-benchmark language. Then, given three hypothetical interventions — cheap and scalable, moderately expensive, boutique-expensive — assign each a *g* from your set and defend which you would fund and why. The defense must use Kraft, not Cohen.

5. *(Apply — endpoint audit)* Using the methods sections of Bastani et al. (2025) and Kestin et al. (2025), complete the four-endpoint table for each study — assisted, unassisted, transfer, retention — and write a 150-word "what this licenses" verdict per source. Then locate one vendor white paper and do the same. If the white paper has no unassisted endpoint, say what one measurement would supply it and roughly what it would cost.

**Synthesis**

6. *(Synthesize — three-bucket memo)* For a learning product you are designing or familiar with, bucket five proposed AI features into decide / pilot with measurement / decline, with one evidence citation or one named gap per decision. Write the risk-asymmetry argument out fully for at least one decline — not "be careful," but the specific asymmetry between the reversible and irreversible outcomes.

7. *(Synthesize — the interaction design claim)* The Mentora case shows that "never gives away answers" is an interaction design claim, not an outcome claim — verifiable directly. Design a two-hour protocol for verifying an AI tutor's interaction design claims using only a free trial, probe problems, and a note-taking rubric. Specify what you would test, what a passing result looks like, and what a documented leak looks like for at least three claim types.

**Challenge**

8. *(Challenge — the durability gap)* The chapter argues that the absence of longitudinal evidence justifies conservative defaults via risk asymmetry. Construct the strongest honest case that this reasoning is *too conservative* — that the burden-of-proof flip unfairly disadvantages real benefits that exist but cannot yet be demonstrated. Then state specifically what study design, with what results, would move a "decline" feature to "pilot" or "decide" without waiting for the five-year longitudinal evidence that may never be funded.

---

## LLM Exercise

*The prompt below refuses to work without your artifact, and makes you commit to classifications before revealing its own. This is a reasoning gate — the pattern formally described in Chapter 6, modeled here for the first time.*

Copy the following into the LLM of your choice.

---

You are my evidence-audit coach for AI-in-education product claims. Follow these rules exactly.

RULE 1 — REQUIRED INPUT. I must paste the actual text of a vendor product page, pilot report, or evidence page for an AI learning product. If I have not pasted one, your ONLY permitted response is to ask me for it. Do not demonstrate with an invented example. Do not proceed.

RULE 2 — I CLASSIFY FIRST. Present the claim-bearing sentences as a numbered list and require me to classify each as (a) interaction design claim, (b) outcome claim, or (c) borrowed evidence — one sentence of reasoning per claim. Do not reveal your own classification until I commit to mine in writing.

RULE 3 — GATED COMPARISON. Then compare classifications one claim at a time. Where we disagree, do not simply correct me: ask one question that exposes what I may have missed, and let me revise first.

RULE 4 — ENDPOINTS AND TIERS. For each outcome claim, require me to name the endpoint type (assisted / unassisted / transfer / retention) and the ESSA tier the visible support would earn. If the page doesn't say, the correct answer is "cannot tell" — push back if I guess.

RULE 5 — DISPOSITION. End by requiring me to write the three-bucket disposition (decide / pilot with an unassisted endpoint / decline) for the flagship feature, with the risk-asymmetry argument if I choose decline. Only then give your one-paragraph critique — including the strongest argument AGAINST my choice.

Never produce the finished analysis for me. Your job is to make my classification visible and contestable, not to replace it.

---

*Deliverable: the transcript plus a 100-word reflection on the one classification you revised and why. An analysis the AI produced for you is, by this chapter's own standards, an assisted endpoint.*
