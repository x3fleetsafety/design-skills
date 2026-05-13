---
name: typography-system-design
description: |
  Use when establishing or refining a typography system for a SaaS product or marketing site. Covers
  type stack selection, modular scale, line-heights, letter-spacing, and the type tokens every
  modern site needs. Includes the Inter/Geist/Söhne tradeoffs.
---

# Typography System Design

A typography system is 80% of brand perception. Most SaaS sites use the same 3–4 fonts; the differentiation is in the system around them.

## Choose ONE family for body, ONE for display, MAX

For 95% of SaaS sites, the answer is:
- **Inter** (Google Fonts, free, ubiquitous, neutral, excellent at all sizes)
- **Geist** (Vercel, free, slightly more character, very modern)
- **Söhne** (paid, premium, distinctive, used by Stripe and many others)
- **GT America** (paid, premium, more humanistic)

Use the SAME family for display and body unless you have a clear reason. The most boring choice is usually right.

## Type scale (modular)

Pick a 1.25 (major third) or 1.333 (perfect fourth) scale, anchored on 16px body:

| Token | Scale 1.25 | Scale 1.333 |
|---|---|---|
| xs | 11px | 11px |
| sm | 13px | 13px |
| base | 16px | 16px |
| lg | 18px | 20px |
| xl | 24px | 24px |
| 2xl | 32px | 32px |
| 3xl | 48px | 48px |
| 4xl | 64px | 64px |
| 5xl | 80px | 96px |

The 1.333 scale gives more drama for headlines. The 1.25 scale is more conservative.

## Line heights

| Use | Line-height |
|---|---|
| Hero / display | 1.05–1.1 |
| Section headers (H2/H3) | 1.2–1.25 |
| Body | 1.55–1.7 |
| Captions | 1.4–1.5 |
| Code / monospace | 1.5 |

Tighten display, loosen body. The biggest mistake is using one line-height everywhere.

## Letter-spacing (tracking)

| Use | Tracking |
|---|---|
| Display 48+ px | -0.02em to -0.04em (tighter) |
| H2/H3 24-32 px | -0.01em |
| Body 16 px | 0 |
| Caption 11-13 px | 0 to +0.02em |
| All-caps labels | +0.05em to +0.15em (looser) |

Display type tightens. All-caps loosens. Body stays neutral.

## Weight ladder

Pick 3–4 weights and use them consistently:
- **400** — body
- **500** or 600 — emphasized body, secondary buttons
- **700** — headlines (H2, H3)
- **800** or 900 — hero display

Don't ladder more than 4 weights. Don't use italic for emphasis on display — use weight instead.

## Common mistakes

- Two fonts that look almost-but-not-quite the same (Inter + Geist together is muddy)
- Hero text at 36px (too small for impact — modern hero is 48–80px)
- Body at 14px (too small for SaaS marketing — 16-17px is current standard)
- Line-height 1.5 on hero display (way too loose, makes display look bloated)
- Letter-spacing 0 on tiny all-caps (cramped and unreadable)

## Where this fits in X3 Compass

X3 Compass uses Inter exclusively for everything. Type tokens are defined in `brand/palette.css`. Display uses font-weight 900 with letter-spacing -0.02em.
