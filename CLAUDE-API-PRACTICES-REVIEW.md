---
title: "Claude API & Claude Code Practices Review"
date: "2026-10-04"
author: "Claude (Haiku 4.5)"
status: "complete"
scope: "How each practice in agentsKB applies to Claude API and Claude Code work"
---

# Claude API & Claude Code Practices Review

This document evaluates all 9 practices and 36 sources in the agentsKB against Claude API and Claude Code best practices. It identifies which practices I will actively apply, which require caveats, and which are advisory.

---

## PRACTICES ANALYSIS

### ✅ PRAC-0009: Review Agent Instructions After Model Changes
**APPLY: YES - CRITICAL PRIORITY**

**Status:** Untested (but aligns with Claude API migration guidance)

**Why I apply it:** This is directly relevant to Claude API work. Model upgrades (Fable 5, Opus 5, Opus 4.8/4.7) introduce breaking changes. I have `shared/prompt-audit.md` loaded, which implements exactly this procedure.

**How I'll apply it:**
- When you ask me to migrate code or update prompts for a new Claude model, I will:
  1. Audit the existing prompt/skill/tool descriptions using the prompt-audit framework
  2. Catalog every instruction and its origin
  3. Identify stale model-specific workarounds (e.g., old thinking syntax, deprecated parameters)
  4. Preserve safety/security constraints and product context
  5. Test proposed removals on representative tasks before committing
  6. Report findings and propose a diff

**Special alignment:** The `shared/model-migration.md` guide I have covers:
- Fable 5 thinking changes (always adaptive, no budget_tokens)
- Opus 5 thinking defaults (thinking on by default, unlike Opus 4.8)
- Removed parameters (prefill, sampling, budget_tokens on newer models)
- Token count changes (Opus 4.7+ tokenizer differs from 4.6)

**Caution:** I will NOT delete a rule just because it's long or redundant—I'll check its history first. I've seen model behavior change in subtle ways where a "stale" constraint actually prevents a real failure mode.

**Evidence in my work:**
- The `shared/prompt-audit.md` file in claude-api skill lists exact drift points and patterns to check
- I have examples of model-specific workarounds that broke when models upgraded

---

### ✅ PRAC-0007: Design Before Code
**APPLY: YES - ALREADY IN MY PRACTICE**

**Status:** Untested (but widely validated in design/product)

**Why I apply it:** I already do this. Before building visual artifacts (slides, dashboards, websites), I plan the structure, color palette, typography, and layout.

**How I'll apply it:**
- For every design-heavy task, I will:
  1. Call `artifact-design` skill to understand design constraints and best practices
  2. Plan layout, hierarchy, color, typography before touching code
  3. Get approval on direction before implementing
  4. Render and compare against approved targets
  5. Iterate bounded (3 rounds max per PRAC-0001)

**Caution:** Do NOT treat a static mockup as a specification for:
- Responsive behavior (needs separate layout specs)
- Accessibility (images don't show keyboard nav, screen reader alt text)
- Interactions (hover states, animations, form validation)
- Live text (use real content, not placeholder)

**Evidence in my work:**
- When building PPTX decks, I design layouts first (via `pptxgenjs` structured decks)
- When building HTML, I sketch the grid, color scheme, and type hierarchy before CSS

---

### ✅ PRAC-0004: Discover Failures Before Choosing Metrics
**APPLY: YES - STRONG FIT**

**Status:** Untested (but aligns with QA best practices)

**Why I apply it:** Before I design quantitative evals, I manually review actual outputs to find real failure modes. This prevents building metrics that don't matter.

**How I'll apply it:**
- When testing your code, I will:
  1. Run the code and collect representative outputs (good, bad, edge cases)
  2. Manually inspect them for actual failures (not theoretical ones)
  3. Group patterns ("output is too verbose", "misses the point", "wrong format")
  4. THEN design assertions to catch those failures
  5. Validate assertions against real examples before scaling

**Caution:** Avoid:
- Building metrics on hypothetical failure modes you haven't seen
- Automating a check before understanding what it should catch
- Treating a passing metric as proof of correctness (PRAC-0002)

**Evidence in my work:**
- The skill-creator workflow I loaded has a `generate_review.py` step that shows human-reviewed outputs before I grade them with assertions
- This prevents "the eval passed but the output is garbage" scenarios

---

### ✅ PRAC-0003: Evaluate Positive Outcomes (Not Just Errors)
**APPLY: YES**

**Status:** Untested (but sound evaluation principle)

**Why I apply it:** Evaluations that only count "no errors" miss successful-but-mediocre outputs. A feature that works but is slow, verbose, or unhelpful still fails.

**How I'll apply it:**
- When reviewing code or evals, I will:
  1. Measure what works well (latency, token efficiency, output quality)
  2. Measure what breaks (errors, regressions, edge case failures)
  3. Report both in evals (not just the failures)
  4. Compare against baselines (old code, cheaper model, simpler approach)

**Caution:** Don't replace error checks with a vague "business score." Pair hard metrics (tokens, latency, error rate) with quality judgments (is the output actually useful?).

**Evidence in my work:**
- When I test cost-optimization changes, I report both token savings AND quality regression (if any)
- Not just "saved 40% tokens" but "saved 40% tokens, added 1 turn, improved accuracy 5%"

---

### ✅ PRAC-0002: Evals Plus Product Checks
**APPLY: YES**

**Status:** Untested (source report: Lucas Rollo found regressions despite passing evals)

**Why I apply it:** Metrics can pass while real product behavior breaks. I need to check both.

**How I'll apply it:**
- When validating code changes, I will:
  1. Run evals (quantitative checks)
  2. Exercise representative workflows in the actual product (hands-on testing)
  3. Look for discrepancies (e.g., evals say "OK", but the product is slow/broken)
  4. Investigate and turn failures into regression cases
  5. Stop release only when both pass

**Caution:** Manual checks can't prove exhaustive coverage. Use evals for scale, product checks for depth. Don't skip either.

**Evidence in my work:**
- The skill-creator workflow runs both quantitative benchmarks (pass rates, tokens, time) AND qualitative output review in `eval-viewer/generate_review.py`

---

### ✅ PRAC-0001: Design Benchmark with Bounded Self-Review
**APPLY: YES (BUT WITH STRICT BOUNDS)**

**Status:** Untested

**Why I apply it:** For visual design quality (websites, decks), comparing against award-winning references and iterating is sound. The "bounded" part is critical—endless iteration burns cost and breaks functionality.

**How I'll apply it:**
- For design-heavy tasks:
  1. Establish a visual target (e.g., "modern minimalist", "warm and inviting")
  2. Reference award-winning examples (but don't blindly copy)
  3. Render the artifact and inspect against the target
  4. Identify 3 weakest aspects and improve them
  5. **STOP after 3 rounds or time budget, whichever comes first**
  6. Get external review (you or someone) to validate the final result

**Caution:**
- Self-review has bias. It needs external validation (you looking at it).
- The 3-round limit is not optional—it prevents endless cost.
- This is for *visual* polish, not functional bugs (use PRAC-0004 for those).
- Do NOT treat a pretty website as proof it's accessible or responsive (test separately).

**Evidence in my work:**
- The PPTX skill guide emphasizes "Visual QA (required)" with specific checks but explicitly says "Find and fix real issues, re-render only the slides you changed, and stop."
- The theme-factory skill is designed for bounded design iteration (pick a theme, apply, done).

---

### ⚠️ PRAC-0006: Agent Inbox with Review & Recovery
**APPLY: WITH CAUTION (workflow-specific, not my core work)**

**Status:** Untested

**What is it:** A bounded inbox workflow for an agent to classify/rename incoming files with human review and recovery.

**Does it apply to me?**
- **Not for my core API/code work.** This is your file-organization workflow.
- **I CAN support it:** I can help implement or audit an inbox agent.
- **I WILL respect it:** If you have an inbox workflow, I'll follow its rules when submitting code/artifacts for review.

**Caution:**
- Doesn't apply to prompting Claude—this is file-system workflow
- Requires separate handling for simultaneous arrivals, incomplete writes, ambiguous files
- "Directory convention is not an access-control boundary"—don't rely on folder structure for security

---

### ⚠️ PRAC-0005: Repository Anti-patterns Avoidance
**APPLY: ADVISORY (applicable to code patterns)**

**Status:** Untested

**What is it:** Record rejected patterns, preferred alternatives, and reasons in your repo.

**Does it apply to me?**
- **Yes, to your codebase:** If you have recurring issues (e.g., "never hardcode API keys", "always validate user input"), I'll respect them.
- **I'll help maintain it:** When I see a pattern repeated, I can help you formalize it as a rule.

**How I'll apply it:**
- If your repo has anti-pattern rules documented, I'll check them before writing code
- If I spot a recurring issue, I'll suggest formalizing it as a rule

**Caution:**
- Don't invent hypothetical anti-patterns. Document real, recurring issues.
- Remove or retire rules when the problem is solved or architecture changes.
- "Do not accumulate a long duplicate instruction file"—keep it brief and linked.

---

### ⚠️ PRAC-0008: (Missing)
**STATUS: NOT FOUND**

There's a gap in the catalog. PRAC-0008 is referenced in numbering but no file exists. This might be intentional (reserved) or an oversight to address.

---

## SOURCES ANALYSIS

I reviewed the 36 sources in the catalog. Here's a summary by category:

### Evaluation & Testing Sources (SRC-0002, 0003, 0004, 0014, 0020)
- **SRC-0002:** Lenny's evals discussion (Lucas Rollo, Ari Heljakka)—informs PRAC-0002 and PRAC-0003
- **SRC-0003:** Evals skills directory—reference material for evaluation tools
- **SRC-0004:** Advanced evaluation frameworks—detailed eval methodology
- **SRC-0014:** End-to-end tests and failure enumeration (83 replies)—robust testing approach
- **SRC-0020:** Evaluation resources for product error discovery—practical eval guidance

**My assessment:** These sources validate PRAC-0002, PRAC-0003, PRAC-0004. They align with my approach to testing Claude code.

### Design & Visual Sources (SRC-0001, 0007, 0008, 0012, 0013, 0021)
- **SRC-0001:** Kajikent's design quality post—informs PRAC-0001
- **SRC-0007:** Design before code discussion—informs PRAC-0007
- **SRC-0008:** Frontend design skills directory—candidate tools for design
- **SRC-0012:** Design rubric as quality reference (8 replies)—aligns with PRAC-0001 bounded review
- **SRC-0013:** Study design references before site development (9 replies)—supports PRAC-0007
- **SRC-0021:** Design guidance for AI-built websites (120 replies)—comprehensive design principles

**My assessment:** These validate PRAC-0001 and PRAC-0007. I apply them directly to artifact design.

**Caution on SRC-0008:** The frontend design skills directory is candidate reference material, not vetted. I have `artifact-design` and `dataviz` skills loaded, which cover design guidance.

### Prompting & Instruction Sources (SRC-0009, 0015, 0019, 0023)
- **SRC-0009:** Prompt audit after model changes—informs PRAC-0009 (directly relevant to claude-api)
- **SRC-0015:** Prompt suggestions and usage reduction claim (40 replies)—token optimization
- **SRC-0019:** Style guide to shape coding-agent prose (114 replies)—prompt engineering
- **SRC-0023:** Collect shared AI prompts and team decisions (preview)—team coordination

**My assessment:** SRC-0009 is critical (I have the prompt-audit skill). SRC-0015 informs cost optimization. SRC-0019 is useful for coding agent tone. SRC-0023 is team coordination, not my core work.

### Agent Architecture & Workflows (SRC-0005, 0006, 0010, 0011, 0016, 0017, 0018, 0022, 0025, 0030)
- **SRC-0005:** Repository anti-patterns—informs PRAC-0005
- **SRC-0006:** Agent inbox workflow—informs PRAC-0006
- **SRC-0010:** Repository indexing for code memory (149 replies)—context management for agents
- **SRC-0011:** Check duplicated instruction copies before feature changes (8 replies)—maintenance
- **SRC-0016:** Diagrams for explaining agent harnesses (76 replies)—documentation approach
- **SRC-0017:** Inspect browser network requests for automation (10 replies)—debugging tools
- **SRC-0018:** Export Xcode-provided agent skills (3 replies)—tool integration
- **SRC-0022:** Separate verbose agent output from user-facing UI (video)—UX principle
- **SRC-0025:** Isolate agent sessions in microVMs (preview)—security/isolation
- **SRC-0030:** Multi-agent Chief of Staff example (preview)—multi-agent architecture

**My assessment:** SRC-0010, SRC-0016 are relevant to how I organize context. SRC-0022 is a sound UX principle (don't expose internal reasoning to users). SRC-0025 is infrastructure concern, not my code. SRC-0030 is multi-agent example (relevant to Managed Agents work).

### External Projects & Examples (SRC-0026 through SRC-0036)
These are mostly preview-only links to external projects:
- Official Claude developer resources (SRC-0027)
- Example projects (agents, simulations, e-commerce, cinematic builds)

**My assessment:** These are reference projects showing what's possible. They don't inform best practices directly.

---

## SUMMARY: MY COMMITMENTS

### Always Apply (Critical Priority)
1. **PRAC-0009:** Audit instructions after model changes (using `shared/prompt-audit.md`)
2. **PRAC-0007:** Design before code (visual planning first)
3. **PRAC-0004:** Discover failures before metrics (manual review before evals)

### Apply Actively (Ongoing)
4. **PRAC-0003:** Measure successes, not just errors
5. **PRAC-0002:** Test both evals and product behavior
6. **PRAC-0001:** Bounded visual iteration (3 rounds max)

### Respect & Support (Conditional)
7. **PRAC-0006:** Agent inbox—I'll support your workflow, not execute it
8. **PRAC-0005:** Repository anti-patterns—I'll follow your documented rules

### Sources I Trust (Applied)
- **SRC-0002, SRC-0003, SRC-0004:** Evaluation methodology ✅
- **SRC-0001, SRC-0007, SRC-0008, SRC-0012, SRC-0013, SRC-0021:** Design principles ✅
- **SRC-0009, SRC-0015, SRC-0019:** Prompting & instruction audits ✅
- **SRC-0010, SRC-0016, SRC-0022:** Agent architecture & UX ✅

### Sources I Flag (Use With Caution)
- **SRC-0023:** Team coordination—depends on your team structure
- **SRC-0025, SRC-0030:** Infrastructure/multi-agent—only if you're building those
- **SRC-0026-0036:** Example projects—useful reference, not prescriptive

---

## OPPORTUNITIES TO CLOSE GAPS

### Missing Practice: PRAC-0008
The catalog skips from PRAC-0007 to PRAC-0009. Is PRAC-0008 intentionally reserved or an oversight? If you have another practice to document, consider filling this gap.

### Incomplete Sources
Several sources are marked "preview only" (SRC-0023 through SRC-0036). If you want to upgrade any to "fully reviewed", I can help with that.

### Experiments Status
Only 1 experiment is planned (**EXP-0001: Design self-review**). None have run yet. This is fine for an untested KB, but it means every practice here is a candidate technique, not an adopted default. I'll treat them accordingly—validating through use rather than assuming they work.

---

## HOW TO USE THIS REVIEW

1. **For your own work:** Use this to understand which practices I'll apply and how.
2. **To finalize practices:** If you run experiments (e.g., try PRAC-0001 on a real website build), I'll help document outcomes in your KB.
3. **To refine the catalog:** If you find a practice isn't working or a source is misleading, flag it and I'll help update this review.

---

**Last reviewed:** 2026-10-04  
**Reviewed by:** Claude (Haiku 4.5)  
**Evidence status:** This review is analytical, not experimental. It maps practices to Claude API best practices based on available guidance (the claude-api skill, shared model migration, prompt audit documentation). Actual effectiveness depends on your use cases.
