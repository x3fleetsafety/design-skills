---
name: saas-billing-ui-patterns
description: |
  Use when designing the in-product billing UI: current plan, payment method, invoices, upgrade flow. Covers transparency, the cancel flow, dunning, and the trust-building patterns.
---

# Saas Billing Ui Patterns

In-product billing UI is where customers come when they want to leave. Make it transparent and frictionless — even when cancelling.

## Current plan display

Show: tier name, monthly cost, next bill date, what's included, usage vs limits. Big and clear, not hidden.

## Payment method

Show last 4 digits + brand. Easy 'Update card' button. Stripe Customer Portal handles this well.

## Invoice history

Table of past invoices, downloadable PDFs, paid/unpaid status. Reachable in 2 clicks max.

## Cancel flow

Self-serve cancel button. NO retention dark patterns ('Are you sure?' loops, downgrade-instead pressure). Acknowledge feedback briefly, confirm cancel, send confirmation email.

## Dunning (failed payments)

Email + in-app banner. Don't disable access on first failure. Grace period 3-7 days. Make it easy to fix.

## Common mistakes

Hiding cancel behind support email. Mandatory retention call. Multiple 'are you sure?' prompts. Downgrade pre-selected for the user. No invoice download.

## Where this fits in X3 Compass

Applied in the X3 Compass build via the relevant pages and components.