---
layout: design-system
title: Colors
description: The core color palette used across the Civic Tech DC website.
permalink: /design-system/colors/
---

Our color palette relies on the USWDS color system, customized with our brand colors. These tokens are defined in `sass/theme/_uswds-theme.scss`.

## Primary Colors

The primary colors define the overall look and feel of the site, used for navigation, primary buttons, and prominent headings.

<div class="grid-row grid-gap margin-bottom-4">
  <div class="desktop:grid-col-4">
    <div class="padding-3 text-white bg-primary radius-md">
      <strong>Primary</strong><br>
      <code>#104378</code><br>
      <small>Token: <code>primary</code></small>
    </div>
  </div>
</div>

## Accent Colors

Accent colors are used to draw attention to specific elements, such as active states, badges, or card borders.

<div class="grid-row grid-gap margin-bottom-4">
  <div class="desktop:grid-col-4">
    <div class="padding-3 text-base-darker bg-accent-warm radius-md">
      <strong>Accent Warm</strong><br>
      <code>#eec05e</code><br>
      <small>Token: <code>accent-warm</code></small>
    </div>
  </div>
</div>

## Usage in SCSS

You can use these colors in custom SCSS using USWDS color functions:

```scss
// Background color
.my-custom-element {
  background-color: color("primary");
}

// Text color
.my-custom-text {
  color: color("accent-warm");
}
```

## Utility Classes

Alternatively, use USWDS utility classes directly in your HTML:

```html
<div class="bg-primary text-white padding-2">Primary Background</div>

<div class="text-primary text-bold">Primary Text</div>
```
