---
schema_version: 1
id: SRC-0006
title: "Constrained inbox workflow with explicit review and recovery"
created: "2026-10-04"
updated: "2026-10-04"
tags: [agent-workflows, files, recovery, human-review]
original_url: "https://x.com/patio11/status/2095182879701512300"
original_url_aliases: []
canonical_url: "https://x.com/patio11/status/2095182879701512300"
author: "Patrick McKenzie"
published: "2026-09-02"
accessed: "2026-10-04"
language: en
access_status: full
capture_status: catalogued
related_practices: [PRAC-0006]
discovery: user_supplied
discovered_from: null
discussion_status: reviewed_accessible
---

# Constrained inbox workflow with explicit review and recovery

## Provenance and coverage
Read from the authorized bookmark collection in the signed-in browser. Main text and author continuation read. No parent or quote was displayed on the seed. Inspected accessible replies to the visible end and opened the truncated groktionary reply directly. Show probable spam exposed no additional visible material during the check. Exact direct-reply count was not tracked; author continuations and third-party replies are distinguished below. Ranking/hidden branches may omit replies.

## Source summary
McKenzie describes an inbox/unsorted folder whose contents an open coding agent reads, renames and organizes. Descriptive names and documented procedures make future work easier. Crucially, his follow-up clarifies that he manually nudges the open CLI periodically; this is not evidence of an implemented autonomous file watcher.

## Supporting evidence and limitations
Personal workflow anecdote, not a benchmark. Financial-admin examples illustrate file processing; this record does not extract financial or tax advice. An inbox directory alone does not enforce tool permissions or make all failure modes harmless. Proposed recovery and concurrency checks below remain untested.

## Discussion ledger
Signed-in review on 2026-10-04; accessible view exhausted, not an all-platform completeness claim.

| Contributor / relationship | URL | Attributed paraphrase |
| --- | --- | --- |
| Author continuation | https://x.com/patio11/status/2095183344661115133 | Replace opaque filenames with meaningful names and folders. |
| Author continuation | https://x.com/patio11/status/2095184005503041794 | The benefit includes reduced friction and a readable future directory tree. |
| Author continuation | https://x.com/patio11/status/2095184213792165998 | Save the procedure in Markdown for future sessions. |
| Author reply to polling question | https://x.com/patio11/status/2095280913961619770 | He manually prompts the running CLI every few minutes; an inotify implementation is a possibility, not what he currently describes using. |
| groktionary, reply read in full on its own page | https://x.com/groktionary/status/2095218445444886644 | Keep original files and prepare an unresolved-action list with a processing history for human follow-up. Legal implications of its wording were not evaluated. |
| Meet Anghan | https://x.com/AnghanMeet29/status/2095187582888079410 | Confident misfiling hides work; route uncertain decisions to a needs-me pile. |
| ercao | https://x.com/W8888888888888/status/2095359097029656616 | Review intended moves first and make changes recoverable. The reply suggests git mv; suitability depends on file sensitivity, size and storage. |
| mika | https://x.com/MichaelMakelko/status/2095189511898562641 | Reports double-filing with simultaneous PDF arrivals. This is a failure anecdote, not an established universal bug. |
| probe | https://x.com/promptprobe/status/2095188124481540527 | Keep the organizing rules in the folder. |
| Chaminda | https://x.com/chams_builds/status/2095266720277475407 | Suggests a narrow inbox as an agent boundary; the stronger claim that a bad filename is the worst possible outcome is not adopted. |

Excluded: generic praise, unrelated promotion, abuse and out-of-scope medical discussion. Other author posts demonstrate a financial-data task; no financial guidance was extracted. No additional contextual ancestor surface was observed. A future refresh can inspect newly visible branches; no pending truncated reply is used as evidence.

## Related material
A reply by shrikar84 (https://x.com/shrikar84/status/2102860800738353484) points to https://shrikar.dev/projects/sorted/ as a related local document tool. Linked site not reviewed or installed. Treat as a discovery, not an endorsement.

## Extracted practices
[PRAC-0006: Use a bounded agent inbox with review and recovery](../practices/PRAC-0006-agent-inbox.md), untested. The bookmark is retained because the post substantially describes a personal project/workflow example and sits at the boundary of coding-development scope.

## Editorial history
- 2026-10-04: Read source, author clarification and accessible discussion; separated manual prompting from proposed watcher automation.
