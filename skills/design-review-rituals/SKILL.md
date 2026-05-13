---
name: design-review-rituals
description: |
  Use when establishing design review processes that catch issues without becoming a bottleneck. Covers review cadence, the levels of review (peer / lead / cross-team), the criteria for sign-off, and async vs synchronous review.
---

# Design Review Rituals

Reviews catch issues early. Too many reviews slow shipping. Find the balance.

## Three levels of review

| Level | Trigger | Time | Reviewer |
|---|---|---|---|
| Peer review | Every design output | 15-30 min | One peer designer |
| Lead review | Pre-handoff | 30-45 min | Design lead |
| Cross-team review | Major launches | 60 min | Eng + PM + Brand + Legal |

Most work gets peer + lead. Cross-team only for things that affect multiple stakeholders.

## Sync vs async

| Async (Figma comments + Loom) | Sync (live meeting) |
|---|---|
| Default for most reviews | Reserved for big decisions |
| Reviewer can think | Faster for nuance |
| Captures decisions in writing | Captures energy |

Default to async. Escalate to sync when decisions stall.

## What a reviewer looks for

Use a checklist (different per review level):

### Peer review
- ☑ Component usage (no detached layers)
- ☑ Token usage (no random hex)
- ☑ Empty + loading + error states
- ☑ Mobile + desktop variants
- ☑ Naming conventions
- ☑ Accessibility baseline

### Lead review
- ☑ Strategic alignment with product direction
- ☑ Consistency with related screens
- ☑ Edge cases considered
- ☑ Designer's "ask" addressed
- ☑ Voice consistency
- ☑ Handoff readiness

### Cross-team review
- ☑ Eng feasibility validated
- ☑ Tracking / instrumentation planned
- ☑ Brand alignment
- ☑ Legal review if needed
- ☑ Launch plan with engineering

## Sign-off criteria

For each level:
- Peer: 1 approver (any designer)
- Lead: 1 approver (design lead)
- Cross-team: required signers per group (eng lead + PM + brand + legal if applicable)

## Avoiding review-as-bottleneck

- Reviews on a clock (30 min SLA for peer, 24 hours for lead)
- Async-by-default (no scheduling overhead)
- Reviewer can approve without comment if no issues
- Disagreements escalate to lead → final decision

## Common mistakes

- 5 reviewers for every design → death by committee
- No reviewer assigned → review never happens
- Reviewer changes design without asking
- Approval after lengthy email thread → no audit trail
- Same person reviews every design → bottleneck

## Where this fits in X3 Compass

X3 Compass: solo for now. Future: peer review for every change, lead review pre-launch, cross-team for marketing pages.
