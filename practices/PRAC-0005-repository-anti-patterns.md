---
schema_version: 1
id: PRAC-0005
title: "Maintain repository-specific anti-pattern rules"
created: "2026-10-04"
updated: "2026-10-04"
tags: [instructions, coding, maintenance]
problem: "Maintain repository-specific anti-pattern rules"
status: untested
source_ids: [SRC-0005]
experiment_ids: []
last_reviewed: "2026-10-04"
---

# Maintain repository-specific anti-pattern rules

## Use when
Code review repeatedly corrects the same repository-specific choice.

## Avoid or adapt when
A rule is merely a preference, obsolete, conflicts with current architecture, or would impose inappropriate constraints on another repository. Avoid accumulating a long duplicate instruction file.

## Source claim
Junco recommends recording rejected patterns, preferred alternatives and reasons. Replies add freshness review and deterministic enforcement.

## Proposed procedure
1. Select a recurring, consequential correction from real work.
2. Write a short entry: scope, prohibited approach, preferred alternative, reason, and exception if needed.
3. Link relevant architecture or code examples instead of duplicating lengthy documentation.
4. For mechanically checkable rules, prefer an appropriate existing lint, build or test check; instructions explain the intent.
5. Review the rule when affected architecture changes. Remove duplication and retire stale rules.
6. Stop once the recurring issue is covered; do not invent a catalogue of hypothetical bans.

## Evaluation
On subsequent similar changes, record repeat violations, review effort and over-restriction. For migration rules, include an existing-installation upgrade case, not only a fresh database.

## Evidence and limitations
[Source and attributed replies](../sources/SRC-0005-repository-anti-patterns.md) provide practitioner suggestions and anecdotes. No local experiment has run. The procedure is an assistant adaptation, not a quotation or validated default.

## Change history
- 2026-10-04: Extracted as untested.
