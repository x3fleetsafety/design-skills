---
name: responsive-design-fundamentals
description: |
  Use when establishing breakpoints or auditing responsive behavior. Covers standard breakpoints,
  mobile-first vs desktop-first, the four core responsive patterns, fluid type with clamp(), and
  the viewports to actually test.
---

# Responsive Design Fundamentals

Responsive is not "make it shrink." It's three or four distinct layouts that swap at thresholds where content actually breaks.

## Standard breakpoints (Tailwind-aligned)

```
sm:  640px   — large phones
md:  768px   — tablets portrait
lg:  1024px  — tablets landscape, small laptops
xl:  1280px  — most laptops
2xl: 1536px  — desktops
```

For SaaS marketing, 80% of decisions happen at 768px (mobile→tablet) and 1024px (tablet→desktop).

## Mobile-first or desktop-first?

Mobile-first is standard. Why:
- Forces content priorities
- Smaller CSS payload on mobile
- Easier to maintain
- Better Core Web Vitals

Desktop-first is acceptable for internal apps where mobile is rare. Marketing sites are mobile-first.

## The four patterns

1. **Reflow** — Items stack. Grid 4-col → 2-col → 1-col.
2. **Reposition** — Sidebar moves left → bottom. Nav horizontal → hamburger.
3. **Reveal/Hide** — Some content hides below a breakpoint (mega-nav becomes simple list).
4. **Resize** — Sizes scale via `clamp()`. Hero h1: 80px → 48px → 36px.

90% of responsive design is composing these four.

## clamp() for fluid type

```css
font-size: clamp(36px, 6vw, 80px);
```

Scales fluidly between 36px (small) and 80px (large) using viewport width.

## Testing checklist

Test at these exact widths:
- 360px (small phone)
- 414px (iPhone Pro Max)
- 768px (iPad portrait)
- 1024px (iPad landscape, MacBook 13")
- 1440px (MacBook 16")
- 1920px (1080p desktop)

Use real devices when possible. Chrome DevTools approximates but misses real thumbprint usage and notch interference.

## Mobile nav patterns

- Hamburger menu (most common)
- Bottom tab bar (only if app-like)
- Slide-out drawer (great for many nav items)
- Full-screen overlay menu (modern, dramatic)

For SaaS marketing, slide-out drawer or full-screen overlay is current best practice.

## Common mistakes

- Designing only at 1440px, "checking responsive" once at the end
- Squishing 4-col grids to 4-narrow-col on mobile
- Hero h1 at fixed 64px (unreadable on mobile)
- 8-link nav with no mobile pattern
- Mobile padding 48px (wastes the small viewport)

## Where this fits in X3 Compass

X3 Compass uses 4 primary breakpoints (700px, 900px, 1100px, 1400px). Mobile-first. Hero uses clamp() for fluid display.
