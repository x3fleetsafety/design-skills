---
name: data-table-design
description: |
  Use when designing data tables in a product UI. Covers row height, column widths, sortability, sticky headers, empty/loading states, the cell type conventions (text, number, date, status), and pagination patterns.
---

# Data Table Design

Tables are how most B2B SaaS users actually spend their time. A great table system replaces 10 ad-hoc tables.

## Row height

| Density | Row height | Use |
|---|---|---|
| Compact | 32-36px | Bulk operations, scanning |
| Standard | 44-52px | Default |
| Comfortable | 56-72px | Touch / casual use |

Make this user-configurable when you can.

## Column widths

- Fixed widths for known content (status, date, action)
- Flex width for variable content (name, description)
- Min-width to prevent crush at small viewports
- Truncate with ellipsis + tooltip on hover

## Cell type conventions

| Cell type | Alignment | Format |
|---|---|---|
| Text (name) | Left | Normal weight, primary color |
| Number | Right | Tabular, monospace optional |
| Date | Left, fixed format | Relative ("2h ago") or absolute |
| Status | Left | Tag/pill with color |
| Action | Right | Icon button or text link |

## Sticky header

For tables longer than viewport, the header row should stick to top of scroll container.

## Sortable columns

- Click header to sort
- Indicator: arrow up/down next to column name
- Visible when active OR hover
- Default unsorted state visible on hover

## Empty state

When table is empty, show:
- Icon or illustration
- One-sentence explanation ("No drivers added yet")
- Primary action ("Add your first driver")

NEVER show an empty table with no context.

## Loading state

- Skeleton rows that match real row height
- 3-5 skeleton rows max (more is noise)
- Animate with subtle shimmer

## Pagination

For 20+ rows:
- Pagination at bottom: "Showing 1-25 of 350"
- Page numbers + prev/next
- Page size selector (25 / 50 / 100)

For 1000+ rows, use virtualization (windowing) instead.

## Row selection

For bulk actions:
- Checkbox at far left
- Header checkbox = select all
- Shift-click for range selection
- Bulk action bar appears below header when 1+ selected

## Common mistakes

- All cells same alignment (numbers left-aligned = hard to compare)
- No empty state → user thinks table is broken
- Truncating without tooltip → user can't see full data
- Row height < 32px → cramped, hard to click
- No sticky header → user loses orientation when scrolling

## Where this fits in X3 Compass

X3 Compass uses 44-52px standard rows on the drivers page, status pills in CSA column, right-aligned numbers, click-to-expand for action buttons.
