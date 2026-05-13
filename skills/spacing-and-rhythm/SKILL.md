---
name: spacing-and-rhythm
description: |
  Use when establishing or auditing a spacing system. Covers the 4px/8px grid, the spacing token
  ladder, rules for which spacing values go where, vertical rhythm between sections, and the
  mistakes that make sites feel cramped or sprawled.
---

# Spacing and Rhythm

Most "this looks unprofessional" comes from inconsistent spacing. A spacing system fixes 80% of it.

## The 4px or 8px base grid

Pick one. 4px is more flexible; 8px more strict. Most modern systems use 4px as the unit, with 8px as the dominant rhythm.

Spacing ladder (4px base):
```
--space-1: 4px      --space-6: 32px
--space-2: 8px      --space-7: 48px
--space-3: 12px     --space-8: 64px
--space-4: 16px     --space-9: 96px
--space-5: 24px     --space-10: 128px
```

Use ladder values, not arbitrary 17px or 23px.

## Where spacing tokens go

| Token | Use |
|---|---|
| space-1 (4px) | Border-radius small, icon-to-text gap |
| space-2 (8px) | Inline padding, small gap |
| space-3 (12px) | Card padding small, list item gap |
| space-4 (16px) | Card padding medium, paragraph spacing |
| space-5 (24px) | Card padding large, between cards in grid |
| space-6 (32px) | Section internal padding |
| space-7 (48px) | Between major sub-sections |
| space-8 (64px) | Between sections within page |
| space-9 (96px) | Between top-level sections |
| space-10 (128px) | Between major page regions |

## Vertical rhythm between sections

For marketing, alternate:
- Tight: 60–80px vertical padding
- Standard: 80–100px
- Hero: 100–140px

Don't use the same 80px on every section — alternate to create visual rhythm.

## Container widths

| Pattern | Max-width |
|---|---|
| Hero copy | 720–800px |
| Body text | 680–760px |
| Wide content | 1100–1200px |
| Full dashboards | 1400–1600px |
| Forms | 480–560px |
| Sidebars/modals | 360–520px |

## Common mistakes

- Using margin: 20px and padding: 17px (no ladder)
- 16px spacing between sections (too tight)
- 200px+ everywhere (sprawls)
- Inconsistent padding on similar cards
- No vertical rhythm — every section same height feels monotonous

## Where this fits in X3 Compass

X3 Compass uses 4px base grid with the ladder above. Section padding alternates 80px / 100px / 60px for rhythm.
