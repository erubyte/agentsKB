---
schema_version: 1
id: PRAC-0001
title: "Use a design benchmark with bounded self-review"
created: "2026-10-03"
updated: "2026-10-03"
tags: [web-design, prompting, self-review, quality-verification, claude-code, codex]
problem: "How do I improve the visual quality of an agent-built website?"
status: untested
source_ids: [SRC-0001]
experiment_ids: [EXP-0001]
last_reviewed: "2026-10-03"
---

# Use a design benchmark with bounded self-review

**Evidence status: untested.** This is a candidate technique, not an adopted default.

## Use when

An agent is building a website and the brief requires deliberate visual design. It must be possible to inspect a rendered result; a code-only review cannot substantiate visual quality.

## Avoid or adapt when

- The task is a small functional fix with an established design system.
- Brand constraints or accessibility requirements would conflict with a loosely interpreted visual reference.
- Time or cost does not justify repeated review.
- The agent cannot render or inspect the result. Record that limit and use a separate visual review.

Aspirational design language should not displace concrete user needs or functional acceptance criteria.

## Source claim

[Kajitani's post](../sources/SRC-0001-kajikent-design-quality.md) suggests naming prominent design awards as benchmarks and asking the agent to improve its own work repeatedly toward that standard.

Original URL: https://x.com/kajikent/status/2105095422448746573

The source does not prescribe the dimensions, three-round limit, or external evaluation below.

## Proposed procedure

The following is an assistant-authored operational adaptation:

1. Start with the actual site's audience, purpose, content, functional requirements, and existing visual constraints.
2. Specify the desired design direction. Treat award references as inspiration unless concrete criteria have been supplied and checked.
3. Render the site at agreed desktop and mobile sizes.
4. Review typography, spacing, hierarchy, consistency, responsive behavior, and accessibility. Use appropriate checks rather than claiming screenshots prove accessibility.
5. Identify the three weakest aspects supported by the inspection. Improve them without breaking the functional brief.
6. Re-render and review. Stop after at most three review rounds or the pre-agreed time budget, whichever comes first.
7. Report changes and unresolved limitations. Do not claim an actual award-level result from self-review alone.

### Reusable prompt adaptation

> Aim for a distinctive, polished website, using award-winning web design as a visual reference. Review the rendered result for typography, spacing, visual hierarchy, consistency, mobile layout, and accessibility.
>
> Identify the three weakest aspects, improve them, and repeat for up to three review rounds. Finish by explaining what improved and any remaining limitations.

This wording originated in the assistant's discussion of the bookmark. It is not a quotation or translation of the source.

## Evidence and limitations

- One external recommendation: SRC-0001.
- No completed local experiments.
- No evidence that naming awards alone produces improvement.
- The adaptation combines a reference, rubric, and revision loop; a successful combined trial would not establish which element helped.
- Extra rounds may add cost, regress functionality, or produce cosmetic churn.
- The same agent may be a biased evaluator of its own work.

## Evaluation

[EXP-0001](../experiments/EXP-0001-design-self-review.md) proposes a baseline comparison on a real website brief. It is planned and has no results.

Promote to promising only after an observed benefit. Adoption requires repeated useful results in the practice's intended scope, with acceptable cost.

## Change history

- 2026-10-03: Extracted from SRC-0001. Added a bounded adaptation and planned comparison; status remains untested.
