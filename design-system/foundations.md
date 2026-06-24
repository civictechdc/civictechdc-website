---
layout: design-system
title: Foundations
description: The design tokens — type, spacing, radius, elevation, and motion — that every page is built from.
permalink: /design-system/foundations/
---

Everything visual on the site is built from a small set of **design tokens**: a
single source of truth for type, spacing, corner radius, elevation, and motion.
They live as CSS custom properties on `:root` in `sass/custom/styles.scss` and
were extracted from the footer — the first complete realization of the
[Civic Premium Dark vision]({{ '/design-system/vision/' | relative_url }}).

Use a token instead of a raw value. If a value isn't in the scale, it usually
shouldn't be on the page.

## Type scale

A restrained ramp. Reach for the nearest step rather than inventing a size.

| Token              | Size             | Use                          |
| ------------------ | ---------------- | ---------------------------- |
| `--ctdc-text-2xs`  | 0.75rem / 12px   | Badges, eyebrows, tags       |
| `--ctdc-text-xs`   | 0.8125rem / 13px | Captions, fine print         |
| `--ctdc-text-sm`   | 0.875rem / 14px  | Secondary & meta UI text     |
| `--ctdc-text-base` | 1rem / 16px      | Body default                 |
| `--ctdc-text-md`   | 1.125rem / 18px  | Large body                   |
| `--ctdc-text-lg`   | 1.25rem / 20px   | Lead paragraphs, card titles |
| `--ctdc-text-xl`   | 1.5rem / 24px    | Sub-headings                 |
| `--ctdc-text-2xl`  | 1.75rem / 28px   | Section headings             |
| `--ctdc-text-3xl`  | 2rem / 32px      | Hero / page titles           |
| `--ctdc-text-4xl`  | 2.5rem / 40px    | Large hero titles            |

Supporting type tokens: line height (`--ctdc-leading-tight` `1.2` →
`--ctdc-leading-relaxed` `1.65`), letter spacing (`--ctdc-tracking-tight`
`-0.02em` → `--ctdc-tracking-wider` `0.12em`), and weight
(`--ctdc-weight-normal` `400` → `--ctdc-weight-bold` `700`).

## Spacing scale

A 4px base grid — the rhythm the footer is laid out on. Use these for margin,
padding, and gap.

| Token              | Value          |
| ------------------ | -------------- |
| `--ctdc-space-3xs` | 0.25rem / 4px  |
| `--ctdc-space-2xs` | 0.5rem / 8px   |
| `--ctdc-space-xs`  | 0.75rem / 12px |
| `--ctdc-space-sm`  | 1rem / 16px    |
| `--ctdc-space-md`  | 1.25rem / 20px |
| `--ctdc-space-lg`  | 1.5rem / 24px  |
| `--ctdc-space-xl`  | 2rem / 32px    |
| `--ctdc-space-2xl` | 2.5rem / 40px  |
| `--ctdc-space-3xl` | 3rem / 48px    |
| `--ctdc-space-4xl` | 4rem / 64px    |

In markup, prefer USWDS spacing utilities (`margin-top-4`, `padding-x-2`), which
follow the same grid.

## Corner radius

| Token                | Value | Use                       |
| -------------------- | ----- | ------------------------- |
| `--ctdc-radius-xs`   | 4px   | Tags, small chips         |
| `--ctdc-radius-sm`   | 6px   | Code blocks, inputs       |
| `--ctdc-radius-md`   | 8px   | Media, panels             |
| `--ctdc-radius-lg`   | 12px  | Cards, CTA bands          |
| `--ctdc-radius-pill` | 20px  | Buttons, pills, nav chips |
| `--ctdc-radius-full` | 50%   | Avatars, icon bubbles     |

## Elevation

Ambient, low-contrast shadows. Depth comes from the blur, not the darkness.

| Token              | Value                         |
| ------------------ | ----------------------------- |
| `--ctdc-shadow-xs` | `0 1px 4px rgba(0,0,0,.04)`   |
| `--ctdc-shadow-sm` | `0 2px 8px rgba(0,0,0,.06)`   |
| `--ctdc-shadow-md` | `0 4px 12px rgba(0,0,0,.08)`  |
| `--ctdc-shadow-lg` | `0 10px 24px rgba(0,0,0,.09)` |
| `--ctdc-shadow-xl` | `0 12px 28px rgba(0,0,0,.08)` |

## Motion

Interactions use one easing curve so the whole site feels like one surface.

- `--ctdc-ease` — `cubic-bezier(0.16, 1, 0.3, 1)`, the footer's smooth
  decelerating curve. Use it for every transition.
- `--ctdc-duration-fast` `0.2s` for hovers and taps; `--ctdc-duration-base`
  `0.3s` for larger state changes.

Honor `prefers-reduced-motion`: a global guard already collapses durations for
users who ask for less movement, so you don't need to add one per component.

## Focus

Every interactive element shares one focus indicator: `--ctdc-focus-ring`
(`2px solid var(--ctdc-gold)`) with a small `outline-offset`. The gold ring is
the same accent that marks active navigation — focus and "you are here" speak
the same visual language.

## Using a token

```scss
.example-card {
  padding: var(--ctdc-space-lg);
  border-radius: var(--ctdc-radius-lg);
  box-shadow: var(--ctdc-shadow-md);
  transition: transform var(--ctdc-duration-base) var(--ctdc-ease);

  &:focus-visible {
    outline: var(--ctdc-focus-ring);
    outline-offset: 2px;
  }
}
```
