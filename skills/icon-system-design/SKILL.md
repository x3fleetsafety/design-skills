---
name: icon-system-design
description: |
  Use when establishing an icon library. Covers stroke vs fill, weight, sizing, the choice of icon library (Lucide, Phosphor, Heroicons), custom icon creation, and accessibility.
---

# Icon System Design

Icons are a brand asset. Consistent icons = professional product.

## Pick ONE icon library

Established libraries to choose from:

| Library | Style | Weights | License |
|---|---|---|---|
| **Lucide** | Stroke, geometric | 1 (configurable) | Free, MIT |
| **Phosphor** | Stroke + fill, 6 weights | 6 | Free, MIT |
| **Heroicons** | Stroke + solid | 2 | Free, MIT (by Tailwind) |
| **Tabler** | Stroke, large set | 1 | Free, MIT |
| **Iconoir** | Stroke, friendly | 1 | Free, MIT |

For SaaS, **Lucide** or **Heroicons** are safe defaults. Pick one and stay.

## Icon sizing

Standard sizes in your system:
```
--icon-xs: 12px
--icon-sm: 16px
--icon-md: 20px (default)
--icon-lg: 24px
--icon-xl: 32px
```

Pair icon size with adjacent text:
- 12-13px text → 12-14px icon
- 16px text → 16-20px icon
- 24-32px display → 24-32px icon

## Stroke weight

Stroke icons should match the body weight of your typography:
- Inter weight 400 → stroke 1.5-2px
- Inter weight 500-600 → stroke 2-2.5px

Heavier strokes feel friendlier; lighter strokes feel technical.

## Color

Icons inherit `currentColor` from their parent. Set color on the parent, not the SVG:
```html
<button style="color: var(--accent)">
  <svg>...</svg>
</button>
```

## When custom icons matter

Pick custom (not from library) only when:
- Library doesn't have the concept (your brand metaphor)
- You're designing a product-specific icon language
- You're at brand-tier (premium, distinctive)

Custom icons cost: maintenance + style consistency drift.

## Accessibility

Icon-only buttons need labels:
```html
<button aria-label="Edit driver">
  <svg>...</svg>
</button>
```

Decorative icons:
```html
<svg aria-hidden="true">...</svg>
```

## Common mistakes

- Mixing libraries (Lucide + Heroicons in same screen) — visual chaos
- Inconsistent stroke weights — looks unfinished
- 12px icon next to 24px text — out of scale
- Icons without aria-labels — screen-reader broken
- Custom icons that don't match library aesthetic — clashes

## Where this fits in X3 Compass

X3 Compass uses emoji-as-icons (current MVP shortcut). Future migration to Lucide for production polish. Sizing 16-20px in nav, 24px in dashboard tiles.
