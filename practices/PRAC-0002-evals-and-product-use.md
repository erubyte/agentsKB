---
schema_version: 1
id: PRAC-0002
title: "Pair evals with hands-on product checks"
created: "2026-10-03"
updated: "2026-10-03"
tags: [evals, regression-testing, product-quality]
problem: "Pair evals with hands-on product checks"
status: untested
source_ids: [SRC-0002]
experiment_ids: []
last_reviewed: "2026-10-03"
---

# Pair evals with hands-on product checks

## Use when
Changing the model or behavior of an AI product, especially when passing tests are being used as the release signal.

## Avoid or adapt when
Match review effort to impact. An anecdote does not prove the eval system was the only cause, and manual checks cannot establish exhaustive coverage.

## Source claim
[Lucas Rollo's reply](https://x.com/RolloLucas/status/2102506528800686357) reports regressions after a model upgrade despite passing evals. He advocates broader evals and direct product use. See the [discussion record](../sources/SRC-0002-lenny-evals-discussion.md).

## Proposed procedure
The following operational steps are assistant adaptations, not verbatim source instructions.

1. Identify important customer workflows and known failure modes.
2. Run existing evals and inspect what they do not cover.
3. Exercise representative workflows in the product itself.
4. Investigate discrepancies and turn confirmed failures into regression cases.
5. Stop the release review when pre-agreed checks are complete; treat unresolved material regressions according to the project's release criteria.

## Evidence and limitations
Locally untested. Source recommendations and third-party anecdotes are not completed KB experiments. No claim of guaranteed benefit is made.

## Evaluation
On a future change, record failures found by evals versus hands-on use, severity, and extra review time. No experiment is currently scheduled.

## Change history
- 2026-10-03: Extracted through discussion-aware intake. No local trial has run.
