---
name: styling-css
description: How to change styles via USWDS/Sass, add page-specific CSS, and keep the gulp build + cache-busting manifest in sync. Use for any CSS/Sass work.
triggers:
  - "css"
  - "sass"
  - "scss"
  - "style"
  - "theme"
  - "uswds"
  - "page_css"
edges:
  - target: context/stack.md
    condition: when confirming the USWDS/gulp toolchain
  - target: context/architecture.md
    condition: when tracing how CSS flows from sass/ to the page
last_updated: 2026-06-22
---

# Styling & CSS

## Context

All CSS is compiled from `sass` by the @uswds/compile gulp toolchain — never edit `assets/css` directly. `sass/custom` holds project Sass; `sass/theme` holds USWDS theme settings. `gulpfile.js`'s `addHashToCSS` content-hashes the `styles`, `events`, and `civichackdc` CSS files and writes the hash map to `_data/css-manifest.json`. `base.html` resolves `page_css` front matter against that manifest. Read `context/stack.md` and `context/architecture.md`.

## Steps

1. **Global styles / theme:** edit Sass under `sass/custom/` (project styles) or `sass/theme/` (USWDS design tokens/settings). Prefer USWDS utility classes in markup over new custom CSS where possible.
2. **Page-specific CSS:** create/edit the Sass that compiles to `assets/css/<name>.css`, then reference it from a page via `page_css: /assets/css/<name>.css`.
3. If the new CSS file should be cache-busted, add its basename to the glob in `addHashToCSS` in `gulpfile.js` (currently `{styles,events,civichackdc}`).
4. Run `npm run build` to compile Sass, hash filenames, and regenerate `_data/css-manifest.json`.
5. Run `npm run lint`.
6. Commit the changed `sass/` sources AND the regenerated `assets/css/` + `_data/css-manifest.json`.

## Gotchas

- CI's "Gulp compile" job runs `gulp compile` and fails on any diff — your committed `assets/` must exactly match a fresh build.
- `base.html` only links a hashed file if its basename is in `css-manifest.json`; otherwise it falls back to the raw `page_css` path (which won't be cache-busted and may not exist).
- A new page-specific CSS file won't be hashed until you add it to the `addHashToCSS` glob.
- This is USWDS v3 — v2 mixins/patterns do not apply.

## Verify

- [ ] Edited `sass/` sources only (no hand edits to `assets/css/`).
- [ ] `npm run build` run; `assets/css/` and `_data/css-manifest.json` regenerated and staged.
- [ ] `git diff` after a fresh `gulp compile` is clean (matches what CI checks).
- [ ] `npm run lint` run.
- [ ] Page styles render correctly at localhost:4000.

## Debug

- **Styles not applying:** confirm `page_css` basename exists in `_data/css-manifest.json`; re-run `npm run build`; hard-refresh.
- **CI "Gulp compile" check fails:** run `npm run build` locally and commit the regenerated `assets/` + manifest.
- **Old CSS served after a change:** the hash didn't update — re-run the build so the manifest points at the new hashed filename.

## Update Scaffold

- [ ] Update `.mex/ROUTER.md` "Current Project State" if what's working/not built has changed.
- [ ] Update any `.mex/context/` files that are now out of date.
- [ ] If this is a new task type without a pattern, create one in `.mex/patterns/` and add to `INDEX.md`.
