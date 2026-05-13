---
name: toast-and-notification-design
description: |
  Use when designing transient feedback: toasts, snackbars, banner notifications, inline messages. Covers when to use each, positioning, duration, dismissal, severity levels, and the mistakes that make notifications annoying.
---

# Toast and Notification Design

Notifications inform; they don't interrupt. Get the balance wrong and your product feels chatty or untrustworthy.

## Notification taxonomy

| Type | Lifespan | Position | Use |
|---|---|---|---|
| Toast / snackbar | 3-6 sec | Bottom-right or bottom-center | Success / info |
| Inline banner | Until dismissed | In-context, top of region | Persistent warnings |
| Modal alert | Until dismissed | Center overlay | Critical / blocking |
| Page banner | Until dismissed | Top of page | Account-level notice |
| Notification center | Until read | Bell-icon panel | Async history |

## Severity / type

| Severity | Color | Icon |
|---|---|---|
| Info | Neutral / accent | ℹ️ |
| Success | Green / teal | ✓ |
| Warning | Amber / yellow | ⚠️ |
| Error / danger | Red | ✗ |

Don't overload colors. Reserve red for actual errors.

## Toast design

- Width: 280-440px
- Padding: 14-18px
- Border-radius: 8-12px
- One short message + optional action
- Position: bottom-right (desktop), bottom-center (mobile)
- Stack 3 max; older ones dismiss

## Toast duration

| Severity | Duration |
|---|---|
| Success | 3-4 sec |
| Info | 4-5 sec |
| Warning | 6-8 sec OR sticky |
| Error | 8-10 sec OR sticky |

Always include manual dismiss (X) — don't trust auto-dismiss alone.

## Action toasts

For undoable actions:
- "Driver deleted" + "Undo" button (sticky for 5 sec)
- Better than confirmation modal for low-stakes actions
- Click "Undo" to reverse; auto-disappears after timeout

## Inline banners

For persistent in-context warnings:
- Lives in the UI (not floating overlay)
- Has icon + message + optional CTA + dismiss X
- Color-tinted background matching severity

Example: "Your CSA Vehicle Maintenance percentile is approaching threshold. Review →"

## Notification center

For async events (the bell icon):
- Badge with unread count
- Click reveals dropdown / panel
- Group by date (Today / This week / Earlier)
- "Mark all read" button
- Each notification: icon + text + relative time + dismiss

## Don't notify for everything

Bad: toast for every save, every keystroke autosave, every field update.
Good: toast for explicit user actions with clear feedback.

The rule: if the user wouldn't notice the action mattered, don't notify.

## Common mistakes

- Auto-dismissing critical errors (user misses them)
- 5 toasts stacked, all 3 seconds → unreadable cascade
- Toast for save-on-blur (overkill — visual indicator suffices)
- Notification center with no "mark read" (clutter forever)
- Error toast that disappears before user can read it
- Toast positioned over the primary CTA (blocks the action)

## Where this fits in X3 Compass

X3 Compass uses bottom-right toasts for success / info, inline banners for compliance warnings, full notification center bell with grouping by date.
