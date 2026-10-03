---
schema_version: 1
id: PRAC-0004
title: "Discover product failures before choosing eval metrics"
created: "2026-10-03"
updated: "2026-10-03"
tags: [evals, error-discovery, human-review]
problem: "Discover product failures before choosing eval metrics"
status: untested
source_ids: [SRC-0002, SRC-0003, SRC-0004]
experiment_ids: []
last_reviewed: "2026-10-03"
---

# Discover product failures before choosing eval metrics

## Use when
Starting or revising an AI product's evaluation process with representative traces available.

## Avoid or adapt when
If representative traces are missing, document that gap. Keep sensitive user data out of this public KB. A tool's suggested categories still need product judgment.

## Source claim
The [eval-skills README](../sources/SRC-0003-evals-skills.md) and [advanced evals article](../sources/SRC-0004-advanced-evals.md), found through [SRC-0002](../sources/SRC-0002-lenny-evals-discussion.md), recommend understanding failures before formalizing measurements.

## Proposed procedure
The following operational steps are assistant adaptations, not verbatim source instructions.

1. Select a varied sample of product traces.
2. Have a knowledgeable reviewer identify meaningful failures and explain the judgment.
3. Group observations into candidate failure modes; inspect further examples where unclear.
4. Choose which modes warrant repeatable checks.
5. Compare proposed checks against reviewed examples and revise mismatches before expanding automation.

## Evidence and limitations
Locally untested. Source recommendations and third-party anecdotes are not completed KB experiments. No claim of guaranteed benefit is made.

## Evaluation
Record whether trace review reveals important cases the initial metrics missed, along with review effort and disagreement. No local experiment or skill installation has occurred.

## Change history
- 2026-10-03: Extracted through discussion-aware intake. No local trial has run.
