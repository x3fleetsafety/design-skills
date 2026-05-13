---
name: empty-states-loading-states
description: |
  Use when designing the moments before content exists: empty states (no data yet), loading states (data fetching), and zero-result states (filtered out). Covers patterns, skeleton loaders, and the difference between great empty states and broken-feeling ones.
---

# Empty States and Loading States

The moments before content arrives or after it's filtered away are where products feel broken or polished.

## Empty state anatomy

For a "no data yet" state:
1. Icon or illustration (40-80px, subtle)
2. Headline (16-18px, primary color) — "No drivers added yet"
3. Subtext (13-14px, mist color) — "Add your first driver to get started"
4. Primary CTA — "+ Add driver"
5. Optional: link to docs / help

## When to show vs when to skip

| Situation | Show empty state |
|---|---|
| First-time user, no data yet | YES — guide them |
| User has data, filter returns nothing | YES — "No drivers match this filter" |
| Background fetch | NO — show loading state |
| Permission denied | YES — "You don't have access" + how to get it |
| API error | YES — error state with retry |

## Loading state patterns

| Pattern | When |
|---|---|
| Spinner | Quick load (< 1 sec) |
| Skeleton loader | Standard load (1-3 sec) |
| Progress bar | Long async (3+ sec, can show %) |
| Optimistic UI | Mutation (update before server confirms) |

## Skeleton loader rules

- Match the shape of the final content (not generic gray blocks)
- Use animated shimmer (subtle, 1.5-2s loop)
- Show 3-5 skeleton items max for lists (more is noise)
- Don't show skeleton for < 200ms loads (flash)

## "No results" state (filter empty)

Different from "no data" empty state:
- "No drivers match this filter"
- Show what filters are active
- "Clear filters" button
- "Try a different search"

## Error states

For API failures:
- Plain-language error: "Couldn't load drivers. Please try again."
- "Retry" button
- "Contact support" link if persistent
- NEVER show raw error codes to users (log them for support)

## Loading states for AI workflows

AI-specific:
- "Compass is thinking..." instead of "Loading"
- Show what step is happening if multi-step
- Stream responses when possible (don't wait for full response)
- Show estimated time when long (>5 sec)

## Common mistakes

- "Loading..." text with no spinner (just hangs)
- Empty state with no action ("you have no items" — what now?)
- Skeleton loader for a fast (<200ms) call (flashy and disorienting)
- Pure spinner for 10+ second wait (user assumes hung)
- Error state with stack trace (terrifying to non-technical users)

## Where this fits in X3 Compass

X3 Compass uses skeleton loaders on the dashboard during fetch, contextual empty states ("No drivers added yet — add your first") with primary CTA, AI workflows stream tokens as they arrive.
