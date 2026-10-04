# AgentsKB Cleanup Plan

Remove low-value sources from active KB. Move 18 sources to `sources/archive/`.

## What's Moving to Archive

**To be moved to `sources/archive/`:**

Low-utility sources (duplicates, previews, speculative):
- SRC-0010-codebase-memory-repository-indexing.md
- SRC-0011-count-rule-copies-before-changing-features.md
- SRC-0012-awwwards-as-web-design-quality-bar.md
- SRC-0013-design-references-before-website-code.md
- SRC-0015-prompt-suggestions-and-usage-claim.md
- SRC-0018-export-xcode-agent-skills.md
- SRC-0023-shared-company-brain-for-ai-workflows.md
- SRC-0024-second-brain-maintenance-cost.md
- SRC-0025-microvm-isolation-for-agent-sessions.md
- SRC-0026-agent-building-walkthrough.md
- SRC-0027-claude-dev-developer-resource.md
- SRC-0028-jev-agent-router-project.md
- SRC-0029-ocean-simulation-ai-coding-project.md
- SRC-0030-multi-agent-chief-of-staff-example.md
- SRC-0032-secondbrain-public-project.md
- SRC-0033-ai-wardrobe-open-source-project.md
- SRC-0034-database-row-classification-example.md
- SRC-0035-vibe-coding-physical-devices.md
- SRC-0036-cinematic-site-build-tutorial.md

**Total: 19 sources removed**

## What Stays Active

**Core sources (8):**
- SRC-0001 (Design benchmarks)
- SRC-0002 (Evals discussion)
- SRC-0004 (Advanced evals)
- SRC-0005 (Repository anti-patterns)
- SRC-0006 (Agent inbox)
- SRC-0007 (Design before code)
- SRC-0009 (Prompt audit)
- SRC-0014 (E2E tests)

**Supporting sources (9):**
- SRC-0003 (Eval-skills reference)
- SRC-0008 (Design skills directory)
- SRC-0016 (Diagrams in harnesses)
- SRC-0017 (Browser inspection)
- SRC-0019 (Docs style skill)
- SRC-0020 (Evals course)
- SRC-0021 (Design prompts)
- SRC-0022 (UI separation)
- SRC-0031 (Demo project)
- SRC-0036 (Tutorial reference)

**Note:** SRC-0031 and SRC-0036 kept as demo/reference material despite being preview-only.

**Total active: 18 sources** (down from 36)

---

## Git Commands

```bash
# Navigate to your agentsKB repo
cd ~/path/to/agentsKB

# Create archive directory
mkdir -p sources/archive

# Move low-value sources
git mv sources/SRC-0010-*.md sources/archive/
git mv sources/SRC-0011-*.md sources/archive/
git mv sources/SRC-0012-*.md sources/archive/
git mv sources/SRC-0013-*.md sources/archive/
git mv sources/SRC-0015-*.md sources/archive/
git mv sources/SRC-0018-*.md sources/archive/
git mv sources/SRC-0023-*.md sources/archive/
git mv sources/SRC-0024-*.md sources/archive/
git mv sources/SRC-0025-*.md sources/archive/
git mv sources/SRC-0026-*.md sources/archive/
git mv sources/SRC-0027-*.md sources/archive/
git mv sources/SRC-0028-*.md sources/archive/
git mv sources/SRC-0029-*.md sources/archive/
git mv sources/SRC-0030-*.md sources/archive/
git mv sources/SRC-0032-*.md sources/archive/
git mv sources/SRC-0033-*.md sources/archive/
git mv sources/SRC-0034-*.md sources/archive/
git mv sources/SRC-0035-*.md sources/archive/

# Create archive README
cat > sources/archive/README.md << 'EOF'
# Archived Sources

These sources were archived during the 2026-10-04 KB cleanup because they:
- Are duplicates of higher-quality core sources
- Are preview-only with minimal content
- Are speculative or unvalidated
- Are example projects (not validated practices)

They remain available for reference but are not used in active practice extraction or tweet evaluation.

See ../CATALOG.md for the rationale.
EOF

# Commit
git add -A
git commit -m "chore: archive low-value sources (SRC-0010 through SRC-0036 except 0031, 0036)

- 19 sources moved to sources/archive/
- Reasons: duplicates, preview-only, speculative, example projects
- Keeps 18 core+supporting sources active
- Analysis: docs/CLAUDE-API-PRACTICES-REVIEW.md
- See sources/archive/README.md for details"

git push origin main
```

## Update CATALOG.md

Add a section documenting archived sources:

```markdown
## Archived Sources (19)

These sources are archived and not used in active practice extraction:

- **Duplicates of core sources:** SRC-0011, 0012, 0013, 0015
- **Preview-only/unvalidated:** SRC-0010, 0018, 0023, 0024, 0025
- **Example projects:** SRC-0026, 0027, 0028, 0029, 0030, 0032, 0033, 0034, 0035

See `sources/archive/README.md` for rationale.
```

---

## Result

**Before:** 36 sources, 9 practices  
**After:** 18 active sources, 9 practices  

KB is now:
- Leaner (50% smaller)
- More focused (only validated/high-utility sources)
- Easier to maintain (fewer sources to evaluate against new tweets)

---

## Next Phase

After cleanup is complete:

1. **Tweet intake workflow is ready** - Use taxonomy to evaluate new submissions
2. **No new skills needed yet** - PRAC-0001 through 0009 are comprehensive
3. **Archive serves as inspiration** - Can reference example projects when needed

Ready to accept tweets for evaluation.
