---
name: error-page-design
description: |
  Use when designing error pages (4xx, 5xx, app errors, form errors). Covers tone, what to include (clear cause + next action), and the difference between API errors and user-facing errors.
---

# Error Page Design

Errors are friction. Good error UX reduces the friction; bad UX amplifies it.

## Error page anatomy

Headline naming the problem (not just '500 Internal Server Error'). 1-paragraph explanation. Suggested action. Optional: technical details collapsed.

## Tone

Calm, specific, not performative. NEVER 'Oops!' or 'Yikes!' — sounds infantile.

## Suggested action

Always tell user what to do next: 'Refresh', 'Go to dashboard', 'Contact support', 'Try again in a few minutes'.

## Status codes

Show the HTTP status code in small text (helpful for support). Don't lead with it.

## 404 specifically

Friendly headline. Search bar. Links to most-visited pages. Image / illustration if brand allows.

## Common mistakes

Raw stack traces. 'Something went wrong.' (what? what now?). No way back. 'Oops! Hold on while we fix this.' performative tone. Error pages that look like the rest of the product is broken too.

## Where this fits in X3 Compass

Applied in the X3 Compass build via the relevant pages and components.