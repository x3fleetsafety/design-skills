---
name: micro-animation-budget
description: |
  Use when adding motion to a UI. Covers the principle of motion budget, the types of animations that earn their cost, easing curves, the duration scale, and when to default to no animation.
---

# Micro-animation Budget

Motion is a feature with cost: it taxes performance, taxes attention, and ages fast. A motion budget keeps your animations purposeful.

## The motion principle

Every animation should:
1. Communicate something (state, hierarchy, causality)
2. Be subtle enough to not draw attention away from content
3. Be FAST (under 300ms for most cases)
4. Be skippable via `prefers-reduced-motion`

If an animation doesn't communicate something, cut it.

## Duration scale

```
--motion-fast: 150ms       — small state changes, hover
--motion-medium: 250ms     — toggles, drawer open
--motion-slow: 400ms       — page transitions, modal entry
--motion-very-slow: 600ms  — celebratory moments only
```

Most animations should be FAST.

## Easing curves

```
--ease-standard: cubic-bezier(0.4, 0, 0.2, 1)  -- default
--ease-decelerate: cubic-bezier(0, 0, 0.2, 1)  -- entering
--ease-accelerate: cubic-bezier(0.4, 0, 1, 1)  -- exiting
```

Material's curves are battle-tested. Don't reinvent.

## What earns its motion cost

| Motion | Communicates | Worth it? |
|---|---|---|
| Button hover (translateY, glow) | Affordance | YES |
| Modal slide-in | Origin / dismissal | YES |
| Page transitions | Continuity | YES (fast) |
| Loading spinner | Activity | YES |
| Toast slide-in | Arrival | YES |
| Counter number animation | Magnitude | Maybe (sparingly) |
| Hero parallax | Aesthetic | Probably not |
| Cursor follow / spotlight | Aesthetic | Rarely |
| Confetti / celebration | Achievement | Once per session max |

## prefers-reduced-motion

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
  }
}
```

Test with the system setting enabled.

## Common mistakes

- Every section animates on scroll → "I'm scrolling, stop"
- 600ms hover transition → feels sluggish
- Page transition that hangs for 1+ sec → user thinks app crashed
- Parallax on the hero h1 → causes text to blur during scroll
- Looping background animation → drains battery, eye strain

## Where this fits in X3 Compass

X3 Compass uses 150-200ms hover transitions, 300ms modal entry, no scroll-driven animations on marketing, dashboard transitions instant.
