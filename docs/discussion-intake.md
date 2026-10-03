# Automated discussion-aware bookmark intake

## Trigger and scope

When an assistant catalogues a supplied tweet, it must review the surrounding discussion as part of the task. The user should not need to inspect parents or replies manually.

The repo-local [catalogue-bookmark skill](../.agents/skills/catalogue-bookmark/SKILL.md) implements this agent workflow; AGENTS.md also points maintainers to this procedure. Run it in a checkout with an assistant that can browse X. There is no standalone scraper, background process, or scheduled task. A checkout/tool environment still needs to expose the skill or let the assistant read its instructions.

## Build the context graph

1. Preserve the exact submitted URL in the seed source record.
2. Read the post and distinguish reply-parent context, embedded quoted context, and outbound resources.
3. Follow verified reply parents upward until the visible root or an access/budget limit. Open each parent directly so its replies can be reviewed.
4. Follow relevant quoted posts and their own context. Quotes form a separate relationship, not a reply-parent edge.
5. Deduplicate visited posts by X post ID. Preserve every exact supplied URL separately from a clean permalink.
6. Record directed relationships: child replies_to parent, post quotes quoted_post, and post links_to resource. Use unknown when the relationship cannot be established.

Chronological proximity, the same author, or adjacent cards do not establish parentage. Do not treat recommended posts as replies. Do not infer an inaccessible root.

## Review replies on every contextual post

Use the current page's ordinary reply view, expand useful truncated replies, and follow promising subthreads. Scroll or paginate while new replies are available. If the interface provides sorting choices, record the selected mode; use another useful sort when practical to reduce ranking bias. Never infer sorting from display order.

Prioritize:
- Concrete procedures, prompts, code, examples, and relevant primary resources.
- Author clarifications and corrections.
- Firsthand failure reports and counterexamples.
- Preconditions, limitations, and disagreement that change how a practice should be applied.

Do not rank truth by likes, verification badges, or confidence of tone. Exclude generic applause, repeated claims, off-topic promotion, and unsupported claims that add no actionable context. Preserve exclusion categories and counts, not an archive of every noisy reply.

Read a promising reply fully before extracting a technique. If it is truncated and cannot be expanded, keep it as a pending candidate. If a useful reply points elsewhere, follow the relevant primary resource within budget and record its access coverage separately.

## Coverage and stopping rules

A pass defaults to 10 contextual posts, 100 distinct replies across their discussions, and 20 minutes of browsing. Stop earlier at an explicit access barrier, exhausted visible content, or two successive page advances yielding no new posts. Allocate the reply budget across context posts. Record which limit stopped each surface.

Use per-surface coverage: not_started, partial, or visible_exhausted. visible_exhausted means the accessible view ended; it does not mean all platform replies were retrieved. Login walls, ranking, moderation, deleted posts, and collapsed branches prevent a universal completeness claim.

Record:
- Review date and access method.
- Seed URL and observed relationships.
- Each context post visited, number of distinct direct replies read, ordering if known, and stopping reason.
- Useful replies retained, excluded categories, unexpanded candidates, and nested branches not visited.
- Media coverage and linked-resource coverage separately.
- A concrete resume queue with URLs and the action needed.

If blocked, continue useful independent work and report the limit. Never claim that zero additional visible replies means no other replies exist.

## Persist useful discoveries

Use a discussion section in the seed source as the default ledger. Keep individual URLs and author attribution for every retained tip. Create a separate source record when a reply or linked resource warrants independent reuse; connect it back to the discovery source. Avoid duplicating the same practice across replies.

New records may add optional source metadata:
- discovery: user_supplied or linked.
- discovered_from: source ID or null.
- discussion_status: not_reviewed, partial, or reviewed_accessible.

These are additive schema-v1 fields. Existing source records remain valid. original_url means the exact URL supplied by the user or observed at discovery; discovery distinguishes those cases. original_url_aliases remains for alternate supplied URLs identifying the same item.

A source's access_status describes the main source. It is independent of discussion_status. A fully read tweet can still have partial discussion coverage.

## Resume and re-review

When continuing, start with the recorded queue rather than redoing the entire discussion. Compare post IDs and existing tips, add new findings, and date corrections or deletions. Do not erase an earlier observed statement because the page later becomes inaccessible.

New replies are not monitored automatically. A later request to refresh a bookmark runs another pass. A scheduled monitor would require separate setup with an explicit cadence.

## Quality checks

Verify exact seed URL preservation, observed relationship types, attribution of each extracted tip, per-surface coverage, deduplication, and the distinction between source advice and local results. Report supplied-bookmark count separately from discovered context/resources and reply count.

Example exercised on 2026-10-03: [SRC-0002](../sources/SRC-0002-lenny-evals-discussion.md). The seed quotes another post; both accessible reply surfaces were inspected. Public login barriers limited coverage, and no all-replies claim was made.
