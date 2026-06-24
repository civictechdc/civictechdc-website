## What and why

<!-- One or two sentences: what does this PR change, and why? -->

Closes #

## Type of change

<!-- Check all that apply. -->

- [ ] Content (pages, copy, data files)
- [ ] Styling / Sass
- [ ] Component or template (HTML, Liquid, includes, layouts)
- [ ] Build or tooling (gulp, CI, package config)
- [ ] Docs

## Screenshots

<!-- For any visual change, drop a before/after screenshot here. You can paste images directly into the text box. -->

## Checklist

- [ ] If I changed anything in `sass/` or `_images/`, I ran `npm run build` and committed the regenerated assets (including `_data/css-manifest.json`).
- [ ] I ran `npm run lint` and the files I touched are clean.
- [ ] I did not hand-edit build artifacts (`assets/css/`, `assets/js/`, `assets/img/`, `assets/images/`, `assets/fonts/`, `_data/css-manifest.json`).
- [ ] Any new images were added as originals in `_images/` and rendered via the `{% include responsive-image.html %}` include.
- [ ] No secrets or API keys are included.
- [ ] No em-dashes appear in any copy I wrote (use commas, colons, parens, or periods instead).
