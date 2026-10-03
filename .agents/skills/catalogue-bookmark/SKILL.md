---
name: catalogue-bookmark
description: Catalogue supplied bookmarks in agentsKB, automatically following X reply parents, quoted posts, and replies on each contextual post to extract attributable tips and disagreements.
---

# Catalogue a bookmark with its discussion

Use the repository's [workflow](../../../docs/workflow.md) and [discussion procedure](../../../docs/discussion-intake.md). Read the record formats before writing.

For every supplied X link, context and reply review are part of intake; do not ask the user to inspect replies manually.

- Preserve the exact submitted URL before navigation. Deduplicate by platform post ID without rewriting provenance.
- Establish reply-parent and quote relationships from visible page evidence. Follow true parents toward the root and relevant quote context. Do not call a quoted post a reply parent.
- Inspect replies on the supplied post and every contextual ancestor/quote reviewed. Expand relevant truncated text and promising nested conversations. Look for methods, examples, corrections, counterexamples, and useful resources, not just agreement.
- Use a browser or available authorized connector. Discover available tools rather than assuming a particular API. Follow observed links; do not guess post identifiers. If an API offers pagination, continue through its cursors within the review budget.
- Keep a per-post review ledger, exact reply URLs, selection reasons, exclusions, coverage limits, and a resume queue. Capture the rest of a valuable discussion in later passes when needed.
- Attribute every retained reply to its own author. A third-party observation is not the original author's claim or a local experiment.
- Produce source records, linked untested practices where justified, catalogue/inbox updates, and a coverage summary. Follow the user's existing repository publication instructions.

Default pass: up to 10 contextual posts and 100 distinct replies across them, with at most 20 minutes of browsing. Allocate attention across contextual posts; do not spend the entire budget on the seed. These limits bound a pass, not the value of the whole discussion. Preserve the remaining queue and state the limit reached. Follow additional context within the user's requested scope on continuation.

This skill performs agent-driven intake while an assistant is running. It is not a background crawler, scheduled monitor, X account import, or an authorization to install software recommended in a post. If replies require login and no accessible session is available, save the useful public material, mark coverage partial, and explain what would enable continuation.
