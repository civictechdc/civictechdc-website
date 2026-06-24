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

- CI's "Gulp compile" job runs `gulp compile` then `git diff --exit-code`. Most build output is gitignored (`assets/css/*-*.css`, `styles*.css`, `assets/images/`), so the gate that actually fails is the tracked `_data/css-manifest.json` — run `npm run build` and commit the updated manifest. (The unhashed `civichackdc.css`/`events.css` are also tracked and must match.)
- **Do not run `npm run lint` repo-wide without reviewing the diff.** The `@shopify/prettier-plugin-liquid` reformatter wraps Liquid `{% include %}` argument strings across lines (e.g. `alt="Campaign\nLegal Center"`), corrupting `responsive-image.html` parameters. Format Liquid files by hand to match surrounding style. CI's lint job uses `prettier --write`, which never exits non-zero, so it is advisory only.
- When overriding USWDS component styles, prefer matching/raising selector specificity over `!important` — custom `sass/` compiles after USWDS, so at **equal-or-higher** specificity a `.ctdc-*`-scoped selector wins on source order. **But verify the competing USWDS selector in the compiled `assets/css/styles-*.css` first — USWDS frequently nests deeper than a single `.ctdc-* .usa-x` descendant.** Concrete trap: USWDS colors nav anchors via `.usa-nav__primary a:not(.usa-button):not(.usa-current)` which is `(0,3,1)`, so `.ctdc-header .usa-nav__link` `(0,2,0)` **loses** and links render USWDS grey (`#565c65`). The fix is to match that depth — `.ctdc-header .usa-nav__primary a.usa-nav__link` `(0,3,1)`, wins on source order — not 54 scattered `!important`. Fall back to `!important` only when matching specificity is genuinely impractical (the project keeps just `.slack-btn-icon` + the reduced-motion guard).
- Page-scoped stylesheets (`events.scss`, `civichackdc.scss`) compile to their own CSS **without** the `:root` token block, so their `var(--ctdc-*)` references resolve only because `styles.css` (which defines `:root`) loads first on every page via `core/css.html`. Use the tokens, but never rely on a page stylesheet rendering correctly in isolation.
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
