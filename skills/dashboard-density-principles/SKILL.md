---
name: dashboard-density-principles
description: |
  Use when designing data-rich product dashboards. Covers when to use density vs whitespace, the canonical dashboard structure (header → KPI row → main grid → activity), KPI tile patterns, and the mistakes that make dashboards feel cluttered.
---

# Dashboard Density Principles

A dashboard balances density (show useful data) and whitespace (let the eye rest). Get it wrong either way and the dashboard fails — too dense = noise, too sparse = vacant.

## When to use density

Use HIGH density for:
- Operator dashboards (people doing this 8 hours/day)
- Executive overviews (need to scan many metrics fast)
- Comparison views (4+ items side-by-side)

Use LOW density for:
- Beginner / onboarding states
- Mobile views
- Customer-facing reports (less context needed)

## Canonical dashboard structure

```
┌──────────────────────────────────────────────┐
│ Header — title + actions (right-aligned)     │
├──────────────────────────────────────────────┤
│ Attention strip — 1-3 urgent items           │
├──────────────────────────────────────────────┤
│ KPI row — 4-6 tiles, single line             │
├──────────────────────────────────────────────┤
│ Main grid — primary content (60%) | side (40%) │
├──────────────────────────────────────────────┤
│ Activity feed / log                          │
└──────────────────────────────────────────────┘
```

## KPI tile patterns

A KPI tile shows ONE number, contextualized:
- Big number (28-36px)
- Label (12px caps, mist color)
- Optional trend indicator (↑ 4 vs last month)
- Optional sparkline or gauge

Don't overstuff. If you need 2 numbers, use 2 tiles.

## Color in dashboards

- Neutral backgrounds (don't use accent colors on backgrounds)
- Accent color reserved for: positive trends, primary CTAs, focus states
- Amber: warning thresholds
- Red: critical/error/at-risk
- No more than 4 colors on a single screen

## Common density mistakes

- 12 KPI tiles in a row → all look unimportant
- Tile titles 18px (too big) — they're labels, not headlines
- Every cell of a table has full-color background — eye fatigue
- Spacing 8px between dense cards → suffocating; use 12-16px even at high density
- No visual grouping — every element same border, no hierarchy

## Common low-density mistakes

- 1200px-wide dashboard with 3 KPI tiles → wasteful
- 80px padding around every card → wastes the canvas
- Charts at 600x300 next to a 14px label → out of scale

## Where this fits in X3 Compass

X3 Compass dashboard uses 6 KPI tiles in a row, attention strip on top, 1.6fr/1fr main grid, activity feed in side column. High density appropriate for safety operators.
