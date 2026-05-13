---
name: footer-design-systems
description: |
  Use when designing or auditing a marketing site footer. Covers the canonical column structure, what belongs in a footer vs nav, how to add a 'big footer' newsletter / link-rich section, and what to skip.
---

# Footer Design Systems

The footer is the second navigation. It's where users go when the nav let them down. Modern SaaS footers are content-rich, not afterthoughts.

## Canonical column structure

4–6 columns:

| Column | Contents |
|---|---|
| Brand | Logo + tagline + brief description |
| Product | Pricing, Features, Use cases, Compare, FAQ |
| Programs | Affiliate, Partner, API, Resellers |
| Resources | Docs, Blog, Help center, Status |
| Company | About, Careers, Contact, Press |
| Legal | Terms, Privacy, Security, Cookie policy |

Adjust columns based on actual sitemap. Don't pad with empty links.

## What to include below the columns

- Copyright + LLC name
- Disclaimers (especially for regulated products: "Not legal advice")
- Status page link (live indicator if up)
- Social icons (only the ones you actually post on)

## "Big footer" patterns

Top-tier brands extend footers with:
- Newsletter signup form
- Customer logo bar
- Recent blog posts
- "Built with [tech stack]" badge (Vercel, Cloudflare, etc.)

These work when used sparingly — one or two, not all.

## Footer typography

- Column heads: 12-13px, all-caps, letter-spaced
- Links: 13-14px, color-mist or paper, with hover transition
- Copyright: 11-12px, mist

Don't size up the footer — it competes with content.

## Mobile footer

- Single column, stacked
- Accordions optional (collapse columns into tap-to-expand)
- Social icons in a row at bottom

## Anti-patterns

- "Sitemap" page link with no actual sitemap behind it
- Footer with 100+ links (looks SEO-spammy)
- "Copyright 2019" — STALE date kills trust
- Footer that hides on mobile entirely (some users actually need it)

## Common mistakes

- Forgot to update footer when you launched new pages
- Three columns when site has 30 pages (under-using footer)
- 8 columns of 12 links each (cluttered)
- Social icons for accounts that haven't posted in 2 years
- Footer link to "blog" with no actual blog

## Where this fits in X3 Compass

X3 Compass footer uses 5 columns: brand / product / programs / company / legal. Includes disclaimer line ("Not legal advice. Verify with counsel."). Plans to add newsletter signup when blog launches.
