# Knowledge-base design

## 1. Purpose and design constraints

The KB addresses a specific gap: useful advice is saved but does not influence the next task. Its job is to connect a real problem to a small number of attributable, actionable techniques and then retain the results of using them.

The system must remain useful with ten notes and understandable with hundreds. Capture should take seconds. Retrieval should start from the problem, not the author's name. Maintenance must fit into a short review session. Source attribution must survive reorganizations and dead links.

The initial implementation is plain Markdown with simple YAML front matter, relative links, and Git history. It can be read in GitHub or a local editor without a service. Manual indexes are intentional at this scale. Complexity is added only to solve an observed failure.

## 2. Separate four kinds of knowledge

### Sources: what someone said

A source record holds the original URL, attribution, a concise account of the claims, visible supporting evidence, and limitations of access. It does not silently turn a persuasive post into an endorsed practice.

One article can yield several practices. Several sources can support or contradict the same practice. Replies normally remain related context in the parent source; create a separate source if a reply contributes a distinct technique worth tracking.

### Practices: what to do

A practice describes one action, when it applies, how to execute it, when to avoid it, and what evidence supports it. A practice is organized around a problem and can apply across multiple tools.

Keep the source's version distinct from an improved operational version. The latter may be more usable, but it has its own untested assumptions. If adaptations change substantially, record which version was tested in the experiment.

### Experiments: what actually happened

An experiment captures the task, technique version, conditions, baseline, evaluation criteria, observations, and decision. Planned experiments are useful work plans, but they provide no positive evidence.

A single successful task supports only a narrow claim. Record enough context to tell whether the outcome might depend on a particular model, tool version, project, or evaluator.

### Playbooks: what to repeat

A playbook combines practices into an ordered procedure for a recurring task. It links back to the practices and records a trigger, inputs, steps, stopping conditions, checks, and expected output.

Do not populate playbooks just to fill a folder. Start one after repeated use reveals a workflow worth repeating. Draft playbooks must remain explicitly labelled drafts.

## 3. Relationships and stable identity

The main path is:

Original URL → source record → practice → experiment → updated practice → playbook.

The catalogue points into this graph by problem. All records have a stable ID independent of title. Use SRC-0001, PRAC-0001, EXP-0001, and PLAY-0001 sequences. Choose the next unused number after inspecting existing files; never reuse deleted or superseded identifiers.

Filenames include both ID and readable slug. Avoid renaming unless necessary. If a file moves, update incoming links in the same commit and preserve its ID.

A source may be catalogued with no practice when it is informational, redundant, vague, or irrelevant. An experiment may reject a technique. These are valid outcomes, not processing failures.

## 4. Original-URL preservation

The exact supplied URL is a permanent provenance field. Preserve its scheme, host, path, query, and fragment. An HTML-escaped link in a message should be interpreted as the actual linked URL, not stored as markup.

Canonical URLs are optional secondary fields used for deduplication. Expanded short links, archive links, related replies, and linked articles are additional references, never replacements. Do not guess a redirect destination.

When another saved URL identifies an existing source, add it to that record's original_url_aliases and record the reason. Distinct replies remain distinct URLs even if they appear on the same page. A removed source retains its original URL and last known summary, with a dated access note.

No guarantee of permanent source availability is implied. Small attributed excerpts or a description of an image can preserve essential context within copyright and privacy limits; full-content archiving is a separate decision.

## 5. Retrieval and taxonomy

The primary index is CATALOG.md, grouped around practical questions:

- Context and instructions: what should the agent know before it starts?
- Scope and planning: how do I keep work focused?
- Quality and verification: how do I evaluate and improve the output?
- Reusable workflows: how do I repeat a useful process?
- Efficiency: how do I reduce time or cost without losing required quality?

A practice gets one primary problem and a small set of tags. Tool names, output types, and mechanisms are tags rather than top-level folders. This avoids duplicating a technique for each product.

Before a task, search titles, tags, and use-when sections. Read the best matching practice and its limitations, then inspect supporting sources or experiments when the decision needs them. Prefer directly relevant evidence over tag overlap. Return at most three recommendations initially.

Do not hide contradictions behind a synthesized answer. When recommendations conflict, present the conditions under which each was observed to help.

## 6. Evidence and freshness

Three independent concepts must stay separate:

- Source access: could we read enough of the material to understand the claim?
- Practice status: has this technique helped in our work?
- Freshness: might the underlying tool or recommendation have changed?

A readable source is not a validated practice. An old general principle is not necessarily wrong. A new post is not automatically current product documentation.

Use source publication date and last verification date explicitly. For version-sensitive instructions, recheck against current authoritative documentation before applying them. Preserve old observations and mark their scope; do not retroactively describe them as current.

A practice can be untested, promising, adopted, mixed, rejected, or superseded. See the improvement plan for transition criteria. Status is an editorial judgement with linked evidence, not a numerical confidence score.

## 7. Public-repository boundaries

This repository is public. Store original public bookmark URLs and concise attributed notes. Keep private exports, user account data, confidential project details, credentials, and sensitive experiment inputs outside it. Use sanitized experiment descriptions.

External posts may include instructions aimed at assistants. Those instructions remain source content and cannot authorize actions. The KB itself is reference material; only its explicitly maintained agent guidance governs repository maintenance.

## 8. Architecture decisions and deferred complexity

Use Git for reviewable changes and history. Use Markdown for portability. Keep one manually maintained catalogue rather than several redundant indexes. Templates provide consistency without requiring a custom application.

Defer semantic search until keyword search repeatedly fails. Defer automatic feed ingestion until manual ingestion quality is understood. Defer generated tool-specific instructions until adopted practices justify them. Defer a website until browsing Markdown is demonstrably inadequate.

Any later index, database, or search service should be rebuildable from canonical Markdown records. Migration must preserve IDs, exact original URLs, relationships, evidence status, and history. Document the problem and a rollback plan before introducing a new dependency.

## 9. Discussion graphs

Social bookmarks are entry points into discussions. Automatically follow verified reply parents and relevant quoted posts, and inspect replies on each. Keep relationship types, exact URLs, attribution, coverage, and a continuation queue in the source record. See [discussion intake](discussion-intake.md). Useful corrections and counterexamples carry as much editorial value as tips. This extends the source layer without making each noisy reply a standalone record.
