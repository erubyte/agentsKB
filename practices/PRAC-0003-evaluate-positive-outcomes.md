---
schema_version: 1
id: PRAC-0003
title: "Evaluate positive outcomes as well as errors"
created: "2026-10-03"
updated: "2026-10-03"
tags: [evals, product-quality, business-outcomes]
problem: "Evaluate positive outcomes as well as errors"
status: untested
source_ids: [SRC-0002]
experiment_ids: []
last_reviewed: "2026-10-03"
---

# Evaluate positive outcomes as well as errors

## Use when
A product's evals reward avoiding mistakes but may not distinguish adequate output from useful task completion.

## Avoid or adapt when
Do not replace error checks with a vague business score. An automated judge is only as useful as the criteria and validation behind it.

## Source claim
[Ari Heljakka's reply](https://x.com/AriHeljakka/status/2102601678671216988) argues that minimizing errors can miss positive product value. See the [discussion record](../sources/SRC-0002-lenny-evals-discussion.md).

## Proposed procedure
The following operational steps are assistant adaptations, not verbatim source instructions.

1. Define the user's intended outcome alongside unacceptable failures.
2. Gather examples that are technically correct but unhelpful.
3. Ask a domain reviewer to distinguish acceptable and strong outcomes.
4. Add outcome-oriented criteria while retaining correctness and safety checks.
5. If using an automated judge, compare its judgments with human examples before relying on it.

## Evidence and limitations
Locally untested. Source recommendations and third-party anecdotes are not completed KB experiments. No claim of guaranteed benefit is made.

## Evaluation
Check whether the revised evaluation separates unhelpful-but-correct outputs from successful ones and agrees with domain reviewers. Validation steps here are proposed adaptations.

## Change history
- 2026-10-03: Extracted through discussion-aware intake. No local trial has run.
