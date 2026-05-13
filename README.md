# X3 Design Skills

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![100 Skills](https://img.shields.io/badge/skills-100-2DD4BF)](https://github.com/x3fleetsafety/design-skills)
[![Built for X3 Compass](https://img.shields.io/badge/built_for-x3compass.com-22D3EE)](https://x3compass.com)

**100 open-source design skills** for AI agents building modern SaaS websites, dashboards, and brand systems. Apache 2.0.

The design corpus that powers [X3 Compass](https://x3compass.com) — the AI Safety Director for small motor carriers. Same Apache 2.0 model as our [DOT compliance skills repo](https://github.com/x3fleetsafety/skills).

## Why open-source design skills?

The DOT compliance corpus made our AI agent more credible. The design skills corpus makes any AI agent — Claude, GPT, Cursor, v0 — design like a professional.

Drop these in your agent's skills folder. The next time you ask Claude to "build a hero section" or "design a pricing page," it'll reason over these patterns instead of guessing.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/x3fleetsafety/design-skills/main/install.sh | bash -s -- ~/.claude/skills
```

Or clone and copy manually:
```bash
git clone https://github.com/x3fleetsafety/design-skills.git
cp -r design-skills/skills/* ~/.claude/skills/
```

## The 12 tiers

| Tier | Skills | Focus |
|---|---|---|
| 1 — Foundations | 9 | Modern SaaS principles, dark UI, type, color, spacing, responsive, a11y, components, CRO |
| 2 — Specialty layouts | 7 | Hero, pricing, features, testimonials, footer, nav, CTAs |
| 3 — Advanced layout | 7 | Dashboards, tables, forms, empty states, onboarding, modals, toasts |
| 4 — Animations & motion | 5 | Motion budget, scroll-driven, hover states, transitions, skeletons |
| 5 — Brand systems | 6 | Tokens, architecture, icons, illustrations, logos, voice |
| 6 — Design ops | 7 | Handoff, docs, critique, team workflows, AI-pair, review, research |
| 7 — Conversion patterns | 8 | Landing pages, copy, pricing display, compare, FAQ, value prop, trust, social proof |
| 8 — SaaS product patterns | 7 | Onboarding, pricing page, billing, settings, team, notifications, cancel |
| 9 — Trust & security UI | 7 | Security page, privacy policy, GDPR cookies, terms, errors, 404, breach |
| 10 — Marketing surfaces | 6 | Email, newsletter, screenshots, OG image, press, careers |
| 11 — Product lifecycle UI | 15 | Tours, search, filters, pagination, sort, bulk actions, export, print, mobile shell + nav, PWA, offline, tablet, responsive images |
| 12 — Master operations | 14 | DS at scale, multi-brand, white-label, i18n, RTL, AAA, inclusive, perf, CWV, SEO, structured data, analytics, A/B testing, design debt + benchmarking + AI research |

**Total: 100 skills.**

## Format

Same format as [x3fleetsafety/skills](https://github.com/x3fleetsafety/skills):

```yaml
---
name: skill-slug
description: |
  When to use this skill, in 2-3 sentences.
---

# Skill Title

Brief summary of the skill.

## Section 1
...

## Where this fits in X3 Compass

Notes on how this skill applies to the X3 Compass build.
```

## License

Apache 2.0. Fork, modify, redistribute. The skills format follows the emerging [Agent Skills](https://agentskills.io) standard.

## Maintained by

[X3 Fleet Safety](https://x3fleetsafety.com) — the same team that publishes the [100-skill DOT compliance corpus](https://github.com/x3fleetsafety/skills).
