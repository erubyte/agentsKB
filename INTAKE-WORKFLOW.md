# AgentsKB Tweet-to-Practice Pipeline

Workflow for submitting favorited tweets, reviewing them, and adding them to your agentsKB.

## Overview

1. You paste tweet URL
2. I fetch and analyze the tweet
3. I review against existing practices and Claude best practices
4. I propose new practice (PRAC-X), new source (SRC-X), or both
5. You approve or request changes
6. I create the files
7. You commit to your agentsKB repo

## Step 1: Submit Tweet URL

You paste a link like: https://x.com/username/status/123456789

I'll handle fetching the content, reading threads, and gathering context.

## Step 2: My Review Process

For each tweet, I will:

### A. Analyze the content
- Read the main tweet
- Follow reply threads if relevant
- Identify the core claim/practice
- Note the evidence status

### B. Check for duplicates
- Search existing PRAC-XXXX files (9 practices)
- Search existing SRC-XXXX files (36 sources)
- Determine if this expands, contradicts, or duplicates existing content

### C. Evaluate against Claude best practices
- Cross-reference with claude-api skill guidance
- Check against shared model migration / prompt audit / cost optimization docs
- Flag if the tweet conflicts with current best practices

### D. Assess evidence quality
- Author credibility (who wrote it?)
- Sample size (is this validated or speculative?)
- Consensus (does your KB or Claude docs support it?)

## Step 3: Propose Extraction

I'll present a proposal:

```
Tweet Analysis
==============

Author: [name/handle]
Content: [summary]
Evidence: [untested/validated/contradicts-existing]

Recommendation:
- [ ] New Practice (PRAC-XXXX): [title]
- [ ] New Source (SRC-XXXX): [title]
- [ ] Update to existing PRAC-XX
- [ ] Not recommended (reason)

Conflicts/Duplicates:
- [List any existing practices it relates to]

Claude API Alignment:
- [How it relates to current Claude guidance]

Proposed metadata:
- Problem: [what problem does this solve?]
- Status: untested
- Source IDs: [which tweets/sources support this]
- Tags: [relevant tags]
```

## Step 4: You Review & Approve

You review the proposal and either:
- Approve as-is
- Request changes (modify title, problem statement, tags, etc.)
- Reject (I won't create files)

## Step 5: I Create Files

Once approved, I create:

**If new practice (PRAC-XXXX):**
- File: `practices/PRAC-XXXX-[slug].md`
- Format: Full practice file with Use When, Avoid, Source Claim, Proposed Procedure, Evidence, Evaluation sections
- Status: untested (unless you provide validation data)

**If new source (SRC-XXXX):**
- File: `sources/SRC-XXXX-[slug].md`
- Format: Source metadata with URL, access level, content summary, and attribution

**If updating existing practice:**
- Update the PRAC file with new information from the tweet
- Add new source reference
- Update last_reviewed date

## Step 6: You Commit

You review the generated files, commit to your agentsKB repo:

```bash
git add practices/PRAC-XXXX.md sources/SRC-XXXX.md (if applicable)
git commit -m "Add PRAC-XXXX: [title]

- Source: [tweet URL]
- Problem: [what it solves]
- Status: untested"
git push
```

## File Numbering

- Practices: Next available PRAC number (currently 9, so start at 0010)
- Sources: Next available SRC number (currently 36, so start at 0037)

## Important Rules

- No duplicates without evidence they're distinct
- Flag conflicts explicitly (don't silently contradict existing practices)
- Mark new practices as "untested" unless you validate them immediately
- Preserve all source attribution and URLs
- If a tweet is part of a thread, fetch the full context
- If evidence contradicts Claude API best practices, I'll flag it clearly

## Frequency & Workflow

You can submit tweets at any time. For each:
1. Paste URL in our chat
2. I analyze and propose (takes a few minutes)
3. You approve/request changes (you decide when)
4. I create files (instant)
5. You commit when ready

No batch processing. One tweet at a time. (Matches your interaction style preference.)

## Status

This workflow is permanent and codified. Whenever you paste a tweet URL, I follow this process automatically.

If you want to adjust the workflow, tell me and I'll update this document.

---

**Last updated:** 2026-10-04
**Approved by:** [user]
**Next step:** You paste the first tweet URL when ready
