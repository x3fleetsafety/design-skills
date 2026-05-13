---
name: account-settings-design
description: |
  Use when designing account settings pages. Covers the canonical sections, the left-nav vs tab pattern, danger zones, and how to organize 30+ settings without overwhelming.
---

# Account Settings Design

Settings should be predictable. Users come here once, find what they need, leave. Surprise = bad.

## Canonical sections

Account / Profile · Billing · Notifications · Team · Security · API/Webhooks · Integrations · Danger zone. Each in its own section, left-nav or tab.

## Layout pattern

Left-nav with section anchors works for 5+ sections. Single-column with anchor-link table-of-contents for fewer.

## Field grouping

Related fields together (name + email together; password + 2FA together). Save button per section, not one global save.

## Save patterns

Per-field save (inline, immediate) for atomic settings. Per-section save for related groups. Auto-save with subtle indicator for frequent changes.

## Danger zone

Always at the bottom, visually separated, red accent. Cancel subscription. Delete account. Reset data. Confirmations required.

## Common mistakes

Settings buried in nested menus. 'Save' button only at bottom of 30 fields. No save confirmation. Mixing critical (password) with cosmetic (theme) in same form.

## Where this fits in X3 Compass

Applied in the X3 Compass build via the relevant pages and components.