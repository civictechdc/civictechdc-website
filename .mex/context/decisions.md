---
name: decisions
description: Key architectural and technical decisions with reasoning. Load when making design choices or understanding why something is built a certain way.
triggers:
  - "why do we"
  - "why is it"
  - "decision"
  - "alternative"
  - "we chose"
edges:
  - target: context/architecture.md
    condition: when a decision relates to system structure
  - target: context/stack.md
    condition: when a decision relates to technology choice
last_updated: 2026-07-21
---

# Decisions

<!-- HOW TO USE THIS FILE:
     Each decision follows the format below.
     When a decision changes: DO NOT delete the old entry.
     Mark it as superseded, add the new entry above it.
     The history must be preserved — this is the event clock. -->

## Decision Log

### Centralize metadata on the www origin and validate rendered output

**Date:** 2026-07-21
**Status:** Active
**Decision:** Treat `https://www.civictechdc.org` as the only canonical origin. Generate search tags, social previews, and JSON-LD through shared Liquid includes; generate discovery files with Jekyll plugins; validate the completed site with `npm run check:seo` in CI and deployment.
**Reasoning:** The CNAME and live redirects already prefer `www`. A single rendering path prevents duplicate hosts, broken collection-image URLs, and metadata drift between pages. Rendered validation catches Liquid and plugin behavior that source-only checks miss.
**Alternatives considered:** `jekyll-seo-tag` alone (rejected because the site's event collections and generated responsive-image paths require site-specific mapping); hand-authored tags per page (rejected because they duplicate logic and drift); indexing only the blog index (rejected because category and tag archives are intentional navigation pages with unique metadata).
**Consequences:** Every indexable document needs a unique description and representative image. The 404 page and redirect-only event documents stay out of the sitemap. Blog archives remain indexable. Changes to metadata, routes, content, or images must pass the rendered SEO check.

### Host on GitHub Pages with the github-pages gem

**Date:** 2018-04-04 (project inception)
**Status:** Active
**Decision:** Build with Jekyll pinned via the `github-pages` gem and deploy to GitHub Pages.
**Reasoning:** Free hosting, zero servers to maintain, and a build toolchain that matches what GitHub Pages runs — appropriate for an all-volunteer civic-tech org.
**Alternatives considered:** A dynamic CMS or app framework (rejected — needs hosting/ops nobody volunteers to run); Netlify/other static hosts (viable, but GitHub Pages is free and already integrated with the org's repos).
**Consequences:** Jekyll is locked to 3.x (GitHub Pages does not support Jekyll 4). No server-side logic; everything is static. Deploy is automatic on push to `main`.

### Adopt USWDS 3 as the design system

**Date:** 2024-04-16
**Status:** Active
**Decision:** Use the U.S. Web Design System v3, compiled with the @uswds/compile gulp toolchain, as the styling foundation.
**Reasoning:** USWDS provides accessible, government-appropriate components and a theming system out of the box — fitting for a civic-tech audience and faster than building a design system from scratch.
**Alternatives considered:** Bootstrap/Tailwind (rejected — less aligned with the civic/government context and would mean maintaining our own component library); bespoke CSS (rejected — accessibility and maintenance burden).
**Consequences:** Styling is extended through `sass/custom/` and USWDS theme settings, not a competing framework. USWDS v2 patterns do not apply. A Sass→CSS build step (gulp) is now required.

### Build a gulp pipeline for responsive images and CSS cache-busting

**Date:** 2025-07-07
**Status:** Active
**Decision:** Process source images in `_images/` into multiple responsive sizes and content-hash compiled CSS, all via `gulpfile.js`, fronted by the `responsive-image.html` include.
**Reasoning:** Page weight and Core Web Vitals matter for a public site; responsive `srcset` + lazy-loading + hashed CSS gives good performance and safe cache invalidation without a heavyweight bundler.
**Alternatives considered:** Hand-authored `<img>` tags and unhashed CSS (rejected — inconsistent sizing, no cache busting); a JS bundler like webpack (rejected — overkill for a static Jekyll site).
**Consequences:** Authors must add originals to `_images/` and use the include; `assets/` and `_data/css-manifest.json` are generated artifacts. CI enforces that committed `assets/` match a fresh `gulp compile`.

### Lint/format with Prettier + the Shopify Liquid plugin

**Date:** 2025 (see git history)
**Status:** Active
**Decision:** Use Prettier with the @shopify/prettier-plugin-liquid plugin as the sole formatter, enforced in CI.
**Reasoning:** One opinionated tool formats Liquid/HTML/Markdown/CSS/JS consistently, lowering review friction for first-time/volunteer contributors.
**Alternatives considered:** No formatter (rejected — inconsistent style in PRs); separate linters per language (rejected — more config to maintain).
**Consequences:** Run Prettier on touched files and inspect Liquid include formatting before committing. CI runs Prettier in check mode; complex Liquid partials that the formatter cannot preserve safely are explicitly listed in `.prettierignore`. Rendered checks provide separate correctness gates.
