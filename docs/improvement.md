# Iterative improvement plan

## Goals

Improve both the advice and the system used to find it. More records are valuable only if they help real tasks. Initial success means one saved idea is retrieved, tried, and evaluated.

No recurring automation is installed by this plan. Review sessions happen when requested or performed by the maintainer.

## First cycle

1. Catalogue the first supplied bookmark with preserved provenance.
2. Extract one actionable practice and mark it untested.
3. Prepare a comparison on a real website task.
4. Run it when a suitable task and budget exist.
5. Record whether the technique improved the result and at what cost.
6. Adjust the practice's scope; keep it untested until actual observations exist.

Current state: steps 1–3 are represented in the repository; the trial has not run.

The next intake milestone is ten user-supplied bookmarks, at most three promising techniques selected for trials, and at least one completed application. This is a proposed target, not a claim that ten links are available.

## Lightweight weekly review

Suggested budget: 15–30 minutes; process up to five inbox items rather than trying to clear the backlog.

- Pick items relevant to current work.
- Discard or merge duplicates while retaining their URLs.
- Choose one technique to try.
- Revisit any practice used since the last review.
- Note one retrieval or maintenance problem.

If the inbox grows, prioritize relevance and discard low-value items. Do not automatically expand ingestion capacity before understanding why existing material is unused.

## Monthly review

Review adopted practices, conflicting evidence, and tool-sensitive material. Recheck source availability for practices likely to be used soon. General principles can be reviewed less often than exact product instructions.

Look for unused practices, overlapping records, sprawling tags, and missing evidence. Consolidate only when the mechanism and scope match. Keep IDs, source URLs, and incoming links intact.

Inspect system friction: how long does it take to save, catalogue, and retrieve a relevant practice? Record changes to the KB itself in CHANGELOG.md with the problem, change, and next check.

## Evidence transitions

| Status | Meaning and transition rule |
| --- | --- |
| untested | No completed local trial. Default for extracted advice. |
| promising | At least one useful local result, linked with its limits. |
| adopted | Repeated useful results across at least two relevant tasks, with acceptable tradeoffs and no unresolved major failure in its stated scope. This is a local working standard, not scientific proof. |
| mixed | Conflicting or highly context-dependent outcomes. Document the conditions. |
| rejected | Available local evidence shows no useful benefit or unacceptable cost for the intended scope. Preserve why. |
| superseded | A newer practice replaces this one. Retain history and link the replacement. |

Transitions are reversible. An adopted practice may become mixed when new evidence contradicts it. A rejected practice can be reconsidered after a relevant model or tool change, with a new experiment.

Source popularity does not trigger promotion. Repeated self-ratings by the generating agent do not independently validate quality.

## Experiments that produce useful evidence

Prefer small comparisons on real work. Define success before running. Include the cost of extra iterations, not only output appearance.

For design prompts, compare the same brief with and without the intervention. Use independent sessions, the same assets, a bounded budget, and a rubric chosen in advance. Where possible, have the evaluator assess results without knowing which prompt produced them.

Separate the effects of multiple changes when it matters. If a benchmark, rubric, and review loop are introduced together, a positive result validates the bundle only. A later experiment can compare benchmark-only, review-only, and combined variants.

Record failures and confounders, including uneven starting conditions, model changes, different assets, or subjective preference. Repeat useful results on another task before adopting them.

## Measures worth tracking

Begin with a short narrative review; add numbers only when enough usage exists.

| Measure | Why it matters |
| --- | --- |
| Practices actually used in recent tasks | Shows whether the KB affects work |
| Completed trials with usable observations | Shows learning, not just intake |
| Retrieval time and failed searches | Reveals index or taxonomy problems |
| Benefit versus added time/cost | Prevents elaborate rituals with little value |
| Contradictions and stale instructions resolved | Shows maintenance quality |
| URL/provenance completeness | Preserves traceability |

Bookmark count and summary count are intake measures, not success measures. Do not invent baselines; record the first actual measurements before setting targets.

## Staged implementation roadmap

### Stage 1 — Manual foundation (implemented)

Markdown records, templates, catalogue, agent rules, first source, untested practice, and planned experiment. Validate editorial quality through use.

### Stage 2 — Structural checks (proposed)

Add a small local validator after repeatable manual errors appear. Check required fields, allowed statuses, unique IDs, internal links, and URL preservation across edits. It must not imply that a syntactically valid claim is true.

Acceptance: deliberate malformed examples fail; current records pass; running the checker needs no paid service. Keep output actionable.

### Stage 3 — Assisted intake (initial agent workflow implemented)

The user's request to automate discussion review brought this stage forward. The repo-local catalogue-bookmark skill now defines automatic context and reply review during intake, exercised on SRC-0002. Further ingestion tooling remains proposed. The workflow preserves original URLs, deduplicates, reports access coverage, and produces linked records. It depends on an assistant with browsing access; it is not an unattended scraper.

Acceptance: inaccessible sources are recorded honestly; duplicates retain their supplied URLs; source claims and adaptations stay separate. Review generated changes before accepting them.

### Stage 4 — Better retrieval (conditional)

Improve tags or the catalogue first. Consider a generated index or semantic search only after recording recurring failed searches.

Acceptance: evaluate against actual user queries with known relevant records. Preserve Markdown as the source of truth and make indexes rebuildable.

### Stage 5 — Reusable operating guidance (conditional)

Promote adopted practices into playbooks or tool-specific reusable guidance. Keep provenance links and versioned source practices. Include only broadly applicable adopted rules in default agent instructions.

Acceptance: the guidance helps a fresh task without importing unrelated instructions or unsupported claims.

## Change protocol

For each system change, record: the observed problem, proposed change, expected benefit, how it will be checked, and rollback approach. Make one coherent change at a time when practical.

Schema changes require migration instructions. Preserve IDs and original URLs, update all affected relationships, and recheck internal links. Revert an unsuccessful system change through a new Git commit so history remains intact.
