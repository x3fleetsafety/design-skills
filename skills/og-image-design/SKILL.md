---
name: og-image-design
description: |
  Use when designing Open Graph / Twitter Card preview images. Covers sizing, the typography that works at preview size, brand consistency across multiple URLs, and dynamic OG image generation.
---

# Og Image Design

OG images are the preview cards on social. Designed poorly, they hurt. Designed well, they pull clicks.

## Sizes

Standard: 1200×630 (1.91:1). Twitter Cards: 1200×600 or 1500×500 for large card. Same image works for most platforms.

## Typography at preview size

Body 11-13px in real life shows as TINY in OG image. Use 48px+ for headlines. Bold weight. High contrast.

## Brand consistency

Same template for every OG image. Logo + headline + accent color. User shouldn't have to guess who you are.

## Dynamic generation

For blog / per-page: generate OG images dynamically (Vercel OG, Cloudinary, similar). Pull title + author + date into a template. Saves hours of manual work.

## Test

Use Twitter Card Validator, Facebook Sharing Debugger. Image must load (cached aggressively). Test on a phone — most opens are mobile.

## Common mistakes

Tiny text. No logo (no brand recognition). Same OG image for every page. Forgotten when site redesigns. Image too large (slow load on social).

## Where this fits in X3 Compass

Applied across the X3 Compass design system.