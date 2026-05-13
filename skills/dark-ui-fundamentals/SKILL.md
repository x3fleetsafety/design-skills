---
name: dark-ui-fundamentals
description: |
  Use when designing dark-themed interfaces. Covers contrast, layered backgrounds, type rendering on
  dark, the difference between "dark mode" (light UI inverted) and "dark UI" (designed dark-first),
  and the common mistakes that make a dark theme feel cheap.
---

# Dark UI Fundamentals

A great dark UI is not a light UI with the colors flipped. It's a system designed dark-first, with intentional choices about layers, accents, and type rendering.

## The four-layer model

Dark UIs feel cheap when there's only one background color. Build at least four layers:

| Layer | Hex (example) | Use |
|---|---|---|
| `ink` (deepest) | #0A1929 | Body background |
| `deep` | #0F2540 | Section backgrounds, cards inset 1 level |
| `surface` | rgba(255,255,255,0.03) | Cards on the deep layer |
| `surface-hover` | rgba(255,255,255,0.06) | Hover state on cards |

The trick: each layer is 1–2% lighter than the one beneath, creating depth without color. Stack 3-4 of them and the UI feels luxurious.

## Type rendering

Dark backgrounds make type rendering brittle:
- **Never** use pure white (#FFF) for body text — too harsh. Use #F8FAFC, #E2E8F0, or even #CBD5E1.
- Reduce font-weight one step compared to light themes (700 → 600, 400 → 400 looks "bolder" on dark).
- Add `-webkit-font-smoothing: antialiased` and `font-smoothing: antialiased` globally on dark.
- Use line-height 1.55–1.7 for body (slightly more than light themes).

## Accent colors on dark

- **One bright primary accent** (often saturated cyan/teal/blue/green) — does the work of buttons + links + active states.
- **One muted secondary** for differentiation (violet/purple/coral).
- **One warning** (amber) and **one danger** (red) reserved for state.
- Test accent visibility at 30% opacity — if it's hard to see, it won't work as a hover/border.

## Common cheap-feeling mistakes

- One flat background everywhere = looks like a slide deck
- Pure black (#000) backgrounds — too much contrast with type, eye fatigue
- Light shadows that "glow" — dark UI shadows should be inset highlights, not outset glows
- Borders using #FFF at 10% opacity everywhere — try #FFF at 6-8% for subtler depth
- Forgetting hover states — dark UI hover transitions are 30% more important than light

## Accessibility on dark

- WCAG AA: 4.5:1 for body text, 3:1 for large text/UI components
- Test EVERY text-on-background pair with contrast checker
- Dark themes are statistically harder for some users — provide a light-mode toggle when possible

## Where this fits in X3 Compass

X3 Compass uses the four-layer model (ink → deep → surface → surface-hover) with cyan-teal as primary accent and violet as secondary. Every dark UI skill in this corpus inherits these tokens.
