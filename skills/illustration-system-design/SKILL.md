---
name: illustration-system-design
description: |
  Use when commissioning or creating illustrations for a SaaS product. Covers the canonical illustration styles (geometric, isometric, hand-drawn, abstract), when each works, sourcing strategies, and how to maintain consistency.
---

# Illustration System Design

Illustrations carry brand personality where photography can't. Choose a system, commit, maintain consistency.

## Canonical illustration styles

| Style | Examples | Best for |
|---|---|---|
| Geometric / minimal | Linear, Vercel | Tech-forward, neutral |
| Isometric | Old Stripe, Notion | Tools that connect things |
| Hand-drawn / squiggly | Notion's recent work | Friendly, approachable |
| Photographic + filter | Unsplash + treatment | Real-world businesses |
| 3D rendered | Apple, modern AI tools | Premium, futuristic |
| Abstract / generative | Vercel, AI products | AI / data products |

Pick ONE and commit. Mixing illustration styles screams startup.

## Color discipline

Illustrations should use the brand palette (max 4-5 colors from your tokens). Don't introduce new colors via illustration.

If your illustration provider gives you full-color rainbow versions, ask for monochrome + accent variants.

## Sourcing

| Option | Cost | Quality | Speed |
|---|---|---|---|
| Custom illustrator | $$$ | Highest | Slow (weeks) |
| Illustration library | $-$$ | Variable | Instant |
| Generative AI (Midjourney, etc.) | $ | Variable | Fast |
| In-house designer | $$ | Brand-fit | Medium |

Common libraries: unDraw (free), Storyset, Humaaans, Open Doodles.

If using a library, customize: change colors to match your tokens, NEVER use them with their stock colors.

## Where illustrations belong

- Empty states (the most common)
- 404 pages, error states
- Onboarding moments (welcome, completion)
- Hero sections (if abstract enough)
- Marketing pages explaining features

Don't use illustrations:
- In dashboards / app UI (clutter)
- For decoration where it doesn't carry meaning
- To replace clear UI (e.g., illustrated buttons)

## Sizing rules

| Use | Size |
|---|---|
| Empty state | 80-160px |
| 404 / error page | 200-320px |
| Hero illustration | 400-600px |
| Inline / spot | 40-64px |

## Common mistakes

- Three different illustration styles on the same site
- Illustrations with their original stock colors (unbranded)
- Illustration that doesn't relate to the content
- Hero illustration that obscures the value-prop
- Generic "people pointing at laptop" illustrations (clichéd)

## Where this fits in X3 Compass

X3 Compass currently uses zero illustrations (pure typography + gradient). Future: abstract geometric illustrations for empty states (subtle, monochrome with accent gradient).
