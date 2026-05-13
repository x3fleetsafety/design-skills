---
name: core-web-vitals-design
description: |
  Use when designing for Core Web Vitals specifically. Covers each metric, the design patterns that improve them, and how to balance vitals with visual richness.
---

# Core Web Vitals Design

Core Web Vitals are real ranking factors AND real user experience.

## LCP optimization

Identify the largest element (usually hero image or h1). Preload critical resources. Use modern image formats. Reduce above-the-fold web font weight.

## INP / FID

Reduce JS execution time. Break up long tasks. Use Web Workers for heavy compute. Defer non-critical JS.

## CLS

Reserve space for images (aspect-ratio). Avoid injecting content above viewport. Reserve space for ads, embeds, late-loading components.

## Common mistakes

Hero image loaded after webfont (LCP slow). Heavy analytics on first paint (INP). Late-injected banner shifting layout (CLS).

## Where this fits in X3 Compass

Applied across the X3 Compass design system.