---
schema_version: 1
id: PRAC-0006
title: "Use a bounded agent inbox with review and recovery"
created: "2026-10-04"
updated: "2026-10-04"
tags: [agent-workflows, files, human-review]
problem: "Use a bounded agent inbox with review and recovery"
status: untested
source_ids: [SRC-0006]
experiment_ids: []
last_reviewed: "2026-10-04"
---

# Use a bounded agent inbox with review and recovery

## Use when
An agent repeatedly classifies or renames incoming project files using explicit rules.

## Avoid or adapt when
Files require specialist judgment, permissions cannot be constrained, or mistakes cannot be recovered. A directory convention is not an access-control boundary.

## Source claim
The author uses a folder with a manually prompted CLI agent; replies suggest retaining originals, surfacing ambiguity and planning recoverable moves.

## Proposed procedure
1. Define accepted inputs, permitted destinations and naming rules in a small local document.
2. Start with a small copied batch and an explicit manual trigger.
3. Generate proposed moves and route uncertain items to a human-review queue.
4. Review the plan, execute only permitted changes and retain an original-to-new-path log plus recoverable originals.
5. Verify content preservation and absence of collisions or duplicates.
6. Before adding a watcher, separately design handling for incomplete writes, simultaneous arrivals and repeated events. These are engineering adaptations, not implemented features from the tweet.
7. Stop on an unexpected file, ambiguous classification or failed verification and report it.

## Evaluation
Try a nonsensitive fixture batch with ambiguous names, duplicate events and simultaneous arrivals. Measure correct filing, unresolved cases, lost/overwritten files and time spent undoing mistakes. No trial has been performed.

## Evidence and limitations
[Source and attributed replies](../sources/SRC-0006-agent-inbox-workflow.md) provide practitioner suggestions and anecdotes. No local experiment has run. The procedure is an assistant adaptation, not a quotation or validated default.

## Change history
- 2026-10-04: Extracted as untested.
