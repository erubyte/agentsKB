---
schema_version: 1
id: SRC-0011
title: "Check duplicated instruction copies before changing a feature"
created: "2026-10-04"
updated: "2026-10-04"
tags: [coding,agent-instructions,consistency]
original_url: "https://x.com/Voxyz_ai/status/2106104334035435572"
original_url_aliases: []
canonical_url: null
author: "Vox"
published: "2026-10-02"
accessed: "2026-10-04"
language: en
access_status: partial
capture_status: catalogued
related_practices: []
discovery: user_supplied
discovered_from: null
discussion_status: reviewed_accessible
---

# Check duplicated instruction copies before changing a feature

## Provenance and coverage
Original bookmark URL preserved exactly: https://x.com/Voxyz_ai/status/2106104334035435572. This first-pass record captures the visible X post or bookmark preview. Reply trees, parent/quote chains, linked pages, and attached media are queued for phase two unless described below. No experiments have been run.

## Source summary
Vox recommends that an agent count how many times a rule is copied before changing a feature, then check whether those copies produce different results. The post continues into an image.

## Supporting evidence and limitations
The visible text states a consistency-check idea, but the rest of the post is in an unreviewed image and replies are queued. No outcome data is provided.

## Related material
Any linked guide, tool, or project is a lead from the post, not independently validated here. Reply and parent/quote review is deferred to phase two.

## Discussion review — 2026-10-04

### Conversation context and replies
The post is standalone and reports the author’s experience with Opus 5.5. It supplies an AGENTS.md checklist: map where feature logic and copied rules live; compare outputs on the same input; ask the user to resolve conflicts; isolate any semantic merge in its own commit; preserve behavior during refactoring with tests green; write tests before implementation when none exist; keep refactor tests unchanged except import paths; then add a guard test against reintroducing copies. The image illustrates one rule copied across checkout/cart/email code and differing totals.

X shows 8 replies. Inspected replies include:
- Morgan says asking which rule is correct prevents arbitrary choice between contradictory business rules ([reply](https://x.com/morgan_coding/status/2106113981064831170)).
- Hamza notes the final “implemented in one file” test is hardest to write ([reply](https://x.com/humzaakhalid/status/2106249484833521844)).
- Karan adds that shared functions can still yield inconsistent results if callers pass different values, and suggests testing checkout and receipt with the same order ([reply](https://x.com/karanjagtiani04/status/2106181312558375372)).
- Sael calls duplicate/ghost code difficult to debug ([reply](https://x.com/0xsael/status/2106108580730692074)).

### Coverage and limits
The main post, attached image, visible conversation and 8-reply count were reviewed. Four substantive replies are linked above; remaining replies were brief thanks or not surfaced in the captured view. No parent/quote chain or external linked source was apparent. Recommendations are source material, not yet adopted or tested.

### Resume queue
No further thread retrieval currently needed. Later synthesis should consider the caller-input counterexample and whether a “single file only” invariant is appropriate for this codebase.

## Extracted practices
No practice extracted in the ingestion pass. Candidate or resource classification is recorded in the bookmark triage log; practice extraction and validation belong to phase two.

## Editorial history
- 2026-10-04: Ingested as a first-pass bookmark record.
- 2026-10-04: Added signed-in source and discussion review; see coverage limits above.
