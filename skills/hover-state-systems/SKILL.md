---
name: hover-state-systems
description: |
  Use when designing hover states across a UI. Covers the canonical hover patterns (lift, glow, color shift, scale, content reveal), how to choose, and the hover states for every interactive element.
---

# Hover State Systems

Hover states are the invisible touch system. They tell users an element is interactive before they click.

## The 5 canonical hover patterns

| Pattern | Visual change | Use |
|---|---|---|
| Lift | translateY(-2 to -4px) + shadow | Cards, primary CTAs |
| Glow | box-shadow with accent | Buttons, focal elements |
| Color shift | Lighter/darker accent | Subtle inline links |
| Scale | scale(1.02-1.05) | Images, hero CTAs |
| Content reveal | Show hidden action | Edit icons on table rows |

Pick a system; reuse across the product.

## Hover specs by element

| Element | Hover |
|---|---|
| Primary button | Glow + slight translateY(-2px) |
| Secondary button | Background tint shift |
| Card | TranslateY(-3px) + shadow |
| Link | Color shift + underline |
| Icon button | Background fill |
| Table row | Background tint |
| Image | Scale(1.03) + brightness |
| Nav item | Color shift to accent |

## Duration

All hovers: 150-200ms.
Easing: `cubic-bezier(0.4, 0, 0.2, 1)`.

Too slow (300+ms) feels sluggish. Too fast (< 100ms) feels snappy-but-jittery.

## Hover on touch devices

Touch devices don't have hover. Solutions:
- `:active` state mimics hover briefly
- `@media (hover: hover)` to scope hover-only styles
- Long-press tooltip for items where hover-content is critical

## Hover for table actions

For actions hidden until hover (clean rows):
- Action buttons opacity: 0 by default
- Opacity: 1 on row hover
- Always visible on touch / when row is focused

Trade-off: hidden actions feel cleaner; visible actions are more discoverable.

## Hover + focus consistency

Focus state should mirror hover visually (with extra outline for keyboard):
```css
.btn:hover, .btn:focus-visible { /* same styles */ }
.btn:focus-visible { outline: 2px solid var(--accent); outline-offset: 2px; }
```

## Common mistakes

- No hover state → element looks broken / non-interactive
- Inconsistent hover patterns (cards lift, then images scale, then... )
- Hover state ONLY changes cursor (cursor: pointer is necessary but not sufficient)
- Hover state that requires sustained hover (e.g., hover delay 500ms before reveal)
- Hover states that don't work on touch

## Where this fits in X3 Compass

X3 Compass uses: primary buttons = glow + translateY, cards = translateY(-3px), nav links = color shift, table rows = background tint, dashboard tiles = subtle hover state.
