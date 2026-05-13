---
name: design-token-architecture
description: |
  Use when implementing a design token pipeline. Covers JSON token files, Style Dictionary, multi-platform output (CSS vars, iOS, Android, React Native), and how to organize tokens at scale.
---

# Design Token Architecture

At scale, tokens become a pipeline: JSON source → multiple platform outputs.

## The pipeline

```
tokens.json (source of truth)
    ↓
Style Dictionary (or similar)
    ↓
├─ CSS variables (web)
├─ JS / TS exports (React, Vue)
├─ iOS .swift constants
├─ Android XML resources
└─ Figma plugin sync
```

One source, many outputs. No drift.

## tokens.json structure

```json
{
  "color": {
    "primitive": {
      "teal": {
        "500": { "value": "#2DD4BF" },
        "600": { "value": "#14B8A6" }
      }
    },
    "semantic": {
      "accent": { "value": "{color.primitive.teal.500}" },
      "bg": { "value": "{color.primitive.gray.900}" }
    }
  },
  "space": {
    "4": { "value": "16px" }
  }
}
```

## Style Dictionary basics

Open-source from Amazon. Reads JSON, outputs to any platform.

```bash
npm install --save-dev style-dictionary
# Configure transforms
# Build to multiple outputs
```

Free, battle-tested, used by major design systems.

## Alternatives

- Tokens Studio (Figma plugin → JSON → Style Dictionary)
- Specify / Knapsack (paid, designer-friendly)
- Tailwind config (if you're committed to Tailwind)

## When to invest in a pipeline

| Team size | Approach |
|---|---|
| 1-5 designers/devs | CSS variables, no pipeline |
| 5-15 | Style Dictionary + Figma sync |
| 15+ | Custom pipeline + design tools |

Don't over-engineer early. Many great products use CSS variables only.

## Common mistakes

- Building a pipeline before having a clear token ladder
- Maintaining two sources of truth (Figma + code drift)
- Over-nesting JSON (depth 5+ = unworkable)
- Naming primitive tokens after products ("button-primary" should be semantic)
- Not transforming for platforms (iOS needs hex without `#`)

## Where this fits in X3 Compass

X3 Compass uses CSS variables only (no pipeline yet). At Tier 4 or beyond, would migrate to Style Dictionary with React + iOS outputs.
