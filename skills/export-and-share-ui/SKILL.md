---
name: export-and-share-ui
description: |
  Use when designing export, download, and share functionality. Covers format options, the share-link vs email vs PDF flow, and progressive disclosure for power users.
---

# Export And Share Ui

Export and share are extremely high-value features. Most products under-invest here.

## Format options

CSV (data dump). PDF (formatted report). XLSX (advanced users). JSON (developers). Pick 2-3, not 10.

## Share patterns

Share via link (generates view-only URL). Share via email (sends to recipient list). Share via embedded export (PDF / image).

## Permissions

Public / private / org-only. Expiry options (24 hours / 7 days / never).

## Async exports

Large exports (1000+ rows): background job + email when ready. Don't block the UI.

## Common mistakes

Only one export format. No permission controls. Synchronous export of huge datasets (browser hangs). No record of what was shared with whom.

## Where this fits in X3 Compass

Applied across the X3 Compass design system.