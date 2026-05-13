---
name: email-template-design
description: |
  Use when designing transactional and marketing email templates. Covers the email-safe CSS subset, mobile-first widths, the canonical header / body / footer structure, and the anti-patterns that get caught in spam filters.
---

# Email Template Design

Email is its own design medium with its own constraints. Most CSS doesn't work. Most layouts must be table-based. Design for the lowest common denominator (Outlook on Windows).

## Email-safe constraints

Tables for layout (not flexbox). Inline CSS (not <style> tags — many clients strip). Max width 600px. No web fonts (use system fallbacks). No JS. No video (use animated GIF or static + 'play' overlay).

## Canonical structure

Header (logo, optional preheader text). Body (1-3 sections, max). CTA (1 primary button). Footer (unsubscribe, address, social).

## Mobile-first

Most email opens are mobile. Buttons must be 44px+ tall for thumb. Body text 14-16px minimum.

## Dark-mode handling

Some clients auto-invert. Test in Apple Mail dark mode. Set explicit colors via media queries when supported.

## Spam-filter avoidance

Don't use 'FREE' or 'WIN' in subject. Don't have only an image (text-to-image ratio matters). Real unsubscribe link required.

## Common mistakes

Designing in HTML/CSS like a webpage. No mobile testing. Web fonts that fall back ugly. Image-only emails. Long subject lines (>40 chars truncate).

## Where this fits in X3 Compass

Applied across the X3 Compass design system.