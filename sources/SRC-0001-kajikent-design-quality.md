---
schema_version: 1
id: SRC-0001
title: "Kento Kajitani: design benchmarks and iterative self-review"
created: "2026-10-03"
updated: "2026-10-03"
tags: [web-design, prompting, self-review, claude-code, codex]
original_url: "https://x.com/kajikent/status/2105095422448746573"
original_url_aliases: []
canonical_url: null
author: "Kento Kajitani (梶谷健人), @kajikent"
published: "2026-09-30"
accessed: "2026-10-03"
language: ja
access_status: full
capture_status: catalogued
related_practices: [PRAC-0001]
discovery: user_supplied
discovered_from: null
discussion_status: reviewed_accessible
---

# Design benchmarks and iterative self-review

## Provenance and coverage

**Original URL:** https://x.com/kajikent/status/2105095422448746573

User supplied this exact bookmark. The main post and two visible author follow-ups were read through the browser's rendered accessibility text on 2026-10-03. The ordinary web fetch returned HTTP 403; the browser successfully exposed the post.

The page displayed the author as 梶谷健人 (@kajikent) and the publication date as September 30, 2026. The source is Japanese; the English account below is a paraphrase, not a verbatim translation.

Coverage is full for the main post. This does not mean every reply, linked website, or possible media asset was inspected. The initial public capture omitted a truncated third-party reply; the signed-in review below supersedes that coverage limit.

## Source summary

Kajitani recommends adding a design-quality target and a self-review instruction when asking Claude Code or Codex to create a polished website. The suggested benchmark refers to Awwwards, the Webby Awards, and FWA. The agent is asked to keep evaluating and improving its own work toward that standard.

The extractable mechanism is a combination of an aspirational reference and iterative self-assessment. The post does not define a measurable rubric or a stopping limit.

## Supporting evidence and limitations

This is advice from a social post, not a controlled comparison. The captured text offers no baseline results, measured improvement, exact model/version, or reproducible evaluation.

In a follow-up, the author links his own service but explicitly says he did not directly use this particular technique for it. The service therefore should not be treated as demonstrated evidence for this exact prompt.

Naming awards does not establish that the agent knows or follows their actual judging criteria. The KB has not verified the criteria for those awards. A self-assessed claim of award-level quality is not independent validation.

## Related material

- [Author's clarification](https://x.com/kajikent/status/2105102110115479781): explains that the awards are intended as a high standard, using an analogy to refining a performance until it could win a major competition.
- [Author's service follow-up](https://x.com/kajikent/status/2105138484981973214): promotes a service made using related techniques while stating this exact technique was not directly used. The linked service itself was not inspected for this record.

These are context links, not additional user-supplied bookmarks or independently catalogued practices.

## Extracted practices

[PRAC-0001 — Use a design benchmark with bounded self-review](../practices/PRAC-0001-design-self-review.md)

The bounded loop, concrete quality dimensions, and evaluation plan are assistant-proposed adaptations. They must not be attributed to Kajitani or described as tested.

## Editorial history

- 2026-10-03: Catalogued the supplied bookmark from the browser reading in this conversation. Preserved the exact URL, separated author follow-ups, and linked one untested practice.

## Signed-in discussion review — 2026-10-03

The signed-in Relevant view exposed 54 distinct post IDs including the seed (53 reply/context posts). Scrolled to the end of ordinary replies and expanded the probable-spam control; no additional posts appeared. Read the full text of substantive truncated tips via their direct permalinks. No parent or quoted post was displayed for the seed. This is accessible-view coverage, not a guarantee that deleted, hidden, or differently ranked replies were retrieved. Short reactions and repeated endorsements were not promoted to practices.

### Retained tips

- [@tonsoku](https://x.com/tonsoku/status/2105357025127567361): proposes one relevant award benchmark, two or three iterations, and a fresh chat or different AI judging the finished output. This is posed as a hypothesis, not a test result. Its parent is the seed; its visible author response was also read.
- [Author response](https://x.com/kajikent/status/2105428238495580478): endorses separate AI review and reports using different reviewers for different perspectives.
- [@koso_koyomi](https://x.com/koso_koyomi/status/2105207804156113189): reports runaway revisions in a different task and recommends a two-round cap. [@lliu54827](https://x.com/lliu54827/status/2105420047799992758) similarly reports stabilizing self-review with a three-round cap. These are anecdotes, not token-cost measurements.
- [@johnroodepic](https://x.com/johnroodepic/status/2105106191705841744): says visual review must inspect a rendered page. The separate claim that models already know award rubrics remains unverified.
- [@gypis07](https://x.com/gypis07/status/2105673456767615307): asks whether reference screenshots and viewports remain fixed across iterations, a useful comparison-control question.
- [@Rachel_hkz](https://x.com/Rachel_hkz/status/2105569467644481891): recommends defining the audience and next action, and checking real Safari/mobile rendering. Direct reply text was read fully; no child replies were displayed.
- [@adomanSendai](https://x.com/adomanSendai/status/2105125356411945463): emphasizes mobile readability and a clear conversion path.
- [@kawasan_wfh](https://x.com/kawasan_wfh/status/2105138892269924534): warns that claims of completion can occur without an actual verification format. Direct text read fully; no child replies displayed.
- [@akari_worlds](https://x.com/akari_worlds/status/2105119031229657340): suggests an explicit weighted rubric. The numerical award weights were not verified, so they are not adopted as official criteria.

Browser-provided English translations were used for this refresh. These external comments refine PRAC-0001 without validating it locally. The linked promotional service remains outside the technique's evidence.

### Coverage limits

Not every low-value truncated endorsement or nested reaction was expanded. The substantive candidate replies above were inspected. Future refreshes can check new replies or alternative sorting; no material unresolved tip identified in this pass is required before applying the bounded practice experimentally.

- 2026-10-03: Refreshed from signed-in discussion; replaced the earlier truncated-tip limitation with attributed findings.
