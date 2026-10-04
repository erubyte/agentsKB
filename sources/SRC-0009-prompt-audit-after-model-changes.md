---
schema_version: 1
id: SRC-0009
title: "Audit agent skills after model changes"
created: "2026-10-04"
updated: "2026-10-04"
tags: [prompts, skills, model-migration, maintenance]
original_url: "https://x.com/petergyang/status/2094987791566622971"
original_url_aliases: []
canonical_url: null
author: Peter Yang
published: "2026-09-02"
accessed: "2026-10-04"
language: en
access_status: full
capture_status: catalogued
related_practices: [PRAC-0009]
discovery: user_supplied
discovered_from: null
discussion_status: partial
---

# Audit agent skills after model changes

## Provenance and coverage
The original X bookmark URL is preserved above. Signed-in X main-post access; the author recommends running `/claude-api prompt-audit` on skills for Fable 5.1, saying it finds redundancies and rules to remove. The visible post is dated 2026-09-02. The thread reports 107 replies. About 35 visible reply/context posts were sampled across the accessible thread, including author follow-ups; the discussion is partial and not a census. No parent tweet was visible. A quote shown inside a reply was unrelated promotion and excluded.

The author adds in follow-ups that they keep about a dozen skills, delete unused ones, and prefer them short; a later post says the audit found contradictions and redundancies, though its displayed text is truncated. Lance Martin identifies himself as the builder and links the current [Anthropic `claude-api` skill](https://github.com/anthropics/skills/tree/main/skills/claude-api). The linked prompt-audit guide was read from the repository's default branch on 2026-10-04. Its current contents may differ from the version available when the X post was published.

## Source summary
Yang recommends auditing agent skills against a newer model instead of carrying every old instruction forward. This is a recommendation and a report of his own use, not a controlled evaluation.

## Supporting evidence and limitations
The X post presents no measured task-quality comparison or detailed audit output. Replies include anecdotes of substantial skill reductions and support for reviewing prompts during model migrations, but these are self-reports. Current linked guide describes a report plus proposed diff, insists that length alone is not grounds for deletion, and advises retaining context, demonstrated safeguards, and load-bearing constraints. Those instructions describe the current guide, not proof that its recommendations improve a particular repository.

Several replies raise material limitations: Dusan Odalovic notes that an audit cannot know which apparent redundancy was added after a real incident ([reply](https://x.com/dusangran/status/2095061218843111469)); Gregor asks how removals are validated and warns about load-bearing edge cases ([reply](https://x.com/bygregorr/status/2095018189067350275)); and Michael Makelko says some safety rules may reflect failures in older models ([reply](https://x.com/MichaelMakelko/status/2095098942329368850)). These are cautions, not evidence to remove or weaken such rules. Other replies mention model-specificity and portability questions, supporting explicit target-model scope. A marketplace promotion claiming random skills degrade performance was excluded as promotional and unverified.

## Related material
- [Anthropic `claude-api` skill](https://github.com/anthropics/skills/tree/main/skills/claude-api), linked by Lance Martin. The current repository version includes a `prompt-audit` subcommand and a detailed [prompt-audit guide](https://github.com/anthropics/skills/blob/main/skills/claude-api/shared/prompt-audit.md). It says to inventory prompt surfaces, identify provenance, produce an audit report and proposed diff, preserve load-bearing constraints, and test removals. This mutable upstream document was read on 2026-10-04; it is not a benchmark of the audit's effectiveness. The skill was not installed or run.

## Discussion review (for social sources)
No parent tweet was visible. The root reports 107 replies; approximately 35 visible reply/context posts were encountered in a partial sample. Useful material retained: Yang's skill-maintenance follow-ups; the builder/source link from Lance Martin ([post](https://x.com/RLanceMartin/status/2095006615007359127)); advice to include audits in model migrations ([basedcapital](https://x.com/thebasedcapital/status/2095001017788014984)); a warning that old rules may be scars from failures the audit cannot know ([Dusan Odalovic](https://x.com/dusangran/status/2095061218843111469)); and an edge-case validation concern ([Gregor](https://x.com/bygregorr/status/2095018189067350275)). Other reply authors asked about weaker-model portability, whether a rule is truly redundant, model-specific skill versions, and version skew. Replies were reviewed for tips, corrections, and counterexamples, but nested branches and remaining replies were not exhaustively opened. Resume queue: continue remaining root replies and nested branches if broader coverage is needed; recheck the linked guide at the exact commit before relying on its current steps.

## Extracted practices
See [PRAC-0009](../practices/PRAC-0009-review-agent-instructions-after-model-changes.md). It is an untested adaptation, not a claim that shorter instructions always perform better.

## Editorial history
- 2026-10-04: Catalogued from the user's bookmark; sampled the signed-in discussion and inspected the linked guide.
