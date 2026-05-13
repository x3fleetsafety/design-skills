---
name: navigation-design-patterns
description: |
  Use when designing or auditing a marketing site navigation. Covers sticky nav vs scrolling, logo placement, link order, sign-in/sign-up CTAs, mobile patterns, and the underused 'mega nav.'
---

# Navigation Design Patterns

Nav is high-real-estate. Get it wrong and users bounce within 5 seconds.

## Sticky vs scrolling

**Sticky nav is the modern default.** Stays visible as user scrolls. Use backdrop-blur for elegance on dark backgrounds.

**Scrolling nav** (disappears on scroll) only works for very long-form landing pages where you want immersion. Risky.

## Logo placement

Left side, almost always. Center-logo is a design choice for special brands (Apple, Vercel sometimes) but adds risk.

Logo should:
- Be 32-48px tall in nav (smaller than people think)
- Have visible left-padding for breathing room
- Link to home page

## Link order

From left (next to logo) to right:
1. Product info (Pricing, Features, Use cases)
2. Company info (Customers, About, Blog)
3. Resources (Docs, Help, Status)
4. Sign-in (text link)
5. Primary CTA (Start free / Sign up / Get demo)

Sign-in and CTA at far right.

## CTA in nav

Primary CTA always present. Should match the primary CTA pattern from the hero (same color, same wording).

Common: ghost "Sign in" + solid "Start free" right next to it.

## Mega-nav

For SaaS with many features/products, a hover-revealed mega nav is current best practice. Pattern:
- Hover on top-level link reveals a panel
- Panel has 3-4 columns of grouped sub-links
- Includes a featured-content area (latest blog post, demo CTA)

Anti-pattern: Mega nav on a 5-page site. Use simple links.

## Mobile patterns

| Pattern | When |
|---|---|
| Hamburger menu | Most sites |
| Bottom tab bar | Only when site is app-like |
| Slide-out drawer | When 8+ nav items |
| Full-screen overlay | Most modern, dramatic |

Hamburger menu items should be 16-18px font with 16-24px vertical spacing — easier thumb targets.

## Common mistakes

- Logo right, CTA left — reverse Western convention, confuses
- 8+ nav links — pick 5 max
- Pricing buried in dropdown — should be top-level
- No visible Sign-in (forces user to find it)
- CTA color same as nav text (no contrast)
- Sticky nav opaque on white pages — should be backdrop-blur'd

## Where this fits in X3 Compass

X3 Compass uses sticky nav with backdrop-blur on dark. Logo left, 7 nav links center, Sign-in + Start free right. Drops to hamburger below 700px.
