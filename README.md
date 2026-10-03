# agentsKB

A personal knowledge base that turns saved AI-tool articles and posts into practices tested in real work.

**Operating loop:** capture → understand → extract → try → evaluate → reuse → revisit.

Success means finding and applying useful guidance, not collecting more links. A saved source is evidence of what someone said; it is not automatically an endorsed best practice.

## Start here

- [Catalogue](CATALOG.md): browse by problem and see evidence status.
- [Inbox](inbox.md): drop a URL and an optional sentence about why it matters.
- [Design](docs/design.md): architecture, principles, tradeoffs, and retrieval.
- [Record formats](docs/record-formats.md): metadata and relationship rules.
- [Operating workflow](docs/workflow.md): exactly how to catalogue and apply material.
- [Improvement plan](docs/improvement.md): experiments, reviews, measures, and staged automation.
- [Agent instructions](AGENTS.md): rules for assistants maintaining this repository.
- [Change log](CHANGELOG.md): material changes to the KB itself.

## First catalogued bookmark

[Quality benchmarks and iterative self-review for website design](sources/SRC-0001-kajikent-design-quality.md)

Original URL: https://x.com/kajikent/status/2105095422448746573

Extracted [practice](practices/PRAC-0001-design-self-review.md): specify a design benchmark and ask the agent to review and improve the result. **Status: untested.** A bounded, measurable adaptation and a [planned experiment](experiments/EXP-0001-design-self-review.md) are included; neither has been validated.

Only one user-supplied bookmark has been catalogued. Linked author replies provide context within its source record. No access to the user's bookmark collection is assumed.

## How to use this repository

1. Capture a link in the inbox. Keep the exact original URL.
2. Catalogue it using the source template, then extract a practice only if it suggests an actionable technique.
3. Before a relevant task, select at most three practices and state their evidence status.
4. After trying one, record what happened. Update the practice without rewriting the source's historical claims.
5. Promote repeatedly useful combinations into playbooks.

## Repository map

| Location | Purpose |
| --- | --- |
| `inbox.md` | Low-friction capture queue |
| `sources/` | Attributed source records, summaries, access limits |
| `practices/` | One actionable technique per record |
| `experiments/` | Planned trials and observed outcomes |
| `playbooks/` | Workflows supported by use in real tasks |
| `templates/` | Copyable starting points |
| `docs/` | Design, formats, operating process, improvement plan |

Markdown and Git are the initial system. No database, hosting, paid integration, or scheduled automation is required or currently configured.
