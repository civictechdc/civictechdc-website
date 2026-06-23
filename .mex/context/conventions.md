---
name: conventions
description: How code is written in this project — naming, structure, patterns, and style. Load when writing new code or reviewing existing code.
triggers:
  - "convention"
  - "pattern"
  - "naming"
  - "style"
  - "how should I"
  - "what's the right way"
edges:
  - target: context/architecture.md
    condition: when a convention depends on understanding the system structure
last_updated: 2026-06-22
---

# Conventions

## Naming

- Collection entries: kebab-case Markdown filenames (`_projects/clean-slate.md`, `_events/civichackdc.md`). The slug becomes the URL.
- Blog posts: Jekyll date-prefixed format `_posts/YYYY-MM-DD-<slug>.md`.
- Source images: stored in `_images` (often under subfolders like `_images/logos`); referenced by path _relative to the `_images` folder_ in the `_includes/responsive-image.html` include.
- Page-specific CSS: a Sass file compiled into `assets/css`, referenced via `page_css` front matter; the manifest resolves it to the hashed filename.
- Includes: `_includes/core` for structural partials, `_includes/components` for reusable UI; reference as `{% include components/card.html %}`.

## Structure

- Every page/collection item starts with YAML front matter; `layout:` selects a template from `_layouts/`.
- Layouts nest: specialized layout → `default.html` → `base.html`. `base.html` owns `<head>`, meta, CSS linking, and GTM.
- Styles go in `sass/` only — `sass/custom/` for project Sass, `sass/theme/` for USWDS settings. Never write CSS directly into `assets/css/`.
- USWDS utility classes are used directly in markup (e.g. `class="margin-top-0 padding-left-0 font-heading-med"`); prefer utilities over new custom CSS where possible.
- Generated output is treated as build artifacts — regenerate, don't edit. Tracking is selective: under `assets/`, only `assets/img`, `assets/fonts`, `assets/js`, and the unhashed `assets/css/civichackdc.css` + `assets/css/events.css` are committed. The hashed `assets/css/*-*.css` and `assets/css/styles*.css`, plus all of `assets/images/`, are gitignored and rebuilt on deploy. `_data/css-manifest.json` is the committed fingerprint the CI gulp-compile job diffs against, so after editing `sass/` you must run `npm run build` and commit the updated manifest.
- Brand colors are centralized as CSS custom properties on `:root` in `sass/custom/styles.scss` (e.g. `--ctdc-navy`, `--ctdc-gold`, plus `--ctdc-*-rgb` channel vars for alpha variants). Reuse these instead of hardcoding hex values.

## Patterns

**Images — always use the include, never raw `<img>` to assets:**

```liquid
{% comment %} Correct — src is relative to _images/, variants/lazy-loading handled for you {% endcomment %}
{% include responsive-image.html src="project_thumbnails/opendatadc.png" alt="Open Data DC site" class="maxh-mobile" %}

{% comment %} Wrong — bypasses srcset, hashing, and lazy-loading {% endcomment %}
<img
  src="/assets/images/project_thumbnails/opendatadc.png"
  alt="Open Data DC site"
>
```

Use `eager=true` for above-the-fold/hero images (sets `fetchpriority="high"` instead of `loading="lazy"`). SVGs and GIFs are served as-is (not resized).

**Page-specific CSS — reference the source path, let the manifest hash it:**

```yaml
# in a page's front matter
page_css: /assets/css/civichackdc.css
```

`base.html` looks the filename up in `site.data.css-manifest` and links the hashed file; falls back to the raw path if absent. The Sass source must be wired into the gulp build and the file added to `addHashToCSS` in `gulpfile.js` if it needs hashing.

## Verify Checklist

Before presenting any change:

- [ ] No hand edits to `assets/`, `_site/`, or `_data/css-manifest.json` — only sources in `sass/` and `_images/`.
- [ ] If `sass/` or `_images/` changed: ran `npm run build` and the regenerated `assets/` + manifest are staged.
- [ ] Images are rendered via `responsive-image.html` (originals added to `_images/`), not raw `<img>` to `assets/`.
- [ ] New collection/blog files have correct front matter (`layout`, and for posts the `YYYY-MM-DD-` filename prefix).
- [ ] Ran `npm run lint` (Prettier) and committed the formatting.
- [ ] Internal links/asset paths use `relative_url`/`baseurl`-safe forms consistent with existing pages.
