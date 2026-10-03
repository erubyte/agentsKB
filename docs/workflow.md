# Operating workflow

## A. Capture with minimal friction

Input: a supplied bookmark URL, optionally with a reason.

1. Add the exact link to inbox.md with capture date.
2. Record the user's stated reason. If absent, leave it blank or label an inferred reason explicitly.
3. Do not require the user to choose tags or write a summary.
4. Search original URLs, aliases, platform post IDs, and titles for duplicates.
5. Preserve alternate supplied URLs even when merging duplicate captures.

Capture is complete when the link can be recovered and its processing state is clear.

## B. Retrieve and establish coverage

Open the original source using an available reader or browser. If the first method fails, a normal browser or another authorized access route may work. Note which route succeeded.

Identify author, publication date, language, main claims, visible evidence, relevant media, and linked material. For X bookmarks, automatically execute [discussion-aware intake](discussion-intake.md): follow verified reply-parent chains and relevant quotes, then inspect replies on every contextual post. Read useful third-party tips, disagreements, and author clarifications. Do not treat replies by others as the author's advice.

For long threads, articles, video, or image-heavy posts, state exactly what was read. A snippet is partial access. If key content cannot be retrieved, preserve the URL and mark the record partial or unavailable. Ask for pasted text or an attachment only when necessary to proceed; do not guess.

Linked articles can deserve their own source records. Record their relationship to the bookmark, and preserve both URLs. A promotional example is not proof unless it actually demonstrates the claimed method.

## C. Catalogue faithfully

Create a source from templates/source.md:

- Summarize the actionable claim in original wording.
- Explain the evidence offered and what is missing.
- Label language translation as a paraphrase.
- Distinguish the source from related replies.
- Record publication/access dates and retrieval limits.
- Assign a few useful tags and a stable ID.

Do not copy full articles or use an assistant-generated expansion as if it appeared in the source. A source record may be short if the post is short; thoroughness means accurate coverage, not invented detail.

## D. Extract and connect practices

Ask: does this source propose a specific action that could change a real task?

If yes, search for an existing practice first. Add evidence to it when the mechanism is the same. Create another practice only when the action or applicability materially differs.

Specify use conditions, steps, tradeoffs, and a testable outcome. Keep the original claim distinct from any proposed adaptation. Mark new practices untested. If no useful action is present, catalogue the source without forcing a practice.

Add reciprocal source/practice links, update the catalogue, and record inbox disposition. These updates belong in the same change.

## E. Apply to an actual task

At task start:

1. Describe the problem and constraints.
2. Search the catalogue and practices by problem.
3. Select at most three relevant practices.
4. Read their use conditions, evidence, and limitations.
5. State which will be applied and why. Label any experimental use.
6. For time-sensitive product mechanics, verify current authoritative documentation.
7. Follow the actual user's task requirements over a generic KB suggestion.

Do not turn every task into an experiment. For routine work, a short usage observation may suffice. Use an experiment record when evaluating an uncertain claim, comparing alternatives, or deciding whether to adopt a default.

## F. Run a bounded experiment

Create the plan before observing outcomes. Specify the task, baseline, treatment, evaluation rubric, budget, and stopping condition. Pin or preserve the tested practice version.

For a prompt change, use the same base brief, environment, assets, and tool/model where practical. Keep sessions independent when context carryover would bias the comparison. Compare an ordinary baseline against the proposed intervention. A single comparison is exploratory because model output varies.

Capture observations, actual time/cost when available, failures, and confounders. If the task was interrupted or conditions changed, say so. Do not manufacture precision or convert subjective impressions into objective measurements.

## G. Reflect and update

After the task:

- What changed compared with the baseline?
- What was useful, neutral, or harmful?
- What did the technique cost in time, complexity, or money?
- Under what conditions would it be useful again?
- Does the practice need a narrower use-when statement?

Update evidence and status with links to observations. Keep negative results. Do not revise source summaries to match later conclusions.

## H. Review and publish repository changes

Check the record-format contract, links, original URLs, and index consistency. Review the full diff and preserve unrelated work. Commit related changes with a concrete message such as "Catalogue design self-review source and add untested practice."

Use a normal fast-forward update. If the remote moved, reconcile changes before publishing. Never force-push over someone else's work. Respect repository branch protections if present.

A completion report should say how many supplied bookmarks were processed, what was blocked, what was extracted, whether experiments ran, and where the commit can be reviewed.

## Repeatable assistant requests

- Capture: "Catalogue this URL in agentsKB. Preserve the original URL exactly, read the source, state access limits, and separate claims from adaptations."
- Apply: "Find up to three practices relevant to this task. Show evidence status and explain which conditions match."
- Reflect: "Record what happened when we used this practice. Update its scope and status only as far as the evidence supports."
- Review: "Review the KB for dead links, contradictory advice, stale tool-specific instructions, and practices that are never used."

These are suggested requests, not configured automations.
