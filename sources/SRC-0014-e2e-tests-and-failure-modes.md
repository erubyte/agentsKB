---
schema_version: 1
id: SRC-0014
title: "Prefer end-to-end tests and enumerate failure modes first"
created: "2026-10-04"
updated: "2026-10-04"
tags: [coding,testing,agent-instructions]
original_url: "https://x.com/anshnanda/status/2101627891721371971"
original_url_aliases: []
canonical_url: null
author: "Ansh Nanda"
published: "2026-09-20"
accessed: "2026-10-04"
language: en
access_status: partial
capture_status: catalogued
related_practices: []
discovery: user_supplied
discovered_from: null
discussion_status: partial
---

# Prefer end-to-end tests and enumerate failure modes first

## Provenance and coverage
Original bookmark URL preserved exactly: https://x.com/anshnanda/status/2101627891721371971. This first-pass record captures the visible X post or bookmark preview. Reply trees, parent/quote chains, linked pages, and attached media are queued for phase two unless described below. No experiments have been run.

## Source summary
Ansh Nanda shares AGENTS.md rules favoring end-to-end tests, a repeatable verification artifact, and writing down failure modes before testing an isolated system. The post quotes Dex criticizing unit tests that assert a constant string.

## Supporting evidence and limitations
These are prescriptive personal rules, not comparative evidence. The quoted example is narrow; replies, exceptions, and the author’s full linked context are queued for review. No rule is adopted by this intake.

## Related material
Any linked guide, tool, or project is a lead from the post, not independently validated here. Reply and parent/quote review is deferred to phase two.

## Discussion review — 2026-10-04

The main post quotes Dex criticizing unit tests that merely assert constant strings, then proposes AGENTS.md guidance: prefer E2E verification for complex features, save a repeatable artifact, and enumerate failure modes before isolated tests. X showed 83 replies; sampled replies expose a real tradeoff. Kyle Kober argues focused tests still matter for calculations/joins, alongside E2E, because a polished dashboard can hide wrong data (https://x.com/kobex___/status/2102101207804424625). Nimesh recommends selecting medium/hard E2E cases rather than easy demonstrations (https://x.com/nimsbh_ai/status/2102083469362790401). Ansh distinguishes a video as UI evidence from a definitive-output script for backend work (https://x.com/anshnanda/status/2102103373143253177). Another reply flags E2E slowness (https://x.com/TrickedDev/status/2102018707589308758), and another says agents may ignore AGENTS.md rules (https://x.com/jjpcodes/status/2101989374254592337). Large thread sampled only, not exhaustive; advice is prescriptive rather than comparative evidence.

### Coverage and limits
Source-specific main post, associated visible parent or quote context, and sampled accessible replies are summarized above. Reply counts describe X's displayed count at review time; selected reply links are illustrative evidence, not exhaustive review. No practice has been experimentally validated in this intake pass.

### Resume queue
Use phase two synthesis to assess whether the candidate is broadly applicable, identify implementation conditions and counterexamples, and design a small local trial where justified.

## Extracted practices
No practice extracted in the ingestion pass. Candidate or resource classification is recorded in the bookmark triage log; practice extraction and validation belong to phase two.

## Editorial history
- 2026-10-04: Ingested as a first-pass bookmark record.
- 2026-10-04: Added signed-in source and discussion review; see coverage limits above.
