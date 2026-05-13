---
name: team-management-ui
description: |
  Use when designing team / user management for a multi-seat SaaS. Covers role models, invite flow, permissions UI, and the patterns for owners vs admins vs members.
---

# Team Management Ui

Team management is a high-trust surface. Customers grant you control over their teammates. Get it right.

## Role model

Most SaaS needs 3 roles: Owner (1 per account, ultimate control), Admin (multiple, can manage others), Member (can use product, can't change others). Add Viewer / Read-only if relevant.

## Invite flow

Owner/Admin clicks 'Invite' → enters email + role → sends magic-link email. New user creates account on click, lands in team's workspace.

## Pending invites

Show in team list with 'Pending' status. Resend / revoke buttons. Auto-expire after 14 days.

## Permissions UI

Don't expose granular permission matrix to all customers — most don't need it. Role-based UI with simple labels. Enterprise tier can have permission matrix if needed.

## Removing a member

Confirmation required. Note what happens to their data (transferred to owner, deleted, etc.). Email notification to the removed user.

## Common mistakes

Single user model (no multi-seat). 12 granular permissions UI for SMB customers. Role changes without confirmation. No 'who can see this' clarity.

## Where this fits in X3 Compass

Applied in the X3 Compass build via the relevant pages and components.