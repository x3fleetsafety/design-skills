---
name: ai-pair-design-workflows
description: |
  Use when working with AI as a design partner (Claude, GPT, Midjourney, v0). Covers the workflows that make AI useful, when to lead vs let-AI-lead, prompting for design output, and the limits of AI design today.
---

# AI-Pair Design Workflows

AI is now a real design collaborator. Used well, it 3x's a designer's output. Used poorly, it produces noise.

## What AI is good at (2025)

- Brainstorming layouts (give it constraints, get 5 options)
- Code generation from screenshots (v0, Bolt, Claude artifacts)
- Iterating on copy (microcopy, error messages, tone)
- Generating illustrations / imagery (Midjourney, DALL-E, Flux)
- Critiquing your design (paste, ask for issues)
- Translating designs across themes (light → dark, brand A → brand B)
- Writing component code from design specs
- Documentation generation

## What AI is bad at (still)

- Strategic design decisions (which feature to prioritize)
- Brand-defining moments (logo from scratch)
- Empathy with specific users (real research still required)
- Cross-screen consistency (each generation is local)
- Original creative breakthroughs (good at variations, rarely at leaps)

## Workflow patterns

### Pattern 1: Brief → variants
Give AI a clear brief, get 3-5 variants. Pick the strongest, iterate.

### Pattern 2: Sketch → high-fidelity
Hand-sketch your idea, give to AI for refinement.

### Pattern 3: Code-first design
Skip Figma entirely. Build directly in code with AI as co-pilot (Claude artifacts, v0, Bolt).

### Pattern 4: Asynchronous critique
Paste your design or code, ask AI for "5 critiques" before showing to a human reviewer.

## Prompting for design

Bad prompt: "Make a landing page for X"
Good prompt: "Build a hero section for a SaaS compliance tool. Dark theme. Strikethrough pricing pattern (was $130K, now $79). Include 6 trust signals below CTA. Use Inter font. Style like virginclaw.app — dense, modern, gradient accents."

Specifics → specifics. Vague → vague.

## Reviewing AI output

AI generates plausible designs but often misses:
- Real edge cases
- Accessibility
- Internal consistency across screens
- Brand voice nuance

Always human-review before shipping.

## Limits of AI today

- Can't see your existing product (without giving context)
- Doesn't know your users (without context)
- Doesn't track its own consistency across long sessions (drifts)
- May invent typography / colors not in your system
- Can produce code that "works" but isn't maintainable

## Common mistakes

- Vague prompts → vague output
- Accepting first generation without iteration
- AI generates → no human review → ship → regret
- Letting AI invent tokens instead of using yours
- Asking AI to "be creative" without constraints (worst output)

## Where this fits in X3 Compass

X3 Compass was largely AI-paired design (Claude + Joshua). Skills like THIS one are part of the AI-pair toolkit. AI suggests; human decides; AI generates implementation; human reviews.
