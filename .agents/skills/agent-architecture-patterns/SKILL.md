---
name: agent-architecture-patterns
description: Patterns and practices for building reliable agent systems. Use this whenever designing or troubleshooting an agent, building file automation workflows, planning how an agent will interact with users, or documenting agent behavior. Covers anti-patterns, bounded workflows, visualization, debugging, and output separation.
---

# Agent Architecture Patterns

Best practices for designing, building, and maintaining reliable agent systems. Apply these patterns to avoid common mistakes and build systems that fail safely.

## The Five Core Patterns

### 1. Document Anti-Patterns (What NOT to do)

**When to use:** Code review repeatedly corrects the same mistake; you're seeing the same bug pattern across projects; onboarding new team members reveals repeated errors.

**The pattern:**
When you catch the same problematic approach multiple times, stop fixing it case-by-case. Instead, document it once in a CLAUDE.md or similar instruction file so every future session learns the rule.

**How to do it:**

1. Identify a recurring problem that's costing review time
2. Write an entry with:
   - **What to avoid:** The problematic approach (concrete example from code)
   - **What to do instead:** The preferred alternative (with code example)
   - **Why:** The reason this matters (what breaks if you don't do it)
   - **Exception:** When the rule doesn't apply (if any)
3. Keep it short — a paragraph plus examples, not a manifesto
4. Link to relevant tests or documentation instead of duplicating it
5. Review and retire stale rules when architecture changes

**Examples:**
- ❌ Don't modify historical database migrations. ✅ Create new migrations instead. Why: Old databases can't re-run edited migrations; new installs fail.
- ❌ Don't let fallbacks hide invalid state. ✅ Validate before proceeding. Why: Silent failures cause mysterious bugs; validation catches the problem immediately.
- ❌ Don't extract utils prematurely. ✅ Wait for actual duplication (rule of 3). Why: Premature abstraction hides the real pattern.

**Validate it:**
On the next similar change, did the team member apply the rule without being corrected? If yes, it's working. If no, the rule wasn't clear enough — rewrite it.

---

### 2. Bounded Agent Inbox Workflow

**When to use:** An agent processes/organizes files; you need to ensure no files are lost or misplaced; humans need to review changes before they're final.

**The pattern:**
Instead of letting an agent freely move files around, constrain it to a bounded workflow with explicit review gates. This prevents silent failures and data loss.

**How to do it:**

1. **Define the boundary:** What inputs can the agent accept? Where can files go? (e.g., "Only .txt files; destination folders are predefined")
2. **Propose, don't execute:** Agent suggests moves but doesn't make them yet
3. **Route ambiguous items to human review:** If the agent isn't confident, ask a human to decide
4. **Execute only approved changes:** Once you confirm the moves are correct, make them
5. **Keep a log:** Record original→new path and reason so you can debug later if something went wrong
6. **Before automating:** Design what happens if a write fails halfway through or two files arrive simultaneously

**Pseudo-code:**
```
while inbox has items:
  proposed_moves = agent.analyze_items()
  high_confidence = [m for m in proposed_moves if confidence > 0.9]
  needs_review = [m for m in proposed_moves if confidence <= 0.9]
  
  execute(high_confidence)  # Safe to do
  ask_human(needs_review)   # Wait for confirmation
  
  log_all_moves(high_confidence + needs_review)
```

**Why this matters:**
File operations are irreversible. One confident-but-wrong move can delete work. Explicit review prevents this. The log lets you recover if something goes wrong.

---

### 3. Visualize Complex Agent Workflows

**When to use:** Your agent system has multiple feedback loops, retries, or decision points; documentation doesn't capture how it actually works; team members are confused about the flow.

**The pattern:**
Draw a diagram instead of writing more text. Show inputs, agent processing, tool calls, feedback loops, and outputs.

**What to include:**
- Input sources (user query, file, API call)
- Agent reasoning step (where it decides what to do)
- Tool calls (what the agent asks for — files, APIs, computation)
- Feedback loops (how the agent retries or refines)
- Context boundaries (what data is visible to the agent at each step)
- Tool permissions (what the agent is allowed to access)
- Output to user (what the user actually sees)

**Format:** Use any tool you like (Mermaid diagram, hand-drawn + photo, ASCII art, Lucidchart). The format matters less than showing the actual flow.

**Example structure:**
```
User Input → Agent Analysis → Tool Call Decision
             ↓
         Fetch Data → Agent Reviews → Confident?
         ↑                  ↓
         No, retry      Yes, output
```

**Why:** Text descriptions miss feedback loops and error paths. Diagrams make these visible.

---

### 4. Inspect Browser Network Requests (For Automation)

**When to use:** You want to automate a web interaction but the website keeps changing; HTML scraping feels fragile; you need a reliable way to understand what the website is actually doing.

**The pattern:**
Before writing automation, inspect the underlying HTTP requests. Use the actual API instead of scraping HTML when possible.

**How to do it:**

1. Open your browser's DevTools (F12)
2. Go to the **Network** tab
3. Perform the action you want to automate (click, type, submit)
4. Look at the network requests that fired:
   - URL (where did it go?)
   - Method (GET, POST, etc.)
   - Payload (what data was sent?)
   - Response (what came back?)
5. Find the actual API endpoint (usually something like `/api/v1/...`)
6. Call that API directly instead of clicking and scraping

**Example:**
- ❌ Script that clicks buttons and scrapes the HTML result
- ✅ Script that calls the API endpoint directly with the right JSON payload

**Why:** APIs are stable; HTML changes constantly. Direct API calls are 10x more reliable.

---

### 5. Separate Agent Output from User-Facing UI

**When to use:** You're building a system where users see agent results; you're tempted to show users the agent's reasoning, tool calls, or debug logs; you want users to trust the system.

**The pattern:**
The agent's internal reasoning is for developers. The user's view is polished, relevant, and clear. These are different views of the same work.

**What to hide from users:**
- Agent reasoning steps ("I searched for X, then analyzed Y")
- Tool calls and their responses
- Internal error messages and retries
- Confidence scores or uncertainty markers
- Debugging logs

**What to show users:**
- Final answer or result
- Relevant context (what you searched for, when)
- Any uncertainty in plain language ("I wasn't sure about X, so I checked Y")
- Clear next steps if there's more work to do

**Example:**
```
❌ Agent output (too much internals):
   - Called search_tool with query "python async"
   - Got 200 results, filtered to top 10
   - Analyzed 7 of them (3 too short)
   - Confidence: 0.87
   - Answer: Use asyncio

✅ User output (polished):
   - Use Python's asyncio library for concurrent I/O
   - See the docs at python.org/asyncio
```

**Why:** Internal scaffolding confuses users and makes them less confident in the result. Polished output builds trust.

---

## Decision Tree: Which Pattern Applies?

| Situation | Pattern | Why |
|-----------|---------|-----|
| Same code review comment appears twice | Anti-patterns | Document it so it stops happening |
| Agent moves/organizes files | Inbox workflow | Explicit review prevents data loss |
| System has multiple feedback loops or retries | Visualization | Diagrams show what text can't |
| Automating web interactions | Browser inspection | APIs are more reliable than HTML scraping |
| Users see agent output | Output separation | Keep internals hidden from users |

---

## How to Apply These

1. **Start with what hurts most.** Which problem is costing you the most time or causing the most bugs?
2. **Pick one pattern. Apply it.** Don't try to do all five at once.
3. **Measure the impact.** Did the anti-pattern document reduce review time? Did the inbox workflow prevent file loss?
4. **Refine and keep going.** Each pattern gets better with practice.

---

## Evidence and Limitations

These patterns are synthesized from validated practices (PRAC-0005, PRAC-0006 and techniques from SRC-0016, SRC-0017, SRC-0022). Anti-patterns documentation and bounded workflows have been tested in production. Visualization, API inspection, and output separation are established practices but not formally benchmarked here.
