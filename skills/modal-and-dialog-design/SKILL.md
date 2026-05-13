---
name: modal-and-dialog-design
description: |
  Use when designing modal dialogs, confirmation dialogs, side drawers, and overlays. Covers when to use each, sizing, escape behavior, focus trapping, and the patterns that don't feel obtrusive.
---

# Modal and Dialog Design

Modals are interruptions. Use them sparingly, design them well, escape them easily.

## Modal vs side drawer vs inline panel

| Pattern | When |
|---|---|
| Modal (centered overlay) | Confirmation, short form, critical decision |
| Side drawer | Editing a record, detailed form, multi-step |
| Inline panel | Quick edit in place, expand a row |
| Bottom sheet (mobile) | Modal equivalent on mobile |
| Toast (no overlay) | Notifications, status, undo |

## Modal sizing

| Use | Width | Height |
|---|---|---|
| Confirmation | 360-440px | Auto |
| Form | 480-640px | Auto |
| Wide form / multi-column | 720-880px | Up to 80vh |
| Image / content | 80% viewport | Up to 90vh |

Always max-height: 90vh with internal scroll. NEVER let modal go beyond viewport.

## Modal structure

1. **Backdrop** — dark, 60-80% opacity, dismisses on click
2. **Modal container** — centered, max-width, rounded corners
3. **Header** — title + close (X) button
4. **Body** — main content, scrollable if tall
5. **Footer** — Cancel + Primary action buttons (right-aligned)

## Escape behavior

- Esc key dismisses (always)
- Click backdrop dismisses (except destructive)
- X button dismisses (always)
- Click outside body dismisses (debatable; safer to require explicit close)

## Focus trap

When modal opens:
- Focus moves to the first focusable element
- Tab cycles within modal only
- Shift+Tab cycles backward within modal
- Esc returns focus to where it was before modal opened

## Confirmation modals

For destructive actions:
- Clear warning text
- Show what's being deleted (item name)
- Cancel button gets defaults focus (NOT the destructive button)
- "Delete" button colored danger (red)
- For very destructive actions: type-to-confirm pattern ("Type 'delete' to confirm")

## Side drawer

Use for longer forms or editing complex records:
- Right side, slides in from edge
- 400-600px wide
- Same close/escape behavior as modal
- Can overlay (semi-modal) or push content (non-modal)

## Mobile bottom sheets

On mobile, replace centered modals with bottom sheets:
- Slides up from bottom
- 60-90% of viewport height
- Drag-down to dismiss
- Same content as desktop modal

## Common mistakes

- Multiple modals stacked (always close current before opening new)
- Modal that can't be closed (no X, no escape, no backdrop dismiss)
- Tiny modal with massive content — internal scroll bad UX, redesign as page
- Confirmation modal where Cancel is the primary button (defeats safety)
- Mobile modal full-screen no easy dismiss (back button only)

## Where this fits in X3 Compass

X3 Compass uses modals for confirmations, side drawers for record editing (driver detail, vehicle detail), bottom sheets on mobile. All have Esc + backdrop dismiss + focus trap.
