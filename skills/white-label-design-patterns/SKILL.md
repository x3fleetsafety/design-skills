---
name: white-label-design-patterns
description: |
  Use when designing white-label / reseller UIs. Covers the customer-brand-takeover pattern, the brand-config schema, the loading sequence, and the parts that must stay platform-branded.
---

# White Label Design Patterns

White-label = your customer's customers think it's the customer's product. Get it right or break the partner economic model.

## Brand config

Per-tenant config: logo, primary color, accent color, domain, brand name, optional favicon. Stored in DB; applied via CSS variables on root.

## What changes

Logo, brand color, domain, brand name in nav / emails / app shell. EVERYTHING customer-facing.

## What stays

Platform-branded footer disclaimer ('Powered by X3 Compass' if your model requires). Bug reports go to platform. Legal entity for fraud / cyber events.

## Loading sequence

Fetch brand config before rendering app shell. Otherwise flash of default brand.

## Domain

Custom domain support critical. CNAME + auto-SSL via Cloudflare for One. Subdomain (carrier.partner.com) easier than apex domain.

## Common mistakes

Customer's brand in product, X3 brand in emails (jarring). No custom domain (Partner brand undermined). Forgotten platform-branded elements in dark corners.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.