---
name: multi-brand-design-systems
description: |
  Use when designing for multiple sub-brands (e.g., X3 Compass + X3 Fleet Safety + X3 Investment Group). Covers token inheritance, white-label patterns, and the shared-vs-distinct architecture.
---

# Multi Brand Design Systems

Multi-brand systems share primitives, diverge on semantics.

## Architecture

Primitives shared across brands. Semantic tokens differ per brand. Component code shared; brand layer is just CSS variables.

## Brand inheritance

X3 Compass inherits from X3 brand. Overrides accent color, voice, tagline. Same component primitives.

## Theme switcher

data-brand='compass' on root. CSS variables change. Components don't know which brand they're in.

## White-label vs co-brand

White-label = customer's brand only. Co-brand = both visible. Different use cases, different patterns.

## Common mistakes

Forking components per brand (maintenance nightmare). Brand differences encoded in component code (inflexible). Multiple primitives diverging (drift).

## Where this fits in X3 Compass

Applied across the X3 Compass design system.