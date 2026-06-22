---
layout: design-system
title: Typography
description: The fonts and text styles used across the Civic Tech DC website.
permalink: /design-system/typography/
---

Civic Tech DC uses the standard USWDS typography system, which ensures readability, accessibility, and a clear hierarchy.

## Font Families

By default, the USWDS theme uses modern, legible sans-serif fonts for both headings and body text. 

- **Primary Typeface (Body & Headings):** `Public Sans` (or standard USWDS defaults depending on configuration).

## Headings

Use headings to create a clear document structure. In Jekyll/Markdown, these correspond to `#` through `######`.

### Examples

<div class="usa-prose margin-bottom-4">
  <h1>Heading 1</h1>
  <h2>Heading 2</h2>
  <h3>Heading 3</h3>
  <h4>Heading 4</h4>
  <h5>Heading 5</h5>
  <h6>Heading 6</h6>
</div>

## Body Text

Standard body text is optimized for readability.

<div class="usa-prose margin-bottom-4">
  <p>This is standard body text. We are a non-partisan, non-political group of volunteer civic hackers working together to solve local issues and help people engage with the city. We host events, work on projects, and build community.</p>
</div>

## Typography Utility Classes

You can adjust text size and weight using USWDS utility classes:

- `.font-sans-xs`, `.font-sans-sm`, `.font-sans-md`, `.font-sans-lg`, `.font-sans-xl`
- `.text-bold`, `.text-normal`, `.text-italic`
- `.text-primary`, `.text-base-dark`, `.text-base-lighter`

```html
<p class="font-sans-lg text-bold text-primary">Large, bold, primary-colored text.</p>
<p class="font-sans-sm text-base-dark">Small, dark gray text.</p>
```
