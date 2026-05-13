---
name: offline-state-design
description: |
  Use when designing UI for offline + degraded-network states. Covers the patterns (banner, queue, retry, sync), and what to do when actions can't reach the server.
---

# Offline State Design

Offline is a real state for mobile, weak wifi, conferences. Handle it gracefully.

## Offline banner

Persistent top banner when offline. 'You're offline. Changes will sync when you reconnect.'

## Action queue

Mutations (save, delete) queue locally. Show 'Pending sync' state. Auto-retry on reconnect.

## Reads from cache

Recently-viewed data still readable offline. Mark with 'Cached' indicator.

## Sync resolution

When reconnecting: replay queue. Handle conflicts (rare): prompt user to resolve.

## Common mistakes

No offline indicator. Actions fail silently. No queue (user repeats action 5 times). Sync conflicts that delete data without warning.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.