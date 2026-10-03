# Record formats and validation contract

Schema version: 1. These rules apply to knowledge records, not ordinary documentation or templates.

Use YAML front matter followed by readable Markdown. Quote URLs and date strings. Use null for genuinely unknown scalar metadata and [] for empty lists. Avoid ambiguous placeholders in catalogued records.

## Shared fields

Every source, practice, experiment, and playbook requires:

| Field | Meaning |
| --- | --- |
| schema_version | Integer, currently 1 |
| id | Stable typed identifier |
| title | Human-readable, specific title |
| created | YYYY-MM-DD, date added |
| updated | YYYY-MM-DD, last substantive change |
| tags | Small list of searchable concepts |

Dates refer to editorial events unless a field explicitly says published or accessed. Do not infer a source's publication date from a URL identifier.

## Source fields

Required: original_url, original_url_aliases, canonical_url, author, published, accessed, language, access_status, capture_status, related_practices.

- original_url: exact first supplied source URL; immutable.
- original_url_aliases: other exact supplied URLs confirmed to identify the same source.
- canonical_url: verified normalized destination, or null.
- author and published: visible attribution/date, or null.
- accessed: most recent attempted access date.
- language: source language, not summary language; use unknown when unreadable.
- access_status: full, partial, or unavailable. Full refers to the main source, not all replies or external links.
- capture_status: captured, catalogued, duplicate, or discarded.
- related_practices: IDs; also provide clickable body links.

Required body sections: provenance and coverage; source summary; supporting evidence and limitations; related material; extracted practices; editorial history.

Record retrieval method and distinguish full main-post access from incomplete thread/video/image coverage. For unavailable sources, retain metadata that is actually known and explain the blocker; do not populate an invented summary.

## Practice fields

Required: problem, status, source_ids, experiment_ids, last_reviewed.

Status values: untested, promising, adopted, mixed, rejected, superseded.

Required body sections: use when; avoid or adapt when; source claim; proposed procedure; evidence and limitations; evaluation; change history.

Every externally derived practice must link at least one source. Original local ideas must explicitly say they are local proposals instead of implying outside evidence. Proposed prompts are adaptations unless verified as short quotations.

## Experiment fields

Required: practice_ids, status, outcome, started, completed.

- status: planned, running, or completed.
- outcome: null until completed; then helpful, mixed, no-benefit, or harmful.
- started and completed: null until the events occur.

Required body sections: question; practice version; task and conditions; comparison; evaluation criteria; observations; decision.

Record exact tool/model/version when known and say unknown otherwise. Criteria and time budget should be chosen before running. Link the tested practice revision or copy the exact procedure into the experiment. A completed experiment must contain observations and an explained outcome.

## Playbook fields

Required: status, practice_ids, experiment_ids, last_reviewed.

Status: draft, active, or superseded.

Required body sections: trigger; inputs; steps; stopping conditions; verification; evidence; change history.

An active playbook should be supported by repeated use, not just a source's persuasive wording.

## Inbox and catalogue

The inbox is intentionally simpler than source records: exact URL, capture date, optional reason, and eventual disposition. Move processed items to its processed section with a link to the source record. Keep blocked items visible with the next needed action.

CATALOG.md contains a row for each source and practice, plus links to experiments/playbooks when present. It must expose evidence status so users do not mistake an untested suggestion for an adopted practice.

## Validation before commit

1. All records have unique IDs and required front matter.
2. Every original URL survives byte-for-byte; canonicalization has not overwritten it.
3. IDs in relationships resolve, and relative Markdown links point to existing files.
4. Source-derived claims have nearby attribution and coverage limits.
5. Planned trials contain no fabricated outcomes.
6. Practice status is supported by linked evidence.
7. Dates, tags, and catalogue entries agree with the records.
8. The diff contains no accidental private data or unrelated changes.

These are currently manual editorial checks. A future checker may enforce structure and link integrity, but cannot certify truth, usefulness, or source faithfulness.
