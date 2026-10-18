---
name: opportunities
description: Maintain the structured opportunity board and Decap editor.
triggers:
  - opportunities
  - Decap
---

# Opportunity board

## Context

Read `docs/opportunities.md` and `context/architecture.md`.

## Steps

Edit `_data/opportunities.json` or its Decap form in `admin/config.yml`.
Keep illustrative entries as drafts; only confirmed open roles appear publicly.
Use unique stable IDs and review all required details before opening a role.
Use `accepts_multiple` for shared roles and `project_path` for project-specific
roles. Shared card markup is in `components/opportunity-card.html`; project
pages render matching open roles through `components/project-opportunities.html`.
The board uses active project images for the linked project directory.
Directus 12.5.0 rejected custom permission rules as license restricted during
evaluation; do not promise that capability on a free installation.
Use USWDS utilities for cards and inline progressive enhancement for filters.

## Gotchas

GitHub Pages cannot run the OAuth service. Keep `/admin/` as a setup notice until
an administrator supplies and validates a compatible OAuth backend. Local proxy
editing is for trusted localhost only. Public source files are not confidential.
The shared form needs provider-specific configuration for preselected roles.

## Verify

Run the SEO check and test draft/open/closed rendering, category filtering,
empty states, keyboard disclosure controls, and editor round trips.

## Debug

Check JSON shape against the Decap file collection, OAuth origin/callback and
repository permissions, then GitHub Pages build logs.

## Update Scaffold

Update the router and these instructions when authentication or form setup changes.
