---
name: component-composition
description: |
  Use when designing or organizing UI components. Covers primitives vs compositions vs patterns,
  the atom/molecule/organism mental model, and component API design that composes well without
  inheritance hell.
---

# Component Composition

Three layers:
- **Primitives** — Button, Input, Card, Stack, Grid, Text
- **Compositions** — DialogContent, FormField, PriceCard, NavItem
- **Patterns** — Pricing-page, Settings-form, Empty-state, Onboarding-flow

## Primitive design rules

A primitive must:
1. Do ONE thing
2. Accept children
3. Forward refs and rest props
4. Have a single visual style
5. Be theme-able via tokens

## Composition rules

A composition is a primitive arrangement with a name and specific purpose. Variants control which props pass through to the primitives.

## API mistakes to avoid

- **Boolean variants explosion**: `<Button primary large rounded outlined>` — use enums instead.
- **Render props for everything**: prefer children where possible.
- **Slot proliferation**: cap at 3 slots (start, end, content).
- **Inheritance**: NEVER. Compose.

## Token-driven theming

```jsx
// Bad
<Button style={{background: '#2DD4BF'}}>
// Good
<Button variant="primary">
// Component uses var(--color-accent) internally
```

## Stack and Grid as primitives

The two most underused primitives:
```jsx
<Stack gap="md" direction="column">
  <Heading>Pricing</Heading>
  <Text>...</Text>
</Stack>

<Grid columns={3} gap="md">
  {plans.map(p => <PriceCard {...p} />)}
</Grid>
```

Most layout code lives in these two.

## Common mistakes

- Inline styles everywhere instead of tokens
- 47 button variants
- Components that fetch data inside themselves
- Forgetting to forward refs
- Component naming that doesn't reflect composition

## Where this fits in X3 Compass

X3 Compass uses HTML-native primitives via CSS classes. Future React migration would compose from Button + Card + Stack + Grid primitives.
