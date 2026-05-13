---
name: transition-and-easing-systems
description: |
  Use when establishing the motion tokens for a product. Covers transition properties, the easing curve library, the duration scale, and what to set globally vs per-component.
---

# Transition and Easing Systems

A transition system is tokens for motion. Without it, animations feel random.

## Token architecture

```css
:root {
  /* Durations */
  --motion-instant: 50ms;
  --motion-fast: 150ms;
  --motion-medium: 250ms;
  --motion-slow: 400ms;
  --motion-very-slow: 600ms;

  /* Easings */
  --ease-standard: cubic-bezier(0.4, 0, 0.2, 1);
  --ease-decelerate: cubic-bezier(0, 0, 0.2, 1);
  --ease-accelerate: cubic-bezier(0.4, 0, 1, 1);
  --ease-spring: cubic-bezier(0.34, 1.56, 0.64, 1);
}
```

Use tokens; never inline durations.

## When to use each easing

- **Standard** — default for hovers, color shifts, basic transitions
- **Decelerate** — entering content (modal slide-in, drawer open)
- **Accelerate** — exiting content (modal close, drawer close)
- **Spring** — playful arrival (toasts, achievement moments) — use sparingly

## What transitions to set globally

A baseline global transition is fine:
```css
*, *::before, *::after {
  transition: background-color 200ms, color 200ms, border-color 200ms, opacity 200ms;
}
```

But scope tighter when you need precise control on specific properties.

## What to transition per-component

Don't transition `width`, `height`, `top`, `left`, `padding` globally. Performance cost.

Transition only:
- `transform` (translate, scale, rotate)
- `opacity`
- `background-color`
- `color`
- `border-color`
- `box-shadow`

## Will-change

Hint the browser to GPU-accelerate when needed:
```css
.modal { will-change: transform, opacity; }
```

Use sparingly — over-use can hurt performance.

## Common mistakes

- Transition: all 300ms on a complex component (transitions layout properties)
- No transition on hover (instant snap feels broken)
- 600ms hover transition (sluggish)
- Inconsistent durations (some 200ms, some 350ms, some 500ms)
- Easing curves invented per-component (drift)

## Where this fits in X3 Compass

X3 Compass uses the token system above. Default transition 0.2s on hover, 0.18s on cards, 0.25s on modals.
