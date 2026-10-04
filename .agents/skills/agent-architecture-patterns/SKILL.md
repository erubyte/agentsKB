---
name: agent-architecture-patterns
description: Best practices for agent architecture, workflows, and patterns. Covers anti-patterns to avoid, inbox workflows, debugging techniques, and UI/output separation.
---

# Agent Architecture Patterns

Consolidated best practices for building and maintaining agent systems.

## Sources

Synthesized from:
- SRC-0005: Repository anti-patterns
- SRC-0006: Agent inbox workflow
- SRC-0016: Diagrams in agent harnesses
- SRC-0017: Browser request inspection
- SRC-0022: Separating agent output from user-facing UI

## Core Patterns

### 1. Document Anti-Patterns with Alternatives

**Pattern:** When you encounter a repeated problem in agent behavior, document it.

**Implementation:**
- Record the problematic approach
- Define the preferred alternative
- Explain why the alternative is better
- Link to examples or references

**Examples:**
- Don't modify historical migrations — create new ones instead
- Don't let fallbacks hide invalid state — validate before proceeding
- Don't extract all logic into shared utils prematurely — wait for actual duplication

**Why:** Prevents the same mistakes from recurring and guides new team members.

### 2. Constrained Inbox Workflow

**Pattern:** Use a bounded workflow for agent-driven file organization with explicit review and recovery.

**Implementation:**
1. Define accepted inputs and permitted destinations
2. Generate proposed moves, route ambiguous items to human review
3. Execute only approved changes, retain original-to-new-path log
4. Verify content preservation and absence of collisions
5. Before automating, design handling for incomplete writes and concurrent arrivals

**Why:** File operations are risky; explicit review prevents loss or corruption.

### 3. Visualize Agent Harnesses with Diagrams

**Pattern:** Document how agents work through diagrams, not just text.

**Implementation:**
- Draw the flow: input → agent processing → tool calls → output
- Show feedback loops and retry logic
- Visualize context boundaries and session management
- Include tool availability and permissions

**Why:** Diagrams clarify complex workflows that text descriptions obscure.

### 4. Inspect Browser Requests for Automation

**Pattern:** When automating web interactions, inspect network requests to understand the underlying API calls.

**Implementation:**
1. Open browser DevTools (F12)
2. Go to Network tab
3. Perform the action you want to automate
4. Inspect the HTTP requests (method, URL, payload, response)
5. Use the actual API instead of scraping HTML when possible

**Why:** Direct API calls are more reliable than HTML scraping and less fragile to design changes.

### 5. Separate Agent Output from User-Facing UI

**Pattern:** Don't expose internal agent reasoning, tool calls, or debug output to end users.

**Implementation:**
- Agent reasoning and logs: hidden or accessible only to developers
- User-facing output: polished, relevant, clear
- Internal and external UIs are different views of the same work

**Why:** Users need clarity and confidence; internal scaffolding creates confusion and reduces trust.

## When to Apply Each Pattern

| Pattern | When |
|---------|------|
| Anti-patterns | Recurring problems in agent behavior |
| Inbox workflow | Agent organizes/processes files with human review |
| Diagrams | Documenting complex agent flows |
| Request inspection | Automating web interactions |
| UI separation | Building user-facing agent output |

## Evidence Status

Partially validated. Each pattern comes from real usage; none are formally tested across multiple projects here.

## Next Steps

1. Identify which patterns apply to your agent system
2. Document anti-patterns specific to your use case
3. Implement patterns incrementally, starting with the highest-impact ones
4. Refine based on what you learn from actual agent behavior
