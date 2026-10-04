# AgentsKB: Agent Task Guide

**Read this file whenever a user asks you to:**
- Review a tweet for Claude skills
- Evaluate new sources
- Extract practices
- Manage the knowledge base

---

## Task: Review and Catalog a Tweet

**User says:** "Review this tweet for Claude skills" or "Check out this tweet"

### Step 1: Fetch and Understand the Tweet

1. Get the tweet URL/text from the user
2. Read the full tweet and any replies
3. Understand the main claim and context

### Step 2: Assess Against Existing Knowledge

Check the tweet against:
- **Existing sources** (18 active in `sources/`)
- **Existing practices** (9 in `practices/`)
- **Existing skills** (in `.agents/skills/`)

Ask:
- Is this new, or a repeat of SRC-0001 through SRC-0036?
- Does it validate an existing practice?
- Does it contradict a practice?
- Is it a duplicate of something already catalogued?

### Step 3: Decide the Action

#### If it's a duplicate or low-value:
```
❌ Don't add it. Explain why the existing source is better.
   Suggest the user reference the existing one instead.
```

#### If it's a new, high-quality source:
```
✅ Create a new source file:

1. Generate next SRC ID (check /sources/ for highest number)
2. Create: sources/SRC-XXXX-short-title.md
3. Use the SOURCE TEMPLATE (see below)
4. Include:
   - Full tweet text
   - Author and URL
   - Summary of the claim
   - Discussion/evidence from replies
   - Limitations or caveats
   - Related existing sources
```

#### If it validates or improves an existing practice:
```
✅ Update the related practice file:

1. Find the practice in practices/PRAC-000X-*.md
2. Update the summary or add new evidence
3. Refresh the "last_reviewed" date
4. Document what the tweet added
```

#### If it suggests a new skill should be created:
```
⚠️ Don't create the skill immediately. Instead:

1. Add it as a source (SRC-XXXX)
2. Create a practice (PRAC-XXXX) if it's validated
3. Document why a skill should be created
4. Flag for future skill-creation work
```

---

## Source Template

Use this structure for new sources:

```markdown
---
schema_version: 1
id: SRC-XXXX
title: "One-line summary of the claim"
created: "YYYY-MM-DD"
updated: "YYYY-MM-DD"
tags: [relevant, tags, here]
original_url: "https://x.com/..."
canonical_url: "https://x.com/..."
author: "Author Name"
published: "YYYY-MM-DD"
accessed: "YYYY-MM-DD"
language: en
access_status: full  # or partial
capture_status: catalogued
related_practices: [PRAC-0001]  # if any
discovery: user_supplied
discussion_status: reviewed_accessible
---

# Source Title

## Summary
One paragraph explaining what the source claims and why it matters.

## Evidence and Limitations
What was actually observed. What wasn't checked. Assumptions made.

## Discussion Ledger
Table of important replies:
| Contributor | URL | Useful contribution |
| --- | --- | --- |

## Related Material
Links to other sources, practices, or references.

## Extracted Practices
If this source spawns a practice:
[PRAC-XXXX: Practice title](../practices/PRAC-XXXX-*.md)

## Editorial History
- YYYY-MM-DD: Catalogued and reviewed.
```

---

## Practice Template

Use this structure for new practices extracted from sources:

```markdown
---
schema_version: 1
id: PRAC-XXXX
title: "Clear name of the practice"
created: "YYYY-MM-DD"
updated: "YYYY-MM-DD"
tags: [relevant, tags]
problem: "What problem does this solve?"
status: untested  # or validated
source_ids: [SRC-0001, SRC-0005]
experiment_ids: []
last_reviewed: "YYYY-MM-DD"
---

# Practice Title

## Use when
[Specific situations where this applies]

## Avoid or adapt when
[Cases where this doesn't apply]

## Source claim
[What the original source said]

## Proposed procedure
[Step-by-step how to apply this]

## Evaluation
[How to measure if it's working]

## Evidence and limitations
[What we know and don't know]

## Change history
- YYYY-MM-DD: Created from SRC-XXXX
```

---

## Workflow Decision Tree

```
User provides a tweet
  ↓
Is it Claude-related or AI engineering best practice?
  ├─ No → ❌ Politely decline. Out of scope.
  └─ Yes ↓
  
Does it match an existing source closely?
  ├─ Yes, exact duplicate → ❌ Reference existing source
  ├─ Yes, similar but different angle → 📝 Note the relationship, maybe add to related material
  └─ No ↓

Is it a validated claim with evidence?
  ├─ No (speculation, opinion, marketing) → ❓ Add as low-confidence source if novel
  └─ Yes ↓

Create SRC-XXXX file
  ↓
Does it suggest a practice?
  ├─ Yes → Extract as PRAC-YYYY
  └─ No ↓

Does it suggest a skill?
  ├─ Yes → Document in the source as a note for future work
  └─ No ↓

✅ Commit new source and practice to repo
```

---

## Current State Reference

**Active Sources:** 18 (SRC-0001 through SRC-0036, except archived)
- Kept: SRC-0001, 0002, 0004, 0005, 0006, 0007, 0009, 0014 (core)
- Kept: SRC-0003, 0008, 0015, 0016, 0017, 0019, 0020, 0021, 0022, 0031 (supporting)
- See `SOURCE-ANALYSIS.md` for full assessment

**Active Practices:** 9 (PRAC-0001 through PRAC-0009)
- PRAC-0001: Design self-review
- PRAC-0002 through 0004: Evals practices
- PRAC-0005: Repository anti-patterns
- PRAC-0006: Agent inbox workflow
- PRAC-0007: Design before code
- PRAC-0009: Review instructions after model changes (CRITICAL)

**Deployed Skills:** 3 (all in `.agents/skills/`)
- agent-architecture-patterns
- choose-design-skills
- documentation-style

**Archived Sources:** 19 (see `sources/archive/`)
- Moved for being duplicates, low-value, or preview-only
- See `CLEANUP-PLAN.md` for rationale

---

## Quick Checklist: Review a Tweet

- [ ] Get full tweet text and context
- [ ] Check for duplicates in existing sources
- [ ] Assess quality: is this validated or speculative?
- [ ] Decide: source? practice? skill? reference?
- [ ] Create SRC-XXXX file if new
- [ ] Extract PRAC-YYYY if suggests a practice
- [ ] Update related files if it connects to existing knowledge
- [ ] Commit with clear message
- [ ] Push to GitHub

---

## Files to Know

```
/AGENT-GUIDE.md              ← You are here. Read this first.
/SOURCE-ANALYSIS.md          ← Taxonomy and assessment of all sources
/INTAKE-WORKFLOW.md          ← Original tweet-to-practice pipeline
/CLEANUP-PLAN.md             ← Why certain sources were archived
/sources/                    ← All source files (18 active, 19 archived)
/practices/                  ← All practice files (9 total)
/.agents/skills/             ← Deployed skills (3)
/docs/EVALUATION-REPORT.md   ← Results from skill testing
```

---

## When in Doubt

1. Check `SOURCE-ANALYSIS.md` for the taxonomy
2. Look at existing sources (SRC-0001, etc.) for examples of format
3. Compare against `INTAKE-WORKFLOW.md` for the full process
4. Ask: "Is this genuinely new, or better than what we have?"
5. If genuinely new and high-quality, create the source
6. If speculative or low-value, save it for future reference but don't add

---

**Last Updated:** 2026-10-04  
**Version:** 1.0
