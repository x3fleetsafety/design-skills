---
name: print-and-pdf-design
description: |
  Use when designing print and PDF output (invoices, reports, audit packets). Covers print stylesheets, PDF generation libraries, and the layout that survives both.
---

# Print And Pdf Design

Print is still real. Bad print output ruins audit packets, invoices, and reports.

## Print stylesheet

@media print {} — remove nav, footer, chrome. Black text on white. Page breaks at section breaks.

## PDF generation

Server-side (Puppeteer, wkhtmltopdf, react-pdf). Better than browser print for consistent output.

## Layout

Letter / A4. 1-inch margins. Page numbers at footer. Title at header on each page.

## Tables in PDF

Repeat header row on each page break. Don't break rows across pages.

## Common mistakes

No print stylesheet — page prints with nav + footer. PDF that doesn't paginate. No header/footer on multi-page PDF. Images that don't render in print.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.