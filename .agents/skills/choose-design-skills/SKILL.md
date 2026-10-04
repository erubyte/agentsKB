---
name: choose-design-skills
description: Evaluate and select design skills for visual projects. Use this whenever starting a visual project (website, dashboard, app, UI component), choosing between design approaches, or wondering what design capabilities are available in Claude. Helps you systematically assess which skills/tools fit your specific needs instead of guessing.
---

# Design Skills Directory

A decision framework for evaluating and selecting design skills when building visual interfaces.

This is not a list to memorize. This is a process for thinking through which design approaches matter for your project, checking what's available, and making informed choices.

## The Core Question

**When starting a visual project, you're really asking:** "Of all the design skills and tools available, which ones actually help *my* project succeed?"

The answer depends on what your project needs, not on what's trendy.

## How to Evaluate Design Skills for Your Project

### Step 1: Identify Your Project's Design Needs (5 minutes)

Before looking at any skills, answer these questions about *your* project:

- **Visual system:** Do you need consistent colors, typography, spacing? (If building multiple screens, yes.)
- **Accessibility:** Will people with disabilities use this? (If public-facing, yes.)
- **Responsiveness:** Does this need to work on mobile/tablet/desktop? (If web/app, yes.)
- **Interaction:** Does this need animations, transitions, or interactive states? (If it's interactive, probably yes.)
- **Component library:** Can you reuse components, or is everything custom? (If you're building multiple pages, reuse helps.)
- **Performance:** Is this performance-critical? (If it's used heavily, consider it.)

Write down the 2-3 needs that are most important for *your* project.

### Step 2: Match Needs to Design Skills

Here are the major design skill categories and what they help with:

#### Visual Design & Aesthetics
- **Frontend Design** — Core UI/UX principles, color theory, typography, layout
- **Apple Design** — iOS/macOS design patterns and guidelines (use if building for Apple platforms)
- **Beautiful Shadows** — Shadow and depth techniques (use if you need a polished, dimensional look)
- **Emil's Design Engineering** — Design systems and component architecture (use if you're building multiple products)

When to use: You need a cohesive visual language across your interface.

#### Accessibility & Usability
- **Accessibility** — WCAG standards, screen readers, keyboard navigation, color contrast (use for any public-facing interface)
- **Design Review** — Evaluating designs against best practices (use to QA your own work)
- **Better Interface** — UX improvements and interaction patterns (use when redesigning something that doesn't work well)

When to use: You need your interface to work for everyone, including people with disabilities.

#### Implementation & Frameworks
- **Shadcn** — React component library and patterns (use if building React UIs and want battle-tested components)
- **Adapt** — Responsive design and adaptive layouts (use if your design needs to work across all screen sizes)
- **Interaction Design** — Animations, transitions, and user feedback (use if motion is part of your design story)

When to use: You're implementing the design and need practical, reusable code patterns.

---

### Step 3: The Selection Process

For each skill you identified as relevant in Step 2:

**Ask three questions:**

1. **Does this skill exist in Claude right now?** (Many design skills come and go. Ask Claude to check if the skill is currently available.)
2. **Is this the right level of detail for my project?** (Some skills assume you're building a system; others assume a one-off page. Match the scope.)
3. **Does this solve a real problem for me?** (If you don't have that problem, skip it. Don't accumulate skills just because they exist.)

**If all three are yes:** Include this skill in your design brief.

**If any are no:** Skip it for now. You can add it later if the project scope changes.

---

### Step 4: Create Your Project's Design Brief

Once you've picked which skills apply, write a one-paragraph brief:

> For this [website/dashboard/app], I need:
> - [Visual system need] — using [skill 1]
> - [Accessibility need] — using [skill 2]
> - [Implementation need] — using [skill 3]
>
> I won't be using [skills you considered but rejected] because [reason].

This brief prevents you from asking Claude to use a skill that doesn't actually help your project. It also forces you to be specific about what you're building.

---

## Common Mistakes (And How to Avoid Them)

**❌ Mistake:** "I'll use every design skill and then pick the best parts."
**✅ Fix:** Choose 2-3 skills max. More skills = confusion. Fewer, focused skills = coherence.

**❌ Mistake:** "Let me use [skill] because I've heard of it."
**✅ Fix:** Match skills to *your project's* needs, not to hype. A skill that's not relevant is just noise.

**❌ Mistake:** "The skill exists, so it must be the current best version."
**✅ Fix:** Skills change. Ask Claude if the skill is current before committing to it in your project.

**❌ Mistake:** "I'll tell Claude to use Design + Accessibility + Interaction + Shadcn + Adapt + everything."
**✅ Fix:** Too many instructions = conflicting guidance. Be selective. Let Claude focus on what matters.

---

## The Design Skills at a Glance

| Skill | Best For | When to Skip |
|-------|----------|--------------|
| Frontend Design | Any visual interface | If you already have a clear design direction |
| Apple Design | iOS/macOS apps | If building for web only |
| Beautiful Shadows | Polished, dimensional interfaces | If your design is flat or minimalist |
| Emil's Design Engineering | Multi-product systems | If you're building a single page/screen |
| Accessibility | Public-facing interfaces | Only if you're 100% sure no one with disabilities will use it |
| Design Review | Evaluating your own work | If you want an external designer to review instead |
| Better Interface | Redesigning something broken | If what you have is already working well |
| Shadcn | React component libraries | If not building React, or building vanilla JS/other framework |
| Adapt | Responsive design | If you only care about desktop, or mobile only |
| Interaction Design | Animated, interactive UIs | If your interface is mostly static |

---

## How to Check if a Skill is Available

Before finalizing your brief, ask Claude: "Is the [skill name] skill available right now?" or "Can you use the Accessibility skill for this project?"

Claude will tell you if the skill exists, if it's current, and if it's the right fit for your task.

---

## After You've Picked Your Skills

1. **Be specific in your prompt.** Don't say "use design skills." Say: "Use Frontend Design for the visual system and Accessibility for keyboard navigation."
2. **Test on a small piece.** Create one screen or component using your chosen skills. See if they work well together.
3. **Adjust if needed.** If a skill isn't helping, drop it. If you find you're missing something, add it to the next iteration.
4. **Keep the brief.** Reuse your brief for similar projects. You've done the thinking once; apply it again.

---

## Evidence and Limitations

This framework is based on SRC-0008 (design skill directory) and the practice of evaluating skills before use (PRAC-0007: design-before-code). The skill list reflects tools commonly available in Claude but availability changes. Always verify skills exist and are current before committing to them in your project prompt.
