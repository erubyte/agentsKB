# Knowledge-base change log

## 2026-10-03 — Initial foundation

Problem: saved AI-tool advice was not being turned into guidance applied to real tasks.

Changes:
- Documented architecture, metadata, source handling, retrieval, experiments, and iterative improvement.
- Added agent instructions and reusable record templates.
- Catalogued one supplied X bookmark with its exact original URL and author clarifications.
- Extracted one untested practice and prepared one planned experiment.
- Added a problem-oriented catalogue and intake queue.

Expected benefit: make provenance clear and connect a saved idea to a testable action.

Next check: use the practice on a suitable task and record usefulness, cost, and retrieval friction. No experiment has run and no automated ingestion, validator, or scheduled review has been installed.

Rollback: use Git history to revert specific changes while retaining original source URLs in any replacement records.

## 2026-10-03 — Discussion-aware intake

Problem: isolated-post capture misses valuable parent/quote context and reply tips; manually reading these discussions should not fall to the user.

Added a repo-local catalogue-bookmark skill and default agent instructions for automatic context/reply review during intake. Documented graph relationships, bounded passes, selection criteria, access coverage, and resumable queues. Added backward-compatible source metadata; older source IDs and original URLs are unchanged.

Catalogued the Lenny bookmark, one quoted post, six visible replies, and two linked resource records. Extracted three untested practices. The example demonstrated a quote relationship and a login-limited public reply view; no exhaustive review or local eval test is claimed. The first bookmark is marked for a later discussion refresh rather than retroactively claimed complete.

Next check: continue a discussion through an accessible logged-in session and exercise a genuine multi-level reply-parent chain. Rollback: revert this change while retaining the submitted URLs and any new observations in replacement records.
