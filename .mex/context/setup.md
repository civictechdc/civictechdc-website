---
name: setup
description: Dev environment setup and commands. Load when setting up the project for the first time or when environment issues arise.
triggers:
  - "setup"
  - "install"
  - "environment"
  - "getting started"
  - "how do I run"
  - "local development"
edges:
  - target: context/stack.md
    condition: when specific technology versions or library details are needed
  - target: context/architecture.md
    condition: when understanding how components connect during setup
last_updated: 2026-06-22
---

# Setup

## Prerequisites

- **Ruby 3.2.0** and **Node.js 23.7.0** — versions pinned in `.tool-versions`; recommended to manage with [asdf](https://asdf-vm.com/).
- **Bundler** (`gem install bundler`) and **npm** (ships with Node).
- On Ubuntu you may need `libyaml-dev` and `libffi-dev` before installing Ruby.
- Alternatively, **Docker** — the repo ships a `docker-compose.yml` dev setup.

## First-time Setup

1. `asdf install` (installs the pinned Ruby and Node), or install those versions manually.
2. `bundle install` — installs Jekyll and gems.
3. `npm install` — installs gulp and the asset pipeline.
4. `npm run serve` — runs gulp (background) + `jekyll serve` (foreground, livereload).
5. Open http://localhost:4000 in your browser.

Docker alternative: `docker-compose build` → `docker-compose up -d` → open http://localhost:4000 (stop with `docker-compose down`).

## Environment Variables

None required. The site is fully static and reads no secrets at build time. Do not introduce committed secrets/API keys.

## Common Commands

- `npm run dev` — alias for `npm run serve` (convenience).
- `npm run serve` — gulp + Jekyll dev server with livereload on port 4000.
- `npm run build` — `gulp compile`: processes images, compiles USWDS CSS, writes `_data/css-manifest.json`.
- `npm run lint` — `prettier . --write`: formats Liquid/HTML/Markdown/CSS/JS.
- `bundle exec jekyll serve` — Jekyll only (no asset rebuild), if assets are already compiled.

## Common Issues

- **CI "Gulp compile" check fails:** your committed `assets/` are out of date. Run `npm run build`, then commit the changed files in `assets/` and `_data/css-manifest.json`.
- **CI lint check fails:** run `npm run lint` and commit the formatting changes.
- **CSS not updating / stale styles:** the hashed filename changed — re-run `npm run build` so `base.html` links the new manifest entry; hard-refresh the browser.
- **Port 4000 in use:** `lsof -i :4000` then `kill -9 <PID>`, or serve on another port with `bundle exec jekyll serve --port 4001`.
- **`bundle install`/`jekyll serve` fails with "version solving has failed" / Ruby 4.x:** the active `ruby` is Homebrew's (`/opt/homebrew/bin/ruby` → 4.0.x), which Jekyll 3.x cannot run on. The project pins Ruby 3.2.0 via `.tool-versions`. Ensure the asdf shims are ahead of `/opt/homebrew/bin` on PATH (asdf init must run in your shell) so `ruby -v` reports 3.2.0 in this directory; the gems are installed under the asdf 3.2.0 install.
- **LiveReload "no acceptor (port is in use)" on startup:** a stale Jekyll/livereload process still holds port 35729. `pkill -f 'jekyll serve'` (and `pkill -f gulp`), confirm `lsof -i :35729` is empty, then restart.
