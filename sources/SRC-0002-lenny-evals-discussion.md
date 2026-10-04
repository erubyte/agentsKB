---
schema_version: 1
id: SRC-0002
title: "Lenny Rachitsky: eval skills and discussion-derived cautions"
created: "2026-10-03"
updated: "2026-10-04"
tags: [evals, product-quality, discussion, skills]
original_url: "https://x.com/lennysan/status/2102464854594662480?s=20"
original_url_aliases: []
canonical_url: "https://x.com/lennysan/status/2102464854594662480"
author: "Lenny Rachitsky, @lennysan"
published: "2026-09-22"
accessed: "2026-10-04"
language: en
access_status: partial
capture_status: catalogued
related_practices: [PRAC-0002, PRAC-0003, PRAC-0004]
discovery: user_supplied
discovered_from: null
discussion_status: partial
---

# Eval skills and the surrounding discussion

## Provenance and coverage

**Exact submitted URL:** https://x.com/lennysan/status/2102464854594662480?s=20

Read the full seed text and its quote in the signed-in X view on 2026-10-04. The quoted context image was opened and read; it gives the error-discovery rationale. The external linked article was only partially available, and the eval-skills repository README was read earlier. The exact submitted URL and observed clean permalink are both preserved.

## Source summary

Lenny recommends an eval-skills project attributed to Hamel Husain and Shreya Shankar, claiming it can reduce time and mistakes. The post links to [the repository](https://github.com/ai-evals-course/evals-skills).

It **quotes**, rather than visibly replies to, [an earlier Lenny post](https://x.com/lennysan/status/2102422882341322779). That post introduces an article about discovering important AI product failures and describes reported company benefits from evals. Those company claims were not independently verified for this record.

## Supporting evidence and limitations

The seed is an endorsement, not a local test. Reply anecdotes below are useful cautions but unverified third-party reports. We did not install the recommended skills, run them, or evaluate their effectiveness.

Signed-in review exposed a ranked sample of replies: 19 distinct replies on the seed and 19 on the quoted post were read in the accessible view. The posts report 26 and 85 replies respectively, so this is partial coverage; ranking and hidden branches may omit others. Useful truncated text was expanded. The selected sorting mode was Relevant; no alternative sort was reviewed.

## Discussion graph and review ledger

| Surface | Observed relationship | Direct replies read | Coverage / stopping reason |
| --- | --- | --- | --- |
| [Seed](https://x.com/lennysan/status/2102464854594662480?s=20) | Quotes the earlier post; no reply parent displayed | 19 sampled of 26 shown | Partial: Relevant order; additional/hidden replies not exhaustively read |
| [Earlier post](https://x.com/lennysan/status/2102422882341322779) | Quoted context; no further parent or quote displayed | 19 sampled of 85 shown | Partial: Relevant order; additional/hidden replies not exhaustively read |

No true reply-parent chain was observed for this seed. No further ancestor should be invented from chronology.

### Retained tips and caveats

1. **Lucas Rollo (@RolloLucas)** — [exact reply URL](https://x.com/RolloLucas/status/2102506528800686357), under the seed. Describes a model upgrade that passed evals but reportedly caused customer-facing regressions. His takeaway is broader eval coverage plus intensive hands-on product use. The truncated reply was expanded and read fully. Extracted as [PRAC-0002](../practices/PRAC-0002-evals-and-product-use.md). A direct visit to inspect its nested branch timed out; nested replies were not reviewed.
2. **Ari Heljakka (@AriHeljakka)** — [exact reply URL](https://x.com/AriHeljakka/status/2102601678671216988), under the quoted post. Argues that teams can optimize for fewer errors while failing to measure positive business value. Extracted as [PRAC-0003](../practices/PRAC-0003-evaluate-positive-outcomes.md). Text read in full in the context view; nested branch not opened.
3. **Scott (@MossScottAaron)** — [reply](https://x.com/MossScottAaron/status/2102508204693348668), under the seed. Questions whether PMs can reasonably perform this work. Retained as an unresolved usability concern; the reply offers no method or evidence resolving it.

### Other replies reviewed

- [@unfairintern](https://x.com/unfairintern/status/2102518274214731848): adjacent monitoring promotion; no distinct eval practice extracted. Its embedded promotional video was not reviewed.
- [@ChanceKelch](https://x.com/ChanceKelch/status/2102432390480285864): anecdotal endorsement of using an eval system to test a new tool; insufficient detail for another practice.
- [@Thmsrnd](https://x.com/Thmsrnd/status/2102483059626897487): commentary about reply quality; no actionable eval technique.

4. **Ryan Gilpatric** — [reply](https://x.com/RyanGilpatric/status/2102504386752823776), under the seed. Supports starting error discovery with a free-text account of what went wrong, before forcing reviewers into overlapping categories.
5. **Mathias Heinke** — [reply](https://x.com/ares_mheinke/status/2102626535727636568), under the seed; translated from German by X. Notes the linked skills do not cover production monitoring or regression tests, so they are not a complete testing process.
6. **XLNC** — [reply and quoted context](https://x.com/XLNC_CO/status/2102588642036502963), under the seed. Claims LLM judge scores can show severity/leniency bias; this is an unverified warning and an outbound article was not reviewed.
7. **James Duke** — [reply](https://x.com/dukebiz/status/2102450803118161971), under the quoted post. Asks whether reported gains came from better prompts or a changed eval; no answer was visible in the reviewed sample.
8. **Mitchell Agoma** — [reply](https://x.com/AgomaMitchell/status/2103592374848926080), under the quoted post. Recommends inspecting the underlying eval cases and remaining failures, and keeping the harness fixed when comparing models or costs. His linked separate benchmark post reports a compute-limit effect; not independently verified in this pass.
9. **Director Bong Fan Account** — [reply](https://x.com/thecandykeynes/status/2103967144656679311), under the quoted post. Describes careful eval work as labor-intensive even if technically straightforward.
10. **Shokunin** — [reply](https://x.com/tetrisgm/status/2102435148235239441), under the quoted post. Asks whether practitioners define acceptance criteria and write tests by hand; question is unresolved here.
11. **Adam Gold** — [reply](https://x.com/AdamGolds/status/2104715158493057229), under the quoted post. Argues ordinary prompt evals may miss multi-step software-agent tasks and links to an article about time-pinned proxy fakes; article not yet reviewed.

The author clarification replying to a metric question is [here](https://x.com/lennysan/status/2103971678174986699); it links to Cursor's explanation of model routing rather than supplying independent evidence for the satisfaction metric. The metric was questioned in [the original reply](https://x.com/thecandykeynes/status/2103967354367488132). Company impact figures in Lenny's post remain source claims, not independently checked.

Selection is based on relevance and specificity, not engagement. Reply authors' statements are not attributed to Lenny.

## Related material

- [SRC-0003: eval-skills repository](SRC-0003-evals-skills.md), linked directly from the seed. README read.
- [SRC-0004: advanced evals article](SRC-0004-advanced-evals.md), discovered through the quoted post. Partial article text read.
- The article and README support [PRAC-0004](../practices/PRAC-0004-error-discovery-before-metrics.md), separately from the third-party reply tips.

## Resume queue

1. Sample remaining replies on the seed and quoted post; the accessible view was not exhausted.
2. Open Lucas's reply thread and Ari's nested branch if they expose useful replies.
3. Review Adam Gold's linked article about multi-step software-agent evals if relevant.
4. Finish the linked advanced-evals article and verify claims only against its accessible content.

No account access, exhaustive crawling, or future scheduled monitoring is claimed.

## Extracted practices

- [PRAC-0002: Pair evals with hands-on product checks](../practices/PRAC-0002-evals-and-product-use.md) — from Lucas's reply.
- [PRAC-0003: Evaluate positive outcomes, not only errors](../practices/PRAC-0003-evaluate-positive-outcomes.md) — from Ari's reply.
- [PRAC-0004: Discover failure modes before writing metrics](../practices/PRAC-0004-error-discovery-before-metrics.md) — from linked primary resources.

All three are locally untested.

## Editorial history

- 2026-10-03: Catalogued the user-supplied seed and linked resources; exact query string preserved.
- 2026-10-04: Revisited in signed-in X, sampled additional seed and quoted-post replies, read the quoted image, and recorded limitations/corrections. Main discussions remain partial.

