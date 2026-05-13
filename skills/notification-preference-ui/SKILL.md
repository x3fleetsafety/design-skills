---
name: notification-preference-ui
description: |
  Use when designing notification preferences. Covers channel selection (email, SMS, push), event-based vs role-based settings, snooze patterns, and the per-event-type granularity sweet spot.
---

# Notification Preference Ui

Notification preferences should be granular enough to silence noise, simple enough to configure in under 60 seconds.

## Channel options

Email, SMS, push (mobile), in-app, browser. Each channel can be enabled/disabled per event type.

## Granularity

Group events into categories (Compliance / Billing / Team / System). Toggle channel per category. Power users get per-event-type within category.

## Snooze patterns

1 hour, 1 day, 1 week, forever. With auto-resume timer visible. Useful for vacation / focus time.

## Test buttons

'Send test notification' on each row. Critical for trust — users want to verify before real events fire.

## Defaults

Critical (security, billing failure) — all channels on, can't disable. Important (compliance event) — email default, SMS optional. Informational (weekly digest) — email only, easy disable.

## Common mistakes

All-or-nothing toggle. No test button. No 'when' settings (immediate / digest / scheduled). No snooze. Critical alerts in same UI as marketing emails.

## Where this fits in X3 Compass

Applied in the X3 Compass build via the relevant pages and components.