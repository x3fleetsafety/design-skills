---
name: logo-design-principles
description: |
  Use when designing or evaluating a logo. Covers the criteria for a great logo (memorable, scalable, distinctive, timeless), the canonical formats (icon + wordmark, monogram, wordmark only), and what to avoid.
---

# Logo Design Principles

A great logo is memorable at 16px and at 16 feet. Everything else is design ego.

## Criteria for a great logo

1. **Memorable** — can someone draw it from memory after one look?
2. **Scalable** — works at 16px (favicon) AND 200px (hero)
3. **Distinctive** — doesn't look like 5 competitors
4. **Timeless** — won't look dated in 5 years
5. **Versatile** — works in monochrome, on dark, on light, on photos

A logo that fails any of these is a logo in search of a brand.

## Format options

| Format | Example | When |
|---|---|---|
| Wordmark only | Stripe, Notion early | Strong name |
| Icon + wordmark | Most SaaS | Default, flexible |
| Icon only | Apple, Twitter pre-X | Established brand |
| Monogram | IBM, GE | Heritage / corporate |
| Lockup | X3 Fleet Safety | Brand + tagline together |

Pick based on brand maturity, not preference.

## What to avoid

- Trends (Web3 chrome, gradient blobs) — date in 2-3 years
- Complex illustration in the mark (won't scale to favicon)
- Three-color marks (limits use cases — single-color print, photo overlays)
- Letterforms with fancy strokes (don't reproduce in monochrome)
- "Hand-drawn" looks (perceived as unprofessional in B2B SaaS)

## Test the logo

Try these at design time:
- Render at 16px → still readable?
- Print on white paper → recognizable?
- Print on black paper (inverted) → works?
- Show in monochrome → still distinctive?
- Show to someone for 3 seconds, take it away, ask them to describe it → can they?

## File formats to provide

| Use | Format |
|---|---|
| Web | SVG (scales perfectly) |
| Favicon | SVG + 32×32 PNG fallback |
| Email signature | PNG @ 2x |
| App store | PNG @ 1024×1024 |
| Print / merch | EPS or AI |

## Logo lockup with tagline

When pairing logo + tagline (like X3 Fleet Safety):
- Tagline below the wordmark
- Tagline 30-40% the size of the wordmark
- Letter-spaced caps for monospace feel
- Use middots (·) or pipes (|) to separate parts

## Common mistakes

- 12 logo variants (color, mono, stacked, horizontal, dark, light, etc.) without a primary
- Logo that requires color to be recognizable
- Logo with fine detail that disappears at 24px
- "Modernizing" by adding gradient — usually makes it worse
- No clear-space rules — logo crammed against other content

## Where this fits in X3 Compass

X3 Compass uses the X3 Fleet Safety lockup pattern: [X3 box] + COMPASS + tagline. Logo is pure HTML+CSS for nav (renders reliably), single-file SVG for OG/email.
