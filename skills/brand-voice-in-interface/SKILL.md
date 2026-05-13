---
name: brand-voice-in-interface
description: |
  Use when writing UI copy: button labels, error messages, empty states, onboarding text, tooltips. Covers voice consistency, the difference between marketing voice and product voice, and the language patterns that read as 'brand.'
---

# Brand Voice in Interface

UI copy is brand voice in the smallest doses. Hundreds of micro-copies make up the perception.

## Three voice axes

Pick a position on each axis:

| Axis | Endpoint A | Endpoint B |
|---|---|---|
| Formal ↔ Casual | "Please complete your account" | "Finish setting up" |
| Serious ↔ Playful | "An error occurred" | "Hmm, that didn't work" |
| Verbose ↔ Terse | "You haven't added any drivers to your account yet" | "No drivers yet" |

A SaaS for fleet compliance is probably: medium-casual, medium-serious, terse.
A consumer app might be: casual, playful, terse.
A medical product: formal, serious, medium-verbose.

## Voice patterns by surface

### Buttons
- Verb + outcome: "Start my trial", "Save changes", "Add driver"
- 2-4 words max
- First-person when emotional ("Start my trial" not "Start a trial")

### Error messages
- Plain language, no codes
- Suggest the fix
- "Email must include @" not "Invalid email"
- "We couldn't reach the server. Try again?" not "ERR_NETWORK_FAILURE"

### Empty states
- Acknowledge the absence
- Direct to next action
- "No drivers yet" + "Add your first driver" CTA

### Tooltips
- 1 sentence max
- Add context, don't repeat what's visible
- "Add a comment that's only visible to admins" not "Add comment"

### Onboarding
- Friendly, slightly more verbose
- Concrete examples, not abstractions
- Anticipate questions

### Confirmation dialogs
- "Delete driver?" + "This can't be undone" (concise)
- Show what's being deleted (driver's name)
- Cancel button → safe default

## What NOT to write

- "Oops!" / "Yikes!" / "Oh no!" — performative apology
- "Click here" — never describes WHAT to click
- Marketing speak in UI: "Unlock your full potential!" (no)
- Acronyms / jargon without explanation
- "We're sorry" 5x in one error flow

## Personality without sacrificing clarity

You CAN have voice in UI copy if you trade nothing for it:
- "Compass is thinking..." (vs "Loading...") — adds character, same clarity
- "Nothing to see here" empty state — playful, still clear
- "Let's get this set up" onboarding — warm, still clear

When in doubt, choose clarity.

## Voice review checklist

For any new UI copy:
- ☑ Verb + outcome on buttons
- ☑ No "oops" / "yikes" performative
- ☑ Errors say what + suggest fix
- ☑ No jargon without context
- ☑ Tone consistent with established voice
- ☑ Read aloud — does it sound natural?

## Common mistakes

- Inconsistent voice — formal in onboarding, casual in errors
- Performative apology ("Oh no! Sorry!") for minor issues
- "Click here" copy
- Acronyms without explanation
- 30-word tooltip
- "Submit" buttons (no, what does it submit?)

## Where this fits in X3 Compass

X3 Compass voice: medium-casual, serious about regulation, terse. Examples: "Start free → 1 truck", "Ask Compass anything", "Cited every answer". Brand voice doc at `brand/voice.md`.
