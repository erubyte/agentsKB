---
schema_version: 1
id: EXP-0001
title: "Does a design benchmark plus bounded self-review improve a website?"
created: "2026-10-03"
updated: "2026-10-03"
tags: [web-design, prompting, self-review, evaluation]
practice_ids: [PRAC-0001]
status: planned
outcome: null
started: null
completed: null
---

# Design self-review comparison

**Planned only. No website has been built or evaluated for this experiment.**

## Question

Does the combined benchmark-and-review prompt produce a more useful, visually coherent website than the same brief without that addition, at an acceptable additional cost?

## Practice version

Target: [PRAC-0001](../practices/PRAC-0001-design-self-review.md), initial version dated 2026-10-03.

Before running, record the exact Git revision and prompt used. If the practice changes, this plan is not evidence for the revised procedure unless that version is actually tested.

## Task and conditions

Pending a real website task. Record before execution:

- Sanitized brief, audience, content, assets, and functional acceptance criteria.
- Tool, exact model/version when available, environment, and starting files.
- Desktop/mobile viewport sizes and required accessibility checks.
- Evaluator and whether they know which version received the intervention.
- Total budget and maximum permitted extra review time.

Use the same inputs and environment for both conditions. Keep sessions independent to avoid carrying feedback from one condition into the other.

## Comparison

A: base website brief, with normal completion and verification requirements.

B: the same base brief plus the reusable prompt in PRAC-0001, capped at three review rounds and the agreed time budget.

Save both final rendered outputs and relevant observations in an appropriate location. Publish only sanitized observations and non-sensitive artifacts in this public repo.

The comparison measures the combined intervention. A later trial can separate the award reference from the rubric and the extra revision time.

## Evaluation criteria

Agree on criteria before execution:

- Functional requirements: pass/fail for each requirement.
- Visual hierarchy: is the primary purpose and action clear?
- Typography and spacing: are they readable and consistent?
- Visual coherence: do components follow a deliberate design direction?
- Responsive behavior: does the content work at both chosen sizes?
- Accessibility: record concrete checks and failures, not a blanket claim.
- Effort: elapsed time, extra rounds, and cost if available.

For subjective dimensions, use a 1–5 rubric with notes: 1 means major problems, 3 means usable but uneven, 5 means consistently strong for this brief. Define specific examples for the chosen task before scoring. Avoid relying on the generating agent's self-score alone.

Success requires a meaningful improvement judged by the evaluator, no unacceptable functional/accessibility regression, and extra effort within the agreed budget. This exploratory result would still need replication.

Stop after three review rounds or the time limit. A failed or interrupted run is a valid observation and must be reported.

## Observations

Not run. Task, tool/model, budget, evaluator, and outputs are not yet selected. No scores or timing data exist.

## Decision

Pending execution. PRAC-0001 remains untested. Run when a suitable real task is available; this plan does not authorize spending money or starting an unrelated website project.
