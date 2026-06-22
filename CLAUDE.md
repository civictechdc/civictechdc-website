---
name: agents
description: Always-loaded project anchor. Read this first. Contains project identity, non-negotiables, commands, and pointer to .mex/ROUTER.md for full context.
last_updated: 2026-06-22
---

# Civic Tech DC Website

## What This Is

A Jekyll static site (deployed to GitHub Pages at civictechdc.org) for Civic Tech DC, using the USWDS design system with a gulp asset pipeline for images and CSS.

## Non-Negotiables

- Never hand-edit build artifacts: `assets/css/`, `assets/js/`, `assets/img/`, `assets/images/`, `assets/fonts/`, `_data/css-manifest.json`, or `_site/`. Edit the sources in `sass/` and `_images/` and regenerate.
- After changing anything in `sass/` or `_images/`, run `npm run build` and commit the regenerated assets — CI fails if `gulp compile` produces an uncommitted diff.
- Run `npm run lint` (Prettier) before committing — the CI lint check blocks PRs otherwise.
- Render images via `{% include responsive-image.html src=... alt=... %}` with originals in `_images/`; do not hand-write `<img>` tags pointing at `assets/`.
- Never commit secrets or API keys.

## Commands

- Dev (gulp + Jekyll, livereload): `npm run serve`
- Build assets: `npm run build`
- Lint/format: `npm run lint`
- No automated test suite.

## Navigation

At the start of every session, read `.mex/ROUTER.md` before doing anything else.
For full project context, patterns, and task guidance — everything is there.
