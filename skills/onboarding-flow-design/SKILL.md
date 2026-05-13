---
name: onboarding-flow-design
description: |
  Use when designing the first-time user experience. Covers the canonical onboarding patterns (checklist, progressive disclosure, tour, empty-state guidance), when to use each, and how to balance helpfulness with friction.
---

# Onboarding Flow Design

Onboarding determines lifetime value. A user who hits "aha" in 5 minutes stays. A user who feels lost in 5 minutes leaves and doesn't come back.

## The four onboarding patterns

### 1. Checklist (most common)
A persistent list of tasks the user can work through in their own time. Visible on dashboard until complete.

**Best for**: Complex products with multi-step setup (CRM, fleet management, analytics).

### 2. Interactive tour / coachmarks
Overlay tooltips that guide the user through key features on first login.

**Best for**: UI-heavy products where the user needs to know WHERE features live.

**Anti-pattern**: 12+ coachmarks on first load — overwhelming.

### 3. Empty-state guidance
The product is empty until the user adds their first data. Every empty state has a primary action.

**Best for**: Product where the data IS the value (notes apps, fleet rosters).

### 4. Wizard / setup flow
A linear, forced flow before the user sees the full product.

**Best for**: Heavy setup (billing setup, integrations, compliance config).

**Anti-pattern**: Forcing a wizard when only 30% of the wizard applies to all users.

## Pick the right pattern

Most modern SaaS uses CHECKLIST + EMPTY-STATE GUIDANCE in combination.

Wizards are falling out of favor — they feel like a barrier.

## "Aha moment" mapping

Before designing onboarding, define the aha moment:
- For Compass: "Holy crap, it answered my regulatory question with the CFR cited"
- For Stripe: "I made my first test payment"
- For Linear: "I created a project + invited a teammate"

Onboarding should be the shortest path to aha.

## Time-to-value benchmarks

| Time to first value | Product type |
|---|---|
| < 60 sec | Consumer / freemium |
| < 5 min | SaaS marketing-tier |
| < 30 min | Enterprise setup |
| < 1 day | Complex implementation |

If yours is longer, identify what blocked it.

## Checklist design

- 4-7 items max
- One primary action per item
- Each item completable in under 5 min
- Show progress visually
- Don't dismiss until ALL items complete (or user explicitly opts out)

## Tour / coachmark design

- Max 5 stops
- Each stop: arrow + 1-sentence callout + "Next" / "Skip"
- Persistent "Help" icon that re-launches tour
- NEVER force the tour — always allow "Skip for now"

## Common mistakes

- Wizard with 12 steps before user sees product
- Mandatory profile completion before any value
- "Watch this 3-minute video" pop-up on first load
- Coachmarks fired on every page (tour fatigue)
- Sample data the user has to delete (more friction than help)

## Where this fits in X3 Compass

X3 Compass uses checklist on dashboard (3 cards: Add drivers / Connect data / Ask Compass anything) + empty-state guidance on each app page. No forced wizard. Calendly intake optional.
