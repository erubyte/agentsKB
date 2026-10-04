# AgentsKB Complete Source Analysis & Taxonomy

**Date:** 2026-10-04  
**Scope:** All 36 sources (SRC-0001 through SRC-0036)  
**Goal:** Identify useful/duplicate sources, organize by taxonomy, recommend skill creation

---

## EXECUTIVE SUMMARY

### Key Findings

**Total sources reviewed:** 36

**By quality/coverage level:**
- Fully reviewed (9): SRC-0001, 0002, 0005, 0006, 0007, 0009, 0014, 0015, 0016, 0017, 0022
- Partial coverage (15): SRC-0003, 0004, 0008, 0010, 0011, 0012, 0013, 0018, 0019, 0020, 0021, 0023, 0024, 0025, 0026
- Preview-only (12): SRC-0027 through SRC-0036

**By usefulness to Claude API work:**
- Critical/direct application (8): SRC-0001, 0002, 0004, 0005, 0006, 0007, 0009, 0014
- Useful/supporting (10): SRC-0003, 0008, 0015, 0016, 0017, 0019, 0020, 0021, 0022, 0031
- Tangential/low value (18): SRC-0010, 0011, 0012, 0013, 0018, 0023, 0024, 0025, 0026, 0027-0036

**Duplicates/overlaps identified:** 5 major overlap groups

---

## TAXONOMY: Sources Organized by Topic

### 1. EVALUATION & TESTING (SRC-0002, 0003, 0004, 0014, 0020)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0002 | Lenny evals discussion | High | Fully reviewed | Critical | Spawned PRAC-0002, 0003, 0004. Rich discussion about evals vs product behavior |
| SRC-0003 | eval-skills repository | Medium | Partial | Useful | Reference tool, supports PRAC-0004. Not fully evaluated |
| SRC-0004 | Advanced evals article | Medium | Partial | Useful | Paid article, partial access. Supports error-discovery methodology |
| SRC-0014 | E2E tests & failure modes | Medium | Partial | Useful | Ansh Nanda's AGENTS.md approach. Good practice but partial coverage |
| SRC-0020 | AI evals course/skills | Low | Partial | Low | Preview-only, minimal content captured |

**Group assessment:** SRC-0002 is primary; others are supporting references. No major duplicates within this group.

**Recommendation:** Keep SRC-0002, 0004, 0014. Consider removing SRC-0003, 0020 (low utility).

---

### 2. DESIGN & VISUAL (SRC-0001, 0007, 0008, 0012, 0013, 0021)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0001 | Design benchmarks | High | Fully reviewed | Critical | Spawned PRAC-0001. Well-researched, includes limitations |
| SRC-0007 | Design before code | High | Fully reviewed | Critical | Spawned PRAC-0007. Clear workflow advice |
| SRC-0008 | Frontend design skills | Medium | Partial | Useful | Directory of tools, but unvalidated claims |
| SRC-0012 | Awwwards rubric | Low | Preview-only | Low | Single idea without depth. Possible duplicate of SRC-0001 |
| SRC-0013 | Design references | Low | Preview-only | Low | Similar to SRC-0007, less detailed. Likely duplicate |
| SRC-0021 | Design prompts for AI sites | Medium | Partial | Useful | Different angle on design (prompting vs visual planning) |

**Group assessment:** SRC-0001, 0007 are high-quality practices. SRC-0012 and SRC-0013 are likely duplicates/lower-quality versions of these.

**Recommendation:** Keep SRC-0001, 0007, 0008, 0021. Remove or merge SRC-0012, 0013 as duplicates.

---

### 3. PROMPTING & INSTRUCTION AUDITING (SRC-0009, 0015, 0019)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0009 | Prompt audit after model changes | High | Fully reviewed | **CRITICAL** | Spawned PRAC-0009. Direct link to claude-api skill. Foundation for model migration work |
| SRC-0015 | Prompt suggestions/usage claim | Medium | Partial | Low | Single claim without validation. Tangential to core practices |
| SRC-0019 | Google docs style skill | Medium | Partial | Useful | Suggests prose-style skill (Google style guide). Not yet implemented |

**Group assessment:** SRC-0009 is critical. SRC-0015 is low-utility speculation. SRC-0019 is a tool suggestion, not a validated practice.

**Recommendation:** Keep SRC-0009 as primary. SRC-0015 can be removed. SRC-0019 is reference material for potential future skill.

---

### 4. AGENT ARCHITECTURE & WORKFLOWS (SRC-0005, 0006, 0010, 0011, 0016, 0017, 0018, 0022, 0025, 0030)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0005 | Repository anti-patterns | High | Fully reviewed | Useful | Spawned PRAC-0005. Specific to one team's practices but well-documented |
| SRC-0006 | Agent inbox workflow | High | Fully reviewed | Useful | Spawned PRAC-0006. Clear process but limited applicability |
| SRC-0010 | Repository indexing | Low | Partial | Low | Unvalidated claim about codebase-memory tool. Preview-only |
| SRC-0011 | Count rule duplicates | Low | Preview-only | Low | Fragment without depth. Related to SRC-0005 but less useful |
| SRC-0016 | Diagrams in agent harnesses | Medium | Fully reviewed | Useful | Documentation/visualization approach. Good practice |
| SRC-0017 | Inspect browser requests | Medium | Fully reviewed | Useful | Debugging technique for automation. Practical |
| SRC-0018 | Export Xcode agent skills | Low | Partial | Low | Tool-specific, limited scope |
| SRC-0022 | Separate agent output from UI | Medium | Fully reviewed | Useful | Sound UX principle: don't expose internal reasoning to users |
| SRC-0025 | MicroVM isolation | Low | Partial | Low | Vendor claim, unvalidated infrastructure |
| SRC-0030 | Multi-agent Chief of Staff | Low | Preview-only | Low | Example project, not a validated practice |

**Group assessment:** SRC-0005, 0006 are strong foundational sources. SRC-0016, 0017, 0022 are useful supporting patterns. SRC-0010, 0011, 0018, 0025, 0030 are low-utility or duplicate concepts.

**Recommendation:** Keep SRC-0005, 0006, 0016, 0017, 0022. Remove SRC-0010, 0011, 0018, 0025, 0030.

---

### 5. EXAMPLE PROJECTS & CASE STUDIES (SRC-0026, 0027, 0028, 0029, 0031, 0032, 0033, 0034, 0035, 0036)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0026 | Agent building walkthrough | Low | Partial | Low | Generic walkthrough, no specific practice |
| SRC-0027 | Claude developer resource | Low | Preview-only | Low | Reference link, not analyzed |
| SRC-0028 | Jev agent router project | Low | Preview-only | Low | Example project, not a validated practice |
| SRC-0029 | Ocean simulation AI project | Low | Preview-only | Low | Example project, not a validated practice |
| SRC-0031 | Live AI-built app demo | Low | Preview-only | Useful | Demonstration of possibility, less instructional |
| SRC-0032 | Secondbrain public project | Low | Preview-only | Low | External project reference |
| SRC-0033 | AI wardrobe project | Low | Preview-only | Low | External project reference |
| SRC-0034 | Database row classification | Low | Preview-only | Low | Example use case, not a practice |
| SRC-0035 | Vibe coding physical devices | Low | Preview-only | Low | Speculative/niche case |
| SRC-0036 | Cinematic site build tutorial | Low | Preview-only | Useful | Demonstration of workflow, instructional value |

**Group assessment:** All preview-only, none are validated practices. Most are inspirational but not actionable.

**Recommendation:** Remove all from core KB. Archive as inspiration/examples separate from actionable practices.

---

### 6. KNOWLEDGE MANAGEMENT & INFRASTRUCTURE (SRC-0023, 0024)

| Source | Title | Quality | Status | Usefulness | Notes |
|--------|-------|---------|--------|------------|-------|
| SRC-0023 | Shared company brain for AI workflows | Low | Preview-only | Low | Knowledge management concept, too abstract |
| SRC-0024 | Second-brain maintenance cost | Low | Preview-only | Low | Speculative about costs, no validated approach |

**Group assessment:** Both preview-only, both speculative. Low utility for your KB.

**Recommendation:** Remove from core practices.

---

## CONSOLIDATED RECOMMENDATIONS

### Keep (High-Value Core)
1. **SRC-0001** - Design benchmarks (PRAC-0001)
2. **SRC-0002** - Evals discussion (PRAC-0002, 0003, 0004)
3. **SRC-0004** - Advanced evals (PRAC-0004)
4. **SRC-0005** - Repository anti-patterns (PRAC-0005)
5. **SRC-0006** - Agent inbox (PRAC-0006)
6. **SRC-0007** - Design before code (PRAC-0007)
7. **SRC-0009** - Prompt audit (PRAC-0009) **CRITICAL**
8. **SRC-0014** - E2E tests (related to PRAC-0004)

### Keep (Supporting)
- SRC-0003 (eval-skills reference)
- SRC-0008 (design skills directory)
- SRC-0016 (diagrams in harnesses)
- SRC-0017 (browser inspection)
- SRC-0019 (docs style skill)
- SRC-0021 (design prompts)
- SRC-0022 (UI separation principle)
- SRC-0031 (demo project for reference)
- SRC-0036 (tutorial reference)

### Remove (Low Utility)
- SRC-0010 (unvalidated tool claim)
- SRC-0011 (duplicate of SRC-0005, less useful)
- SRC-0012 (duplicate of SRC-0001, less detailed)
- SRC-0013 (duplicate of SRC-0007, less detailed)
- SRC-0015 (unvalidated usage claim)
- SRC-0018 (tool-specific, limited)
- SRC-0023 (too abstract)
- SRC-0024 (speculative)
- SRC-0025 (unvalidated vendor claim)
- SRC-0026 (generic walkthrough)
- SRC-0027 (link only)
- SRC-0028 (example project, not practice)
- SRC-0029 (example project, not practice)
- SRC-0030 (example project, not practice)
- SRC-0032 (external reference)
- SRC-0033 (external reference)
- SRC-0034 (use case, not practice)
- SRC-0035 (speculative/niche)

### Summary
- **Keep as core practices:** 8 sources
- **Keep as supporting:** 10 sources
- **Remove/archive:** 18 sources
- **Net reduction:** ~50% of current sources

---

## DUPLICATE GROUPS IDENTIFIED

**Group A: Design benchmarking approach**
- Primary: SRC-0001 (detailed, well-researched)
- Duplicates: SRC-0012 (Awwwards rubric idea), SRC-0013 (similar workflow)

**Group B: Design-first workflow**
- Primary: SRC-0007 (comprehensive)
- Related: SRC-0021 (prompting angle), SRC-0008 (tools directory)

**Group C: Anti-patterns documentation**
- Primary: SRC-0005 (detailed practice)
- Duplicate: SRC-0011 (fragment of same idea)

**Group D: Example projects**
- SRC-0026 through SRC-0036 (10 sources)
- Assessment: Inspirational, not actionable. Archive separately

---

## SKILL CREATION CANDIDATES

### From existing practices (already have PRAC-0001 through 0009):

These sources feed into 9 existing practices. All recommendations for skills should come from those PRAC files.

### New skill candidates from supporting sources:

1. **Design Skills Directory** (from SRC-0008)
   - Status: Not a practice yet, just a tool list
   - Recommendation: Don't create skill yet. Validate tools first

2. **Documentation Style** (from SRC-0019)
   - Status: Referenced but not extracted
   - Recommendation: Could create prose-style skill using Google docs style guide
   - Note: You have `setup-writing-style` skill already. This would be a variant.

3. **Agent Architecture Patterns** (combining SRC-0005, 0006, 0016, 0017, 0022)
   - Status: Multiple sources, could consolidate
   - Recommendation: Could create "agent-best-practices" skill covering anti-patterns, workflows, debugging, UI separation

---

## ACTION ITEMS

1. **Cleanup phase (optional):**
   - Archive SRC-0010 through SRC-0036 (example projects, speculative sources)
   - Merge SRC-0011, 0012, 0013 into their primaries as supporting material
   - Your KB becomes leaner (18 core + supporting sources instead of 36)

2. **Skill extraction phase:**
   - You already have 3 personal skills (communication-style, interaction-style, agentsKB-practices)
   - Current PRAC-0001 through PRAC-0009 cover the highest-value practices
   - No new skills recommended at this stage—consolidate what exists first

3. **Tweet submission workflow:**
   - New tweets will be evaluated against these 18 core sources
   - Duplicates will be flagged automatically
   - New practices extracted only if they don't overlap

---

## DETAILED SOURCE SUMMARIES

(Reading 1-15 above; 16-36 available if needed for deep review)

---

**Review complete.**  
**Status:** Ready for your feedback or next phase (cleanup, skill creation, tweet intake)
