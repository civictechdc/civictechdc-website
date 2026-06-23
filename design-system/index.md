---
layout: design-system
title: Civic Tech DC Design System
description: The official design system and style guide for the Civic Tech DC website.
permalink: /design-system/
---

Welcome to the Civic Tech DC Design System. This guide provides the foundational elements, components, and design principles used to build and maintain our website.

## Overview

The Civic Tech DC website is built on top of the **U.S. Web Design System (USWDS)** version 3. We leverage USWDS for its accessibility, responsiveness, and robust component library, applying our custom theme settings and styles where necessary to match our brand.

### Why a Design System?

- **Consistency:** Ensure a unified look and feel across all pages and components.
- **Efficiency:** Provide reusable code snippets so contributors don't have to reinvent the wheel.
- **Accessibility:** Maintain the high accessibility standards provided by USWDS.

### Getting Started

If you're contributing to the Civic Tech DC website, familiarizing yourself with this guide is the best place to start. Use the sidebar to navigate through our colors, typography, and specific components.

- **[Design Vision]({{ '/design-system/vision/' | relative_url }})**: Our vision for modernizing the civic-hacker interface.
- **[Colors]({{ '/design-system/colors/' | relative_url }})**: Our brand palette and how to use it.
- **[Typography]({{ '/design-system/typography/' | relative_url }})**: Fonts, headings, and text styles.
- **[Components]({{ '/design-system/components/' | relative_url }})**: Reusable UI elements like buttons and cards.

### Modifying the Design System

To make changes to the design system:

1. Update USWDS theme variables in `sass/theme/_uswds-theme.scss`.
2. Add custom SCSS styles in `sass/custom/styles.scss`.
3. Document any new or modified components in this style guide.
