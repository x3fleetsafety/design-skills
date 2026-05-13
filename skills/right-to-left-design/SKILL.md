---
name: right-to-left-design
description: |
  Use when supporting right-to-left languages (Arabic, Hebrew, Persian). Covers direction flipping, layout mirroring, the icons that don't flip, and the CSS logical properties.
---

# Right To Left Design

RTL is more than text alignment. Layouts flip horizontally. Icons sometimes flip; sometimes don't.

## Layout flips

Use CSS logical properties (margin-inline-start instead of margin-left). HTML dir='rtl' attribute on root.

## Icons

Most don't flip (calendar, clock). Directional icons DO flip (left arrow → right arrow). Check icon library RTL support.

## Text

Body text aligns right. Numbers in mixed-direction text use bidi controls.

## Imagery

Photos of people facing right (looking at the content) — flip for RTL. Photos of products / scenes — usually don't flip.

## Testing

Real users in RTL languages. Auto-translation flags layout breaks but not semantic issues.

## Common mistakes

Text right-aligned but layout still LTR. Icons all flipped (arrows + clocks, breaking clocks). Photos of people facing away from content. No bidi handling for numbers / English embedded in Arabic.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.