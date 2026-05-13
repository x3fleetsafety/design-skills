---
name: skeleton-loaders
description: |
  Use when designing loading states for async content. Covers skeleton loader anatomy, when to use vs spinner, the shimmer animation, and the rules to avoid loader fatigue.
---

# Skeleton Loaders

Skeletons feel faster than spinners. Used right, they preview the content shape and reduce perceived wait.

## When to use skeleton vs spinner

| Load time | Pattern |
|---|---|
| < 200ms | None (avoid flash) |
| 200-500ms | Spinner |
| 500ms - 3s | Skeleton |
| 3s+ | Skeleton + progress indicator |

## Skeleton anatomy

A skeleton is a low-fidelity placeholder that matches the final content:
- Rectangles for text (vary height to match font-size)
- Circles for avatars
- Match approximate widths (don't make all rectangles 100% wide)
- Use the surface-elevated color, not a different color

## Shimmer animation

Subtle moving gradient that signals "loading":
```css
.skeleton {
  background: linear-gradient(90deg,
    rgba(255,255,255,0.03) 0%,
    rgba(255,255,255,0.08) 50%,
    rgba(255,255,255,0.03) 100%);
  background-size: 200% 100%;
  animation: shimmer 1.5s ease-in-out infinite;
}
@keyframes shimmer {
  0% { background-position: -200% 0; }
  100% { background-position: 200% 0; }
}
```

## How many skeleton items

For lists: 3-5 skeleton rows. More creates noise.
For cards: 3-6 skeleton cards in a grid.
For tables: 5-8 skeleton rows with cell-matched widths.

## Skeleton vs blurred preview

For images: blurred low-res preview (BlurHash) is better than a skeleton rectangle. Shows the content shape while it loads.

## When NOT to skeleton

- < 200ms loads (flashes in/out, feels broken)
- Initial app shell (use spinner; user expects it)
- Static content (no async; just show it)
- Error / empty states (skeleton implies "coming" — wrong if it's not)

## Common mistakes

- Skeleton that doesn't match content shape (all rectangles 100% wide for paragraphs of varying length)
- Shimmer animation too fast (jittery) or too slow (3s+, ignored)
- Skeleton for sub-200ms loads (flash)
- Skeleton stays after content loads (forgot to remove)
- Different color than the actual surface (looks broken)

## Where this fits in X3 Compass

X3 Compass uses skeleton on dashboard tile fetches (200-1000ms typical), skeleton table rows on drivers page, spinner-only for AI response wait (>200ms).
