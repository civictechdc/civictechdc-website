---
name: responsive-images
description: How to add and reference images so they get responsive variants, lazy-loading, and correct paths. Use whenever content needs an image.
triggers:
  - "image"
  - "responsive image"
  - "add a photo"
  - "logo"
  - "srcset"
  - "picture"
edges:
  - target: context/conventions.md
    condition: when confirming the image convention and verify checklist
  - target: patterns/styling-css.md
    condition: when an image change is part of a broader asset rebuild
last_updated: 2026-06-22
---

# Responsive Images

## Context
Image originals live in `_images/`. The gulp pipeline (`gulp-sharp-responsive`) generates `-400w`, `-800w`, `-1200w`, `-1800w` raster variants into `assets/images/`; SVGs/GIFs are optimized but NOT resized. The `_includes/responsive-image.html` include builds the `<img>` with the right `srcset`, `sizes`, alt, and lazy/eager loading. Read `context/conventions.md`.

## Steps
1. Put the original in `_images/` (use a subfolder for grouping, e.g. `_images/logos/`, `_images/project_thumbnails/`).
2. Run `npm run build` (or `npm run serve`, which runs gulp) to generate the resized variants into `assets/images/`.
3. Reference it in Liquid with the path **relative to `_images/`**:
   ```liquid
   {% include responsive-image.html src="logos/taoti.jpg" alt="Taoti Creative" class="usa-card__img" %}
   ```
4. For above-the-fold/hero images, add `eager=true` (sets `fetchpriority="high"` instead of `loading="lazy"`).
5. Optional params: `class`, `style`, `sizes` (defaults to `100vw`).
6. Commit both the new `_images/` original AND the generated files under `assets/images/`.

## Gotchas
- `src` is relative to `_images/`, not an `assets/` path. Passing a full `/assets/images/...` path breaks the srcset logic.
- SVG/GIF: the include serves the original as-is — there are no `-400w` variants, so don't expect resizing.
- The include passes raster requests to `<base>-<width>w.<ext>`; if you skip `npm run build`, those variant files won't exist and images 404.
- Do not hand-write `<img>` tags pointing at `assets/` — that bypasses srcset, lazy-loading, and consistency.

## Verify
- [ ] Original added under `_images/`; `src` is the path relative to `_images/`.
- [ ] `npm run build` run; matching variants exist in `assets/images/` and are staged.
- [ ] `alt` text is meaningful (the include escapes it).
- [ ] Hero/LCP images use `eager=true`.

## Debug
- **Image 404s:** variant files missing — re-run `npm run build`; confirm the `src` path matches a file in `_images/`.
- **Image not lazy/eager as expected:** check the `eager` param; default is lazy.
- **Wrong size served:** review the `sizes` attribute (default `100vw`) and the four width breakpoints in `gulpfile.js`.

## Update Scaffold
- [ ] Update `.mex/ROUTER.md` "Current Project State" if what's working/not built has changed.
- [ ] Update any `.mex/context/` files that are now out of date.
- [ ] If this is a new task type without a pattern, create one in `.mex/patterns/` and add to `INDEX.md`.
