---
schema_version: 1
id: SRC-0018
title: "Export Xcode-provided agent skills"
created: "2026-10-04"
updated: "2026-10-04"
tags: [coding,agent-skills,xcode]
original_url: "https://x.com/sarunw/status/2100902849873940502"
original_url_aliases: []
canonical_url: null
author: "Sarun W."
published: "2026-09-18"
accessed: "2026-10-04"
language: en
access_status: partial
capture_status: catalogued
related_practices: []
discovery: user_supplied
discovered_from: null
discussion_status: partial
---

# Export Xcode-provided agent skills

## Provenance and coverage
Original bookmark URL preserved exactly: https://x.com/sarunw/status/2100902849873940502. This first-pass record captures the visible X post or bookmark preview. Reply trees, parent/quote chains, linked pages, and attached media are queued for phase two unless described below. No experiments have been run.

## Source summary
Sarun W. says Xcode 27 includes skills for current development practices and APIs, and that they can be exported for use outside Xcode with a command.

## Supporting evidence and limitations
The command image and current Xcode documentation were not checked. Version and portability claims remain as stated by the post.

## Related material
Any linked guide, tool, or project is a lead from the post, not independently validated here. Reply and parent/quote review is deferred to phase two.

## Discussion review — 2026-10-04

The post image shows the command xcrun agent skills export --output-dir ~/Downloads/xcode-skills. The linked article https://sarunw.com/posts/export-xcode-agent-skills/ explains export to Markdown skill directories and cautions users to inspect skills before adding them; some depend on Xcode-only tools. It reports Xcode 27.1 replaced uikit-app-modernization with app-resizability, while re-export did not remove the stale old skill, so duplicates can conflict. Replies include a warning that these skills are not useful for Expo workflows (https://x.com/beaving/status/2101041084495237428) and a link to an unofficial installer/repository (https://x.com/mariusfanu/status/2101006867879080009). X showed 3 replies, all inspected. Version-specific material can age; no export/install was run.

### Coverage and limits
Source-specific main post, associated visible parent or quote context, and sampled accessible replies are summarized above. Reply counts describe X's displayed count at review time; selected reply links are illustrative evidence, not exhaustive review. No practice has been experimentally validated in this intake pass.

### Resume queue
Use phase two synthesis to assess whether the candidate is broadly applicable, identify implementation conditions and counterexamples, and design a small local trial where justified.

## Extracted practices
No practice extracted in the ingestion pass. Candidate or resource classification is recorded in the bookmark triage log; practice extraction and validation belong to phase two.

## Editorial history
- 2026-10-04: Ingested as a first-pass bookmark record.
- 2026-10-04: Added signed-in source and discussion review; see coverage limits above.
