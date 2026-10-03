---
schema_version: 1
id: SRC-0005
title: "Record repository anti-patterns with alternatives and reasons"
created: "2026-10-04"
updated: "2026-10-04"
tags: [instructions, coding, review, maintenance]
original_url: "https://x.com/RaulJuncoV/status/2102379223898066947"
original_url_aliases: []
canonical_url: "https://x.com/RaulJuncoV/status/2102379223898066947"
author: "Raul Junco"
published: "2026-09-22"
accessed: "2026-10-04"
language: en
access_status: full
capture_status: catalogued
related_practices: [PRAC-0005]
discovery: user_supplied
discovered_from: null
discussion_status: reviewed_accessible
---

# Record repository anti-patterns with alternatives and reasons

## Provenance and coverage
Discovered in the user's authorized X bookmark review. Read in the signed-in browser. Main text read in full. No reply parent or quoted post was displayed. The accessible discussion reached its end after the author continuation and 17 reply/continuation posts were encountered; ranking and hidden branches can omit other replies. A truncated endorsement by unit0r was not used as independent evidence.

## Source summary
Junco proposes adding repository-specific rejected patterns to CLAUDE.md. Each entry should explain the unwanted approach, the preferred alternative, and why. His examples concern database calls in route handlers, modifying historical migrations, fallbacks hiding invalid state, and premature abstraction. These are examples of one repository's policies, not universally correct rules for every codebase.

## Supporting evidence and limitations
The post is practitioner advice without a controlled comparison. Repeated corrections may reveal useful rules but can also reflect a reviewer's preference. Instructions are probabilistic; mechanically checkable constraints can benefit from build checks. No local trial has run.

## Discussion ledger
All entries below are attributed paraphrases from the accessible seed discussion, reviewed 2026-10-04. Parent/quote surfaces: none observed. Exact distinct direct-reply count was not separately measured; the 17 encountered posts include author responses.

| Contributor | URL | Useful contribution |
| --- | --- | --- |
| Ben Mo | https://x.com/benmodev/status/2102428792212148467 | Editing an old migration can pass fresh-database tests while failing to update existing installations. |
| Dennis Silahcilar | https://x.com/dsilahcilar/status/2102421907312124396 | Enforce suitable rules in the build so violations become actionable errors. |
| Raul Junco | https://x.com/RaulJuncoV/status/2102564865374339272 | Agrees with deterministic enforcement. |
| Puneet Singh | https://x.com/iPuneetSingh/status/2102433980490674646 | Review rules when the codebase changes. |
| Maaz Khan | https://x.com/mmaazkhanhere/status/2102440474208555425 | An alternative and reason help apply a boundary to unfamiliar cases. |
| Serkut Yildirim | https://x.com/SerkutYILDIRIM/status/2102514464272871812 | Turn recurring review feedback into reusable instructions. |
| Raul Junco | https://x.com/RaulJuncoV/status/2102563695142330391 | Suggests a review comment repeated twice belongs in the instruction file. Treat the number as his heuristic. |
| Raul Junco | https://x.com/RaulJuncoV/status/2102564560549056979 | Explaining why helps the agent understand the boundary. |

Excluded: author newsletter promotion, generic agreement and duplicate endorsements; advertisements were not treated as discussion. No new useful posts appeared at the visible end. Resume only if refreshing later or examining omitted branches; the truncated endorsement is https://x.com/unit0r/status/2102389938440319118.

## Related material
This can complement design review and eval practices by retaining actual repository lessons. It does not replace tests, architecture review, or task-specific instructions.

## Extracted practices
[PRAC-0005: Maintain repository-specific anti-pattern rules](../practices/PRAC-0005-repository-anti-patterns.md), untested.

## Editorial history
- 2026-10-04: Catalogued main post and useful accessible replies. Original bookmark URL preserved.
