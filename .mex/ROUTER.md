---
name: router
description: Session bootstrap and navigation hub. Read at the start of every session before any task. Contains project state, routing table, and behavioural contract.
edges:
  - target: context/architecture.md
    condition: when working on system design, integrations, or understanding how components connect
  - target: context/stack.md
    condition: when working with specific technologies, libraries, or making tech decisions
  - target: context/conventions.md
    condition: when writing new code, reviewing code, or unsure about project patterns
  - target: context/decisions.md
    condition: when making architectural choices or understanding why something is built a certain way
  - target: context/setup.md
    condition: when setting up the dev environment or running the project for the first time
  - target: patterns/INDEX.md
    condition: when starting a task — check the pattern index for a matching pattern file
last_updated: 2026-07-21
---

# Session Bootstrap

If you haven't already read `AGENTS.md`, read it now — it contains the project identity, non-negotiables, and commands.

Then read this file fully before doing anything else in this session.

## Current Project State

**Working:**

- Full Jekyll site live at `www.civictechdc.org`, with the bare domain redirecting to the canonical `www` origin; auto-deployed from `main` to GitHub Pages.
- `projects` collection (`_projects/`) → rendered with the `project` layout; project cards on the projects page.
- `events` collection (`_events/`) → permalink `/events/:name/`, often with page-specific CSS.
- Blog (`_posts/`) with `jekyll-archives` category/tag pages.
- USWDS 3.12 design system compiled from `sass/` via gulp; CSS cache-busted into `_data/css-manifest.json`.
- Brand colors live as CSS custom properties on `:root` in `sass/custom/styles.scss` (`--ctdc-navy`, `--ctdc-gold`, `--ctdc-button-dark`, `--ctdc-*-rgb` channels); a `prefers-reduced-motion` guard and `.usa-button--dark` / `.ctdc-project-links` helpers exist. All page layouts route content through `default.html`'s single `<main id="main-content">` landmark (skip-link target).
- Responsive image pipeline: originals in `_images/` → resized variants in `assets/images/` via `responsive-image.html`.
- Canonical SEO pipeline: unique page metadata and social previews from `core/meta.html`; Organization, WebSite, WebPage, BlogPosting, and Event JSON-LD from `core/structured-data.html`; canonical sitemap, feed, and robots discovery files.
- Rendered quality checks: `npm run check:seo` validates every built route and discovery artifact; `npm run check:a11y` checks shared include markup. Both run in pull-request CI and before deployment.

**Not yet built / absent:**

- No application unit or integration test suite.
- No backend, database, or server-side code — fully static.

**Known issues / watch-outs:**

- The CI gulp-compile job runs `gulp compile` then `git diff --exit-code`; the tracked fingerprint is `_data/css-manifest.json` (most `assets/` output is gitignored). Always run `npm run build` after touching `sass/` or `_images/` and commit the updated manifest.
- `npm run lint` uses `@shopify/prettier-plugin-liquid`, which corrupts Liquid `{% include %}` argument strings (wraps them across lines). Do not run it repo-wide without reviewing the diff; CI's lint step is advisory (`prettier --write` never fails).
- Package name in `package.json` is still `codefordc-website` (project was renamed from Code for DC to Civic Tech DC).

## Routing Table

Load the relevant file based on the current task. Always load `context/architecture.md` first if not already in context this session.

| Task type                          | Load                                             |
| ---------------------------------- | ------------------------------------------------ |
| Understanding how the system works | `context/architecture.md`                        |
| Working with a specific technology | `context/stack.md`                               |
| Writing or reviewing code          | `context/conventions.md`                         |
| Making a design decision           | `context/decisions.md`                           |
| Setting up or running the project  | `context/setup.md`                               |
| Any specific task                  | Check `patterns/INDEX.md` for a matching pattern |

## Behavioural Contract

For every task, follow this loop:

1. **CONTEXT** — Load the relevant context file(s) from the routing table above. Check `patterns/INDEX.md` for a matching pattern. If one exists, follow it. Narrate what you load: "Loading architecture context..."
2. **BUILD** — Do the work. If a pattern exists, follow its Steps. If you are about to deviate from an established pattern, say so before writing any code — state the deviation and why.
3. **VERIFY** — Load `context/conventions.md` and run the Verify Checklist item by item. State each item and whether the output passes. Do not summarise — enumerate explicitly.
4. **DEBUG** — If verification fails or something breaks, check `patterns/INDEX.md` for a debug pattern. Follow it. Fix the issue and re-run VERIFY.
5. **GROW** — After completing the task:
   - If no pattern exists for this task type, create one in `patterns/` using the format in `patterns/README.md`. Add it to `patterns/INDEX.md`. Flag it: "Created `patterns/<name>.md` from this session."
   - If a pattern exists but you deviated from it or discovered a new gotcha, update it with what you learned.
   - If any `context/` file is now out of date because of this work, update it surgically — do not rewrite entire files.
   - Update the "Current Project State" section above if the work was significant.
