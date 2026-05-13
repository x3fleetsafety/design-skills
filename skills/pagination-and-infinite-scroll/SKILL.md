---
name: pagination-and-infinite-scroll
description: |
  Use when designing pagination for tables, search results, lists. Covers when to use pagination vs infinite scroll vs load-more, and the user expectations for each.
---

# Pagination And Infinite Scroll

Pagination is for navigable data. Infinite scroll is for browsable content. Pick by use case.

## Pagination

Use for: tables, search results, things users navigate by exact position. Pattern: prev/next + page numbers + 'Showing 1-25 of 350' counter.

## Infinite scroll

Use for: social feeds, image galleries, content browse. NOT for tables or search where users need to find a specific item.

## Load more button

Hybrid. Loads next batch on click. Good middle ground for content that user might want to read sequentially but also wants control.

## Page size selector

25 / 50 / 100 / All. Default 25. Save preference.

## URL state

Pagination state in URL (?page=3). Sharable, bookmarkable, back-button-friendly. Critical.

## Common mistakes

Infinite scroll on data tables (lose your place). No URL state (back button breaks). No total count. 'All' option that loads 100K rows.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.