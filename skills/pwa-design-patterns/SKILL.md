---
name: pwa-design-patterns
description: |
  Use when designing a Progressive Web App. Covers the install prompt, offline state, push notifications, and the design differences between PWA and native.
---

# Pwa Design Patterns

PWAs blur web and app. Design for the in-between.

## Install prompt

Browser-native (chrome shows 'Install app'). Don't fight it. Optional: gentle in-app prompt after engagement.

## Offline state

Cache critical screens. Show offline banner when no connection. Re-sync on reconnect.

## Push notifications

Ask for permission ONLY after engagement (never on first load). Explain WHY you want to notify.

## App-shell pattern

Cache the navigation chrome. Content loads dynamically. Feels app-like even on slow networks.

## Common mistakes

Asking for install on first load. Asking for notifications before user has done anything. No offline state. Fighting browser's native install prompt.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.