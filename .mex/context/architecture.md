---
name: architecture
description: How the major pieces of this project connect and flow. Load when working on system design, integrations, or understanding how components interact.
triggers:
  - "architecture"
  - "system design"
  - "how does X connect to Y"
  - "integration"
  - "flow"
edges:
  - target: context/stack.md
    condition: when specific technology details are needed
  - target: context/decisions.md
    condition: when understanding why the architecture is structured this way
last_updated: 2026-06-22
---

# Architecture

## System Overview
This is a static site — there is no runtime backend. Two pipelines feed Jekyll:

1. Asset pipeline (gulp, run first): `_images/` originals are resized by gulp-sharp-responsive to 400/800/1200/1800w variants in `assets/images/`; @uswds/compile compiles `sass/` into `assets/css/`; gulp-rev content-hashes the styles, events, and civichackdc CSS files and writes the hash map to `_data/css-manifest.json`.
2. Jekyll build: Markdown/HTML pages plus collections (`_projects`, `_events`, `_posts`) are rendered through Liquid layouts (`_layouts`) and includes (`_includes`) into `_site`. Layouts read `_data/css-manifest.json` to link the correct hashed CSS.

Flow per page: front matter `layout` → a template in `_layouts` → wraps in `_layouts/default.html` → `_layouts/base.html` (head/meta/css + GTM) → content rendered with `_includes` partials.

Locally, `npm run serve` runs gulp in the background and `jekyll serve` in the foreground. On push to `main`, GitHub Actions runs `npm run build` then builds and deploys to GitHub Pages.

## Key Components
- `_layouts` — page templates. `_layouts/base.html` is the HTML shell (resolves `page_css` against the manifest); `_layouts/default.html` is the standard page; specialized layouts include `_layouts/project.html`, `_layouts/events.html`, `_layouts/post.html`, `_layouts/archive.html`, `_layouts/design-system.html`, and several hero-image variants.
- `_includes` — Liquid partials. `_includes/core/` holds structural partials (header, footer, meta, css, GTM); `_includes/components/` holds reusable UI (cards, project-cards, supporters, meetup-events); `_includes/responsive-image.html` is the canonical image tag generator.
- Collections — `_projects` (civic-tech project pages, `project` layout) and `_events` (special-event pages, permalink `/special-events/:name/`). Defined in `_config.yml`.
- `gulpfile.js` — the entire build pipeline: image processing, USWDS compile, and CSS cache-busting (the addHashToCSS task).
- `sass` — CSS source. `sass/custom` is the USWDS project Sass; `sass/theme` holds USWDS theme settings; `sass/main.scss` is the entry.

## External Dependencies
- GitHub Pages — hosting and deploy target. The deploy workflow (`.github/workflows/deploy.yaml`) builds and publishes on push to `main`; `CNAME` points to www.civictechdc.org.
- **@uswds/uswds** + **@uswds/compile** — the U.S. Web Design System; all base styles, components, and icons come from here, compiled by gulp. Icons are referenced from the compiled sprite under `assets/img`.
- Google Tag Manager — analytics, injected via `_includes/core/google-tag-manager-script.html` in `_layouts/base.html`.
- Third-party embeds — events link out to Luma registration, Google Forms, Meetup, etc. (content-level, not build dependencies).

## What Does NOT Exist Here
- No server, API, or database — purely static output.
- No JS framework or bundler (React/Vue/webpack); interactivity is USWDS JS plus small inline scripts.
- No automated tests — CI only lints and verifies the gulp build is committed.
- Image originals and Sass live in source dirs (`_images`, `sass`); everything under `assets` and `_site` is generated and must not be hand-edited.
