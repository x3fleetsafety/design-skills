---
name: bulk-action-ui-patterns
description: |
  Use when designing bulk actions on tables or lists. Covers select-all patterns, the bulk-action bar, destructive bulk operations, and undo.
---

# Bulk Action Ui Patterns

Bulk actions are power-user features. Get them wrong and users delete the wrong rows.

## Select pattern

Checkbox in first column. Header checkbox = select all visible. Cmd-click + shift-click for range.

## Bulk action bar

Appears below header when 1+ rows selected. 'X selected' + action buttons. Right-aligned 'Clear selection'.

## Destructive actions

Confirm count + type ('Delete 47 drivers?'). Type-to-confirm for very destructive operations.

## Undo

After bulk delete: toast with 'Undo' button for 10-30 seconds. Reversible until then.

## Common mistakes

No confirmation on delete-many. 'Select all' selects all 10,000 rows, not just visible page. No undo. Bulk action bar that obscures the data it's acting on.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.