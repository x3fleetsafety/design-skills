---
name: responsive-images
description: |
  Use when designing responsive image strategy. Covers srcset, picture element, lazy loading, blur placeholders, and the trade-offs between performance and quality.
---

# Responsive Images

Images are the biggest performance cost. Responsive images shave loading time without sacrificing quality.

## srcset

Provide multiple image sizes. Browser picks the right one based on viewport + DPR.

## Picture element

Different images for different breakpoints (e.g., horizontal hero on desktop, vertical hero on mobile).

## Lazy loading

loading='lazy' on offscreen images. Native browser support. No JS needed.

## Blur placeholders

Show low-res blurred placeholder (BlurHash) while full image loads. Modern hero experience.

## Modern formats

WebP / AVIF have 30-50% better compression. Fall back to JPG / PNG.

## Common mistakes

Single huge image for every device. No lazy loading (loads images user never scrolls to). No blur placeholder (content shifts). No modern formats.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.