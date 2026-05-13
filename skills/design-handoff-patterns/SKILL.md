---
name: design-handoff-patterns
description: |
  Use when handing designs to engineering. Covers Figma handoff, design tokens export, spec annotation, the difference between handoff and collaboration, and the rituals that eliminate '?' Slack messages.
---

# Design Handoff Patterns

Good handoff is a continuous conversation, not a single Figma link.

## Pre-handoff hygiene

Before sharing a design:
- ☑ Components used (not detached layers)
- ☑ Auto-layout applied throughout
- ☑ Tokens used for colors / spacing / type
- ☑ Naming follows convention
- ☑ Mobile + desktop variants present
- ☑ Hover / focus / disabled states shown
- ☑ Empty / loading / error states covered

The 80% rule: if these aren't done, expect 80% more questions.

## Annotations to include

Annotate edge cases inline:
- Truncation rules ("name truncates with tooltip after 24 chars")
- Empty states ("if list is empty, show empty-state pattern")
- Loading states ("skeleton matches row height")
- Responsive breakpoints ("stacks vertically below 768px")
- Conditional UI ("admin sees delete button, others don't")
- Animation specs ("button lift 200ms, ease-out")

## Spec annotations vs comments

| Inline annotations | Comments |
|---|---|
| Permanent design specs | Conversational questions |
| Visible to all | Threaded discussion |
| Define behavior | Resolve ambiguity |

Use annotations for what eng needs to know. Comments for ad-hoc discussion.

## Handoff rituals

1. **Design review** with eng pair (live walk-through)
2. **Loom video** explaining decisions and intent
3. **Spec doc** for complex interactions
4. **Token export** if non-Figma-aware tools
5. **Sync after first mockup-to-code pass**

## What designers should NOT do

- Hand off a flat PNG (kills inspection)
- Use random hex values instead of tokens
- Skip the empty / error states
- Skip mobile
- Disappear after handoff (review is part of the job)

## What engineers should NOT do

- Refuse to ask questions ("I'll just figure it out")
- Substitute their own tokens / spacing without flagging
- Ship without designer review
- Add micro-animations without spec

## Token export

Use the Figma Tokens plugin (Tokens Studio) to export design tokens to JSON. Pipeline to CSS variables / native platforms via Style Dictionary.

## Common mistakes

- Designer ships Figma at "looks done" without empty / error states
- Engineer pixel-pushes from a static PNG without using tokens
- Two-way drift: code has tokens designer didn't see
- "Definition of done" includes screenshots but not interaction
- Handoff = end of designer's involvement

## Where this fits in X3 Compass

X3 Compass is currently no-Figma (Joshua + AI direct to code). When team grows, would add Figma + handoff rituals.
