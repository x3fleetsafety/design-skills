---
name: scroll-driven-animations
description: |
  Use when adding scroll-triggered animations (reveal on scroll, parallax, sticky elements). Covers when scroll animations work, when they hurt UX, and the implementation patterns (Intersection Observer, CSS scroll-driven animations).
---

# Scroll-driven Animations

Scroll animations are like seasoning: a little adds character, too much ruins the dish.

## When scroll animations work

- Hero "scroll for more" indicator
- Sticky table of contents that highlights current section
- Numbers counting up when stat section enters view (sparingly)
- Sticky CTA bar that appears after the hero exits viewport

## When they hurt

- Reveal-on-scroll for every card (every section animates → user banner-blind)
- Slow parallax that makes content hard to read while scrolling
- Pinned sections that "trap" the scroll
- "Magic" effects that make horizontal scroll behave vertically (disorienting)

## Implementation patterns

### Intersection Observer (the workhorse)
Triggers when element enters viewport. Use for: lazy-load images, reveal animations, count-up triggers.

```js
const observer = new IntersectionObserver((entries) => {
  entries.forEach(e => {
    if (e.isIntersecting) e.target.classList.add('in-view');
  });
}, { threshold: 0.2 });
```

### CSS scroll-driven (new, modern browsers)
```css
.animate-on-scroll {
  animation: fade-up linear;
  animation-timeline: view();
  animation-range: entry 0% cover 30%;
}
```

Falls back gracefully when unsupported.

## Reveal-on-scroll rules

If you use it:
- 1-2 elements per section, NOT every element
- Duration: 400-600ms (slower than hover, faster than page)
- Fade-up by 12-20px (subtle, not dramatic)
- Once per page-load (don't replay on scroll back)

## Sticky elements

When sticky:
- Make clear what's sticky vs scrolling (different elevation/shadow)
- Keep sticky element compact (max 64px tall)
- Test on mobile where viewport is small
- Avoid stacking 2+ sticky elements

## Common mistakes

- Every section animates on entry → motion fatigue by section 3
- Parallax background that makes hero text blur during scroll
- Pinned section that hijacks scroll for 5+ seconds (user assumes broken)
- "Scroll-jacking" — overriding native scroll feel → instant motion sickness
- Reveal animation that fires every time element enters viewport (annoying)

## Where this fits in X3 Compass

X3 Compass uses sticky nav with backdrop-blur, no reveal-on-scroll (all content visible immediately), no parallax. Skill cards have hover lift only.
