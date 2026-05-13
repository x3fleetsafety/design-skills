---
name: color-system-design
description: |
  Use when establishing a color system for a SaaS product, marketing site, or brand. Covers tokens,
  semantic naming, accent strategy, accessibility (WCAG contrast), dark vs light considerations, and
  when to use gradients.
---

# Color System Design

A color system is not a palette. A palette is a list of colors; a system is the *rules* about which color goes where.

## Token architecture

Two-layer token system:

**Primitive tokens** (raw hex values, never used directly in UI):
```
--blue-500: #3B82F6
--teal-500: #2DD4BF
--gray-50: #F8FAFC
--gray-900: #0F172A
```

**Semantic tokens** (refer to primitives, used in UI):
```
--color-text-primary: var(--gray-50)
--color-text-secondary: var(--gray-300)
--color-bg: var(--gray-900)
--color-accent: var(--teal-500)
--color-link: var(--teal-500)
```

The semantic layer is what changes between light/dark themes. The primitive layer is constant.

## Accent strategy

For SaaS, 1 primary accent, sometimes 2, never more than 3.

- **1 primary accent** carries buttons, links, focus states, active nav, ~80% of color usage
- **1 secondary accent** for differentiation (premium tier, partner program)
- **1 warning** (amber) reserved for state
- **1 danger** (red) reserved for error / destructive

If you add a 5th accent, you've started a new brand.

## Semantic neutral ladder

Most of a SaaS UI is neutrals. Define them as a ladder:

```
text-primary    #F8FAFC
text-secondary  #E2E8F0
text-tertiary   #94A3B8
text-disabled   #64748B
text-inverse    #0F172A
```

Plus matching surface ladder for backgrounds.

## Accessibility minimums

WCAG AA (baseline):
- 4.5:1 contrast for body text
- 3:1 for large text (18pt+ or 14pt+ bold) and UI components

Pure white on pure black is usually wrong — #F8FAFC on #0A1929 reads better and hits AAA.

## When to use gradients

- ✓ Once in the hero (gradient text on the h1)
- ✓ On primary CTAs
- ✓ As subtle background washes (10-15% opacity)
- ✗ Multiple gradient surfaces on the same page
- ✗ Gradients on body text (unreadable at small sizes)
- ✗ Gradient EVERYTHING — this trend will date

## Common mistakes

- 7 accent colors → looks like a startup deck
- Light gray on white at 3:1 contrast → fails WCAG
- Hard-coded hex throughout → impossible to theme
- "Brand red" used for buttons AND errors → ambiguous
- Different shades of teal in different places → drift

## Where this fits in X3 Compass

X3 Compass uses cyan-teal #2DD4BF primary, violet #8B5CF6 secondary, amber #FBBF24 warning, red #EF4444 danger. Token model in `brand/palette.css`.
