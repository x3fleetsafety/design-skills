---
name: internationalization-ui
description: |
  Use when designing UI for multi-language support. Covers text length variability, RTL support, date/number formats, and the technical patterns (i18n libraries, key-based translation).
---

# Internationalization Ui

i18n is a design constraint, not just a translation task.

## Text length

German is 30% longer than English. Russian, French, Spanish similar. Design for variable text length — don't pixel-snap text widths.

## Cultural patterns

Date formats (MM/DD/YYYY vs DD/MM/YYYY). Currency. Phone formats. Address fields. Don't assume US patterns.

## Layout flexibility

Buttons that grow with text. Headlines that wrap gracefully. No fixed-height containers for translated content.

## Translation pipeline

Source strings in code reference keys (i18n.t('signup.title')). Translation files (.json / .po). Translation memory.

## Common mistakes

Buttons too narrow for German. Date formats showing US format to EU users. Hard-coded strings in code (untranslatable). RTL ignored (Arabic / Hebrew users broken).

## Where this fits in X3 Compass

Applied across the X3 Compass design system.