---
name: search-ui-patterns
description: |
  Use when designing search interfaces in a product. Covers input patterns, instant search, results layout, filters, no-results state.
---

# Search Ui Patterns

Search is high-frequency. Get the interaction right.

## Input patterns

Single text field with magnifying glass icon. Cmd+K opens command palette. Recent searches as suggestions.

## Instant search

Debounce 150-250ms. Show results in dropdown for global search; full-page for catalog-style.

## Result layout

Title (matched terms highlighted). Snippet showing matched text. Type indicator (record type). Last-modified date.

## Filters

Faceted (multi-select chips). Below or beside results. Clear filters button when active.

## No results

'No results for [query]'. Suggested searches. Spelling correction if applicable.

## Common mistakes

No debounce — server hammered. No instant feedback. No empty state. Search ignores typos. Recent searches not stored.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.