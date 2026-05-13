---
name: accessibility-baseline
description: |
  Use when shipping any user-facing UI. Covers the non-negotiable accessibility baseline: contrast,
  focus states, semantic HTML, keyboard navigation, screen-reader support, motion preferences. The
  minimum to avoid embarrassment and ADA risk.
---

# Accessibility Baseline

Accessibility isn't a feature — it's a baseline. Below this baseline, your product is hostile to ~25% of users and legally exposed in many jurisdictions.

## The minimum checklist

### Color & contrast
- ☑ Body text passes WCAG AA (4.5:1) on every background
- ☑ Large text + UI components pass 3:1
- ☑ No color is the only carrier of meaning

### Keyboard
- ☑ Every interactive element reachable via Tab
- ☑ Tab order is logical
- ☑ Visible focus state on every interactive element (NEVER `outline: 0` without a replacement)
- ☑ Escape closes modals, dropdowns
- ☑ Arrow keys navigate within combos / tabs / menus

### Screen reader
- ☑ Every image has alt text (or `alt=""` if decorative)
- ☑ Form fields have associated labels
- ☑ Buttons say what they do ("Submit" not "Click here")
- ☑ Loading states announce
- ☑ Errors programmatically associated with the field

### Motion
- ☑ Respect `prefers-reduced-motion`
- ☑ No autoplay video with sound
- ☑ No flashing more than 3 times per second

### Semantic HTML
- ☑ `<button>` for actions, `<a>` for navigation
- ☑ Heading order: one `<h1>`, nested logically
- ☑ `<main>`, `<nav>`, `<footer>`, `<article>` used appropriately
- ☑ Lists use `<ul>` / `<ol>` not styled divs

## Focus states

Don't remove default focus rings — replace them:

```css
:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 2px;
  border-radius: inherit;
}
```

`:focus-visible` only shows on keyboard focus, not mouse click.

## Reduced motion

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```

## Common mistakes

- `outline: 0` on buttons without replacement
- `<div onclick>` instead of `<button>`
- Placeholder text as the only label
- Color-only error states
- Auto-advancing carousels (screen-reader hostile)
- Modals without focus trap
- Hover-only menus

## Tools

- axe DevTools, WAVE, Lighthouse, NVDA, VoiceOver

## Where this fits in X3 Compass

X3 Compass uses `:focus-visible`, respects prefers-reduced-motion, has semantic HTML throughout. WCAG AA target everywhere; AAA on FAQ + Pricing.
