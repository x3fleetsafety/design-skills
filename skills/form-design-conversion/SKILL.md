---
name: form-design-conversion
description: |
  Use when designing any form (signup, settings, checkout, search). Covers field count, label position, inline validation, error messaging, autofill considerations, and the rules that 2x conversion on signup forms.
---

# Form Design for Conversion

A form is friction. Every field is a chance to abandon. Form design is removing what's unnecessary, presenting what's necessary in the right order.

## Field count rules

For conversion-critical forms (signup, checkout):
- 3 fields: highest conversion
- 4-6 fields: standard
- 7+ fields: convert 30-50% less than 4-field equivalent

Cut what you can. If you NEED a field, ask: "Can I collect this later in onboarding instead?"

## Label position

Top-aligned labels (above the input) win for conversion:
- Easier to scan
- Mobile-friendly
- Errors fit below the field

Inline labels (placeholder-as-label) are tempting but cause two problems:
1. Label disappears when typing → user loses context
2. Accessibility nightmare (screen readers may miss)

If you use floating labels, animate carefully and ensure label remains visible.

## Input sizing

- Height: 40-52px (touch target)
- Padding: 10-14px horizontal
- Font size: 16px minimum on mobile (prevents iOS zoom-on-focus)
- Border-radius: 6-10px

## Inline validation

Validate on blur, not on every keystroke:
- ✓ green check when valid (subtle)
- ✗ red message below field when invalid
- Show validation AFTER user has had a chance to complete the field

Anti-pattern: red border + "invalid" message on character 1 of typing.

## Error messaging

Errors should:
- Say what's wrong specifically ("Email must include @")
- Suggest a fix
- Use plain language, not codes
- Appear right next to the field
- NOT cause the form to reflow / shift layout

## Required vs optional

If most fields are required, mark the OPTIONAL ones with "(optional)".
If most are optional, mark the REQUIRED ones with "*" + legend.

Don't make both required-asterisk AND optional-label.

## Autofill

Use proper `autocomplete` attributes:
```
<input autocomplete="email">
<input autocomplete="name">
<input autocomplete="organization">
<input autocomplete="postal-code">
```

This lets browsers fill correctly. Saves 20-40% of completion time.

## Multi-step forms

For forms with 8+ fields, split into steps:
- 3-5 fields per step
- Progress indicator at top (3/5 or visual bar)
- Back button preserves data
- Save draft on each step

## Submit button

- Full-width on mobile, auto-width on desktop
- Label what happens: "Create my account" not "Submit"
- Loading state while async ("Creating...")
- Disable on submit (prevent double-submit)

## Common mistakes

- Placeholder used as the only label
- Validation fires on every keystroke
- Red border on initial empty fields (looks broken)
- "First name", "Last name" as two fields when "Full name" would do
- Phone number required when email is enough
- "Password must contain..." rules NOT shown until after submit failure

## Where this fits in X3 Compass

X3 Compass signup uses 5 fields (carrier name, your name, email, phone, truck count). DOT/state optional. Inline validation on blur, error messages explicit.
