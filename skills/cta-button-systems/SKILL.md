---
name: cta-button-systems
description: |
  Use when designing button systems for a SaaS product or marketing site. Covers button hierarchy (primary/secondary/tertiary), sizing, language, placement, hover/focus states, and the most common button mistakes.
---

# CTA Button Systems

A button system is a hierarchy + a language + a set of states.

## Hierarchy (max 3 levels)

| Level | Visual | Use |
|---|---|---|
| Primary | Solid, gradient, or strong filled color | The single most important action on the page |
| Secondary | Ghost / outline | Secondary action ("Learn more") |
| Tertiary | Text link / minimal | Tertiary action, often inline |

A page should have ONE primary CTA per visible region. Two primaries = no primary.

## Sizing

| Size | Padding | Font size | Use |
|---|---|---|---|
| sm | 6px 12px | 12px | Inline, table actions |
| md | 12px 20px | 14px | Default everywhere |
| lg | 16px 28px | 16px | Hero CTAs, primary signup |
| xl | 20px 36px | 18px | Massive hero CTAs only |

Default to md. Size up for hero impact.

## Language

Use first-person verb + outcome:
- ✓ "Start my trial"
- ✓ "Get my free analysis"
- ✓ "Show me the dashboard"
- ✗ "Click here"
- ✗ "Submit"
- ✗ "Submit form"

CTAs are 2-4 words. "Get started" is acceptable but generic.

## Hover state

The most critical state — must change visibly on hover:
- Subtle Y-translate (-2px)
- Soft glow / shadow
- Slight color shift
- 0.15–0.2s transition

NEVER no hover state. NEVER instant snap (no transition).

## Focus state

For keyboard users (`:focus-visible`):
- 2-3px solid outline in accent color
- 2-4px offset from button
- Preserve hover state if mouse-hover-keyboard-focused simultaneously

## Disabled state

- 40-50% opacity
- `cursor: not-allowed`
- No hover state
- Tooltip explaining WHY it's disabled (always)

## Loading state

For async actions:
- Replace button text with spinner OR
- Show button text + small inline spinner
- Disable while loading
- Restore on completion or error

## Common mistakes

- Three primary CTAs on one page → no hierarchy
- "Submit" button — what does it submit?
- Disabled button without tooltip — frustrating
- No hover state — feels broken
- Outline button on dark bg without enough contrast
- Button text font-size 10px — unreadable
- Button width: 100% with content "OK" — wastes space

## Where this fits in X3 Compass

X3 Compass uses solid gradient primary, ghost secondary, text-link tertiary. Default size md, hero uses lg. All buttons have 0.2s translate-Y hover state.
