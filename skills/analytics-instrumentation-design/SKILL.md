---
name: analytics-instrumentation-design
description: |
  Use when designing analytics instrumentation as a design discipline. Covers event taxonomy, naming conventions, the design-team's role, and the patterns that surface real insights vs vanity metrics.
---

# Analytics Instrumentation Design

Analytics events are designed, not just added.

## Event taxonomy

Object_action format: 'driver_added', 'subscription_canceled'. Consistent verb tense (past).

## Properties

Standard properties on every event (user_id, tenant_id, plan_tier, page). Event-specific properties for the action.

## Funnel events

Define the conversion funnel: visit → signup_started → signup_completed → first_value → first_payment. Track each.

## Design team role

Design specifies events at design time. Instrumented before launch. Reviewed post-launch.

## Common mistakes

Events named inconsistently. Missing properties (can't slice). No funnel defined. Events tracked but never analyzed.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.