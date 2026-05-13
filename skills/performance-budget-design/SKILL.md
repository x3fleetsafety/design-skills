---
name: performance-budget-design
description: |
  Use when designing for performance. Covers Core Web Vitals, the design decisions that affect performance (web fonts, images, JS), and the budget framework.
---

# Performance Budget Design

Performance is a design decision. A beautiful page that takes 8 seconds to load is broken.

## Core Web Vitals

LCP (Largest Contentful Paint) < 2.5s. FID/INP (Input) < 200ms. CLS (Cumulative Layout Shift) < 0.1.

## Performance budget

Total page weight target (e.g., < 1MB). JS budget (< 200kB). Image budget. Track per-page.

## Design decisions that hurt

Web fonts (200-500kB). Hero videos. Unoptimized images. Heavy animations. Third-party scripts (analytics, chat widgets).

## Design decisions that help

System fonts. Static hero. Responsive images. CSS animations over JS. Lazy-load below fold.

## Common mistakes

Designing in Figma, never opening DevTools. Web fonts blocking render. Hero images 3MB. Lighthouse scores 50/100 ignored.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.