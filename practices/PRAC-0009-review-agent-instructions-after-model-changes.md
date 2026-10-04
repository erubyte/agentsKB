---
schema_version: 1
id: PRAC-0009
title: "Review agent instructions after model changes"
created: "2026-10-04"
updated: "2026-10-04"
tags: [prompts, skills, maintenance, evaluation]
problem: "Agent instructions retain stale workarounds or conflicting rules after the model or project changes"
status: untested
source_ids: [SRC-0009]
experiment_ids: []
last_reviewed: "2026-10-04"
---

# Review agent instructions after model changes

## Use when
A team changes its agent model, observes that skills or prompts have accumulated rules, or finds contradictions among its instruction files.

## Avoid or adapt when
Do not treat a model upgrade or a shorter file as sufficient reason to delete instructions. Be especially cautious with safety/security constraints, incident-derived rules, product context, tool contracts, and instructions covering rare but consequential edge cases. Confirm the audit applies to the actual target model and files.

## Source claim
Peter Yang recommends running a prompt audit on skills for a newer model and reports finding redundancies ([SRC-0009](../sources/SRC-0009-prompt-audit-after-model-changes.md)). The linked upstream guide calls for a report and proposed diff, and says to preserve context and rules that protect against demonstrated failures. These are recommendations; neither the post nor sampled replies establish general effectiveness.

## Proposed procedure
1. After a model or project change, inventory the prompts, skills, tool descriptions, and agent configuration files actually in scope. Record the target model and relevant versions.
2. For each candidate rule, record what task or observed failure it addresses. Separate stale model-specific workarounds from product context, tool contracts, and requirements that still apply.
3. Produce a review report and a proposed diff. Do not delete a rule solely because it is long, duplicated, or flagged as redundant; check its history and whether a failure it guards against still matters.
4. Preserve safety and security requirements unless an authorized, evidence-based review establishes a safe replacement. An audit tool's suggestion alone is not that evidence.
5. Test proposed removals against representative tasks and relevant edge cases, changing one consequential rule at a time where practical. Keep a baseline and inspect outcomes, not just the model's claim that a rule is unnecessary.
6. Re-add a concise rule if the change regresses behavior, and record the tested model, tasks, and result. Stop when remaining candidates lack evidence for change or the review budget is reached.

## Evidence and limitations
The source is a practitioner recommendation. The linked guide gives a concrete audit workflow, but the audit itself was not run here and its effectiveness is unverified for this KB. Replies explicitly warn that an automated or model-assisted review may not know the history behind a constraint or surface the edge case it protects. The procedure above is an assistant adaptation and remains untested.

## Evaluation
For a bounded trial, compare the existing instructions with a small proposed change on the same representative tasks and edge cases. Track task success, regressions, unnecessary tool use, output constraints, and review effort. Restore a rule when a material regression appears; do not claim improvement from reduced line count alone. No experiment has been run.

## Change history
- 2026-10-04: Created as an untested practice from SRC-0009.
