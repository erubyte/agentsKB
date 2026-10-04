---
schema_version: 1
id: PRAC-0007
title: "Agree on a visual target before building"
created: "2026-10-04"
updated: "2026-10-04"
tags: [web-design, mockups, review]
problem: "Align website design intent before implementation"
status: untested
source_ids: [SRC-0007]
experiment_ids: []
last_reviewed: "2026-10-04"
---

# Agree on a visual target before building

## Use when
A website's visual hierarchy matters or a redesign has constraints that are hard to express only in prose.

## Avoid or adapt when
A small change is already clear and mockups would delay it. Do not treat a static image as a specification for responsive behavior, accessibility, interactions, or working text controls.

## Source claim
The source recommends reviewing a generated mockup before implementation and comparing the rendered page against it afterward. One reply warns against copying pixels without checking the browser result; another notes the process may be too elaborate for some tasks.

## Proposed procedure
1. Write down audience, intended action, content, constraints and what must remain working.
2. For suitable tasks, create one or more visual directions and review them before coding.
3. Approve a target, then separately specify responsive layouts, semantics, interactions, empty/error/loading states and accessibility requirements.
4. Implement with real text and controls; keep generated imagery as assets.
5. Compare rendered screenshots at relevant sizes, then test keyboard use, links and forms.
6. Stop when key differences and functional checks are resolved or explicitly accepted.

## Evidence and limitations
[Seed post](../sources/SRC-0007-design-before-code.md) is a practitioner workflow, without measured comparison. Claimed time savings are not validated. This practice is untested locally.

## Evaluation
Compare a mockup-first task with a suitable baseline. Record review/implementation time, visual changes after browser rendering, functional/accessibility issues caught, and rework. Do not infer efficiency from one anecdote.

## Change history
- 2026-10-04: Extracted as untested from a partially reviewed thread.
