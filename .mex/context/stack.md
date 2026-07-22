---
name: stack
description: Technology stack, library choices, and the reasoning behind them. Load when working with specific technologies or making decisions about libraries and tools.
triggers:
  - "library"
  - "package"
  - "dependency"
  - "which tool"
  - "technology"
edges:
  - target: context/decisions.md
    condition: when the reasoning behind a tech choice is needed
  - target: context/conventions.md
    condition: when understanding how to use a technology in this codebase
last_updated: 2026-07-21
---

# Stack

## Core Technologies

- Jekyll `~> 3.10` (via the `github-pages` gem) — static site generator, pinned to the GitHub Pages-compatible toolchain.
- Ruby 3.2.0 — runs Jekyll (see `.tool-versions`, managed with asdf).
- Node.js 23.7.0 locally / 22 in CI — runs the gulp asset pipeline.
- Liquid + kramdown — templating language and Markdown renderer.
- USWDS 3.12.0 — the design system providing styles, components, and icons.

## Key Libraries

- **@uswds/compile** + **gulp** — compiles USWDS Sass and runs the build; this is _the_ build tool. There is no webpack/esbuild.
- **gulp-sharp-responsive** — generates responsive raster image variants (400/800/1200/1800w). Configured in `gulpfile.js`.
- **gulp-imagemin** — optimizes SVGs and GIFs (these are NOT resized).
- **gulp-rev** + **gulp-rev-delete-original** — content-hash CSS filenames for cache busting; the output map lands in `_data/css-manifest.json`.
- **prettier** + **@shopify/prettier-plugin-liquid** — the only linter/formatter; formats Liquid/HTML/Markdown/CSS/JS. Run via `npm run lint`.
- Gems `jekyll-redirect-from` (front-matter redirects), `jekyll-archives` (blog category/tag pages), `jekyll-sitemap` (canonical URL discovery), and `jekyll-feed` (the Atom blog feed).
- **Nokogiri** + **TZInfo** — parse rendered HTML/XML and verify local-time offsets in the production SEO check.

## What We Deliberately Do NOT Use

- **No JS framework or bundler** (React, Vue, webpack, Vite) — interactivity is USWDS JS plus minimal inline scripts; keep it that way.
- **No CSS framework other than USWDS** — do not add Bootstrap/Tailwind; extend via the project Sass and USWDS theme settings.
- **No application test framework** — shell and Ruby quality checks validate shared accessibility markup and rendered SEO output without a runtime test harness.
- **No hand-written image tags to the assets folder** — use the responsive-image include so srcsets and lazy-loading stay consistent.

## Version Constraints

- Jekyll is held at 3.x by the `github-pages` gem (GitHub Pages does not support Jekyll 4). Do not bump to Jekyll 4 without moving off GitHub Pages' native build.
- USWDS is v3 (`uswds.settings.version = 3` in `gulpfile.js`); v2 patterns/mixins do not apply.
