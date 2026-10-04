---
name: documentation-style
description: Write clear, professional documentation using principles from Google's Developer Documentation Style Guide. Use this whenever writing docs, guides, tutorials, READMEs, API documentation, code comments, or any prose that Claude generates. Specifically helps reduce generic AI-sounding language and improve clarity.
---

# Documentation Style Guide

Write documentation that's clear, professional, and sounds like a real person — not a generic AI chatbot.

This skill teaches you how to apply Google Developer Documentation Style Guide principles to improve your writing and reduce "AI-lish" prose.

## The Core Problem

Generic AI prose sounds like this:

> "In today's dynamic landscape, leveraging cutting-edge technology enables organizations to seamlessly integrate transformative solutions that synergistically optimize user experiences."

Real documentation sounds like this:

> "Use React hooks to manage component state. This reduces boilerplate and makes your code easier to test."

The difference is specificity, directness, and honesty.

## Five Principles for Clear Documentation

### 1. Specific Language Over General

**Generic AI:**
"Utilizing advanced algorithmic approaches facilitates enhanced data processing capabilities."

**Clear documentation:**
"Use binary search to find items in a sorted list in O(log n) time."

**Why it matters:** Specific language gives readers something concrete to do or understand. General language is forgettable.

**How to do it:**
- Replace vague words with concrete ones
  - ❌ "implement a solution" → ✅ "write a function that validates email addresses"
  - ❌ "enhance functionality" → ✅ "add caching to reduce database queries"
  - ❌ "best practices" → ✅ "error handling, input validation, and logging"
- Include examples and concrete values
  - ❌ "The process is fast" → ✅ "This query takes < 100ms"
  - ❌ "Use reasonable defaults" → ✅ "The default timeout is 30 seconds"

---

### 2. Active Voice Over Passive

**Generic AI:**
"It can be observed that improvements were made to system performance by implementing caching mechanisms."

**Clear documentation:**
"We improved system performance by adding a caching layer."

**Why it matters:** Active voice is shorter, clearer, and tells readers who did what. Passive voice hides the actor.

**How to do it:**
- Find the person or system doing the action. Put it at the start of the sentence.
  - ❌ "The configuration file is read by the application at startup"
  - ✅ "The application reads the configuration file at startup"
- Use "you" when instructing the reader
  - ❌ "Tests should be written for every function"
  - ✅ "Write tests for every function"

---

### 3. Direct Instructions Over Explanation

**Generic AI:**
"It is important to consider that error handling should be implemented to ensure that unexpected conditions are properly managed."

**Clear documentation:**
"Handle errors by validating inputs before processing them."

**Why it matters:** Direct instructions tell people what to do. Explanations waste space. Combine them: say what to do, then explain why.

**How to do it:**
- Lead with the action
  - ❌ "Error handling is a critical aspect of robust code because unforeseen failures can cause system instability"
  - ✅ "Handle errors by validating inputs. This prevents unexpected failures and makes debugging easier."
- Use imperative form
  - ❌ "It is recommended that you use version control"
  - ✅ "Use version control for all code"

---

### 4. Examples Over Abstract Description

**Generic AI:**
"Implementing a modular architecture with clear separation of concerns facilitates maintainability and scalability."

**Clear documentation:**
"Separate your code into modules. For example, put all database queries in `db.py`, all API routes in `routes.py`, and all business logic in `logic.py`. This makes it easier to test individual parts and reuse them in other projects."

**Why it matters:** Concrete examples are 100x more useful than abstract principles.

**How to do it:**
- For every concept, include a code snippet or worked example
- Show the bad way and the good way
  - ❌ This way / ✅ This way
- Include real file names and actual values

---

### 5. Honesty Over Marketing

**Generic AI:**
"Our cutting-edge AI-powered solution leverages machine learning to revolutionize user engagement."

**Clear documentation:**
"This tool uses natural language processing to extract key phrases from text. It works well for English text. It may struggle with slang, abbreviations, or mixed-language documents."

**Why it matters:** Readers trust documentation that's honest about limitations. Hype makes them skeptical.

**How to do it:**
- State what something does, not how revolutionary it is
  - ❌ "Seamlessly transforms your workflow"
  - ✅ "Reads CSV files and converts them to JSON"
- Mention limitations upfront
  - ✅ "Works with Python 3.10+. Does not support async/await in Python 3.9."
  - ✅ "This approach is fast for small datasets (< 1M rows). For larger datasets, use the database query instead."

---

## Phrase Substitutions

Replace generic AI phrases with clear language:

| Generic AI | Clear Documentation |
|------------|-------------------|
| "In today's digital landscape" | [Delete this. Start with the actual idea.] |
| "It is important to note that" | [Delete. Just state the fact.] |
| "As we all know" | [No. Not everyone knows. Explain it.] |
| "Cutting-edge technology" | [Be specific. What technology? What does it do?] |
| "Seamlessly integrate" | "Connects to" or "imports from" or [be specific] |
| "Leverage" | "Use" |
| "Synergistically optimize" | [Describe what actually happens. Stop using two words where one works.] |
| "End-to-end solution" | "Handles input, processing, and output" or [be specific] |
| "Empower users to" | "Users can" |
| "Deep dive into" | "Explain" or "describe" |
| "Best-in-class" | [Delete. What is it? How is it better?] |
| "Robust" | [Robust how? Fast? Reliable? Secure? Be specific.] |
| "Ecosystem" | "Set of tools" or [be specific] |

---

## The Clarity Checklist

Before publishing your documentation, check:

- [ ] **Specific language:** Could someone unfamiliar with your project understand this? Are you using concrete examples?
- [ ] **Active voice:** Can you identify who's doing the action in every sentence?
- [ ] **Direct instructions:** Do readers know what to do? Is the action before the explanation?
- [ ] **Examples:** Does every major concept have a code snippet or worked example?
- [ ] **Honesty:** Did you mention limitations? Are you claiming things you can't back up?
- [ ] **Sound like a human:** Read it aloud. Does it sound like something a person would say, or like a marketing department?

---

## Common Documentation Types

### API Documentation
- Lead with what the endpoint does
- Show the request and response format
- Include a working example
- List all parameters and what they do
- Mention rate limits or constraints

### README
- Lead with what the project does in one sentence
- Show how to install it
- Show a minimal working example
- Link to full docs
- Be honest about limitations and prerequisites

### Tutorials
- Show one specific task from start to finish
- Don't try to cover everything — cover one thing well
- Include the code and the output
- Explain why each step matters
- End with "next steps" that link to more advanced topics

### Code Comments
- Explain *why* the code is there, not what it does (the code already says what it does)
- Link to issues or discussions if relevant
- Point out non-obvious edge cases

---

## Example: Before and After

**Before (generic AI):**
> "Leveraging advanced data structures enables organizations to achieve optimal performance in complex computational scenarios through synergistic utilization of memory-efficient algorithms."

**After (clear documentation):**
> "Use a hash table instead of a list to look up items by name. This is much faster — O(1) instead of O(n) — and uses about the same memory."

---

## How to Apply This

1. **Read your documentation out loud.** Does it sound like you talking to a friend, or like a robot?
2. **Cut vague words.** Replace "important," "key," "critical" with specifics. Why is it important?
3. **Find the verb.** What's actually happening? Put the actor and the action at the start of the sentence.
4. **Add an example.** Every abstract principle needs a concrete example.
5. **Be honest.** What doesn't this do? What's the limitation?

---

## Evidence and Limitations

This framework is based on Google Developer Documentation Style Guide principles applied to reduce AI-generated prose. The style guide itself is well-established and widely used. Specific application to Claude-generated content is validated practice but not formally benchmarked here.
