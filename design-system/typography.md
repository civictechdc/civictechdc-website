---
layout: design-system
title: Typography
description: The fonts and text styles used across the Civic Tech DC website.
permalink: /design-system/typography/
---

Civic Tech DC runs on **one type system**: a single sans-serif for everything a
person reads, and a single monospace for code. It builds on USWDS typography —
which gives us readability, accessibility, and a clear hierarchy — with the
project's [type scale]({{ '/design-system/foundations/#type-scale' | relative_url }})
layered on top.

## Font families

One family does the work of headings, body, and UI. Don't introduce a second
display or body face — consolidation is the point.

- **Sans (everything):** **Source Sans Pro** — set explicitly in
  `sass/theme/_uswds-theme.scss` (`$theme-font-type-sans`) and mirrored as the
  `--ctdc-font-sans` token. Headings, body, and UI all resolve to it, so the
  page reads as one voice.
- **Monospace (code only):** **Source Code Pro** (system-mono fallback),
  exposed as `--ctdc-font-mono` and used by inline `code` and `pre` blocks.

Reference the tokens rather than hand-writing a font stack:

```scss
font-family: var(--ctdc-font-sans);
/* code */
font-family: var(--ctdc-font-mono);
```

## Type scale

Sizes come from the named ramp — `--ctdc-text-2xs` (12px) through
`--ctdc-text-4xl` (40px) — documented in full on the
[Foundations page]({{ '/design-system/foundations/#type-scale' | relative_url }}).
Pick the nearest step instead of inventing a one-off `rem` value.

## Headings

Use headings to create a clear document structure. In Jekyll/Markdown, these
correspond to `#` through `######`. On long-form pages the section `h2`/`h3`
styles add the gold underline accent automatically — no extra classes needed.

### Examples

<div class="margin-bottom-4">
  <h1>Heading 1</h1>
  <h2>Heading 2</h2>
  <h3>Heading 3</h3>
  <h4>Heading 4</h4>
  <h5>Heading 5</h5>
  <h6>Heading 6</h6>
</div>

## Body text

Standard body text is optimized for readability — `--ctdc-text-base` at a
relaxed line height.

<div class="margin-bottom-4">
  <p>This is standard body text. We are a non-partisan volunteer community in the DMV using open-source technology to support civic engagement, strengthen democracy, and empower public-interest initiatives locally and nationally. We host events, work on projects, and build community.</p>
</div>

The **lead / standfirst** paragraph (`.ctdc-lead`) bridges a hero into the page
body at `--ctdc-text-lg`. Use it for the first paragraph after a hero.

## Typography utility classes

Adjust size and weight with USWDS utility classes, which share the same scale:

- `.font-sans-xs`, `.font-sans-sm`, `.font-sans-md`, `.font-sans-lg`, `.font-sans-xl`
- `.text-bold`, `.text-normal`, `.text-italic`
- `.text-primary`, `.text-base-dark`, `.text-base-lighter`

```html
<p class="font-sans-lg text-bold text-primary">
  Large, bold, primary-colored text.
</p>
<p class="font-sans-sm text-base-dark">Small, dark gray text.</p>
```
