---
name: add-content
description: How to add a project, special event, or blog post. Covers collection/post front matter, layouts, and the build steps that follow.
triggers:
  - "add a project"
  - "new project"
  - "add an event"
  - "new event"
  - "add a blog post"
  - "new post"
  - "write a blog"
edges:
  - target: context/conventions.md
    condition: when checking front matter and naming rules
  - target: patterns/responsive-images.md
    condition: when the new content needs images
  - target: patterns/seo-metadata.md
    condition: when setting titles, descriptions, social previews, redirects, or event data
last_updated: 2026-07-21
---

# Add Content (Project / Event / Blog Post)

## Context

Content lives in Jekyll collections and posts:

- Projects → `_projects/<slug>.md` (collection, `output: true`, `project` layout).
- Events → `_events/<slug>.md` (collection, permalink `/events/<slug>/`, `events` layout).
- Blog posts → `_posts/YYYY-MM-DD-<slug>.md` (`post` layout).

All start with YAML front matter. Images referenced in content must follow `patterns/responsive-images.md`. Read `context/conventions.md` first.

## Task: Add a Project

### Steps

1. Create `_projects/<kebab-slug>.md`. The filename slug becomes the URL.
2. Front matter (mirror `_projects/congressional-tech.md`):
   ```yaml
   ---
   layout: project
   is_active: true # true = active project, false = archived/inactive
   title: Project Name
   image: project_thumbnails/<name>.png # path relative to _images/
   image_alt_text: Describe the thumbnail
   description: One-sentence summary used on cards.
   seo_description: Optional shorter search summary when description exceeds 160 characters.
   github_link: https://github.com/... # optional
   slack_channel: project-channel-name # optional (renders a Slack link)
   ---
   ```
3. Add the thumbnail original to `_images/project_thumbnails/` (see responsive-images pattern), then write the body (Markdown/HTML + USWDS classes).

### Gotchas

- `github_link` and `slack_channel` are optional — `project.html` only renders those links when present.
- The body's lead image is rendered by `project.html` via `responsive-image.html` using the `image` field — so `image` must be a real path under `_images/`.
- `image` and `image_alt_text` also supply the social preview. Describe the actual image rather than writing generic text such as "project screenshot."

### Verify

- [ ] File is `_projects/<slug>.md` with `layout: project`.
- [ ] `image` points to a file that exists under `_images/`.
- [ ] Project appears on the projects page after `npm run serve`.
- [ ] `npm run check:seo` passes.

## Task: Add a Special Event

### Steps

1. Create `_events/<kebab-slug>.md` → URL becomes `/events/<slug>/`.
2. Front matter (mirror `_events/civichackdc.md`):
   ```yaml
   ---
   layout: events
   title: "Event Name"
   date: 2025-07-26
   location: "Washington DC"
   url: /shortlink # optional vanity/redirect path
   card_image: hero-image-x.png # path relative to _images/
   social_image_alt: Describe the event image
   registration_link: https://lu.ma/...
   page_css: /assets/css/<name>.css # optional, only if the event has custom CSS
   description: |
     Short description for cards/meta.
   event:
     start_date: "2026-07-21T18:00:00-04:00"
     end_date: "2026-07-21T20:00:00-04:00"
     status: https://schema.org/EventScheduled
     attendance_mode: https://schema.org/OfflineEventAttendanceMode
     location:
       name: Venue Name
       street_address: 123 Example St NW
       address_locality: Washington
       address_region: DC
       postal_code: "20001"
   ---
   ```
3. Write the body using `<section>`/`container` markup and `responsive-image.html` for images.

### Gotchas

- If you set `page_css`, the Sass source must be wired into `gulpfile.js` and run through `npm run build` — see `patterns/styling-css.md`. Otherwise the link silently falls back to an unhashed path.
- Events use the `events` layout, not `default`.
- Keep visible event facts synchronized with the `event` object. Use explicit UTC offsets in ISO 8601 timestamps.
- For an off-site-only event, use `redirect_to: https://...` and `sitemap: false` instead of the `event` object. The redirect target becomes canonical.

### Verify

- [ ] Reachable at `/events/<slug>/`.
- [ ] Any `page_css` resolves (custom CSS actually loads), or omit the field.
- [ ] `npm run check:seo` passes and detects the hosted Event entity or redirect exclusion.

## Task: Add a Blog Post

### Steps

1. Create `_posts/YYYY-MM-DD-<slug>.md` (date prefix is required by Jekyll).
2. Front matter (mirror `_posts/2025-08-06-civic-hackdc-july-recap.md`):
   ```yaml
   ---
   layout: post
   title: "Post Title"
   date: 2025-08-06 16:00:00 -0500
   author: "Author Name"
   categories: [Events, Community]
   tags: [tag-one, tag-two]
   excerpt: "One or two sentences shown in listings."
   social_image: representative-image.jpg # path relative to _images/
   social_image_alt: Describe the image
   page_css: /assets/css/<name>.css # optional
   ---
   ```
3. Write the body in Markdown/HTML.

### Gotchas

- `categories`/`tags` auto-generate archive pages via `jekyll-archives` (`/blog/category/:name/`, `/blog/tag/:name/`) — reuse existing names where possible.
- `_config.yml` sets `future: true`, so future-dated posts render in dev; double-check the `date` before publishing.

### Verify

- [ ] Filename has the `YYYY-MM-DD-` prefix and `layout: post`.
- [ ] Post shows in the blog index and its category/tag archives.
- [ ] `npm run check:seo` passes.

## Update Scaffold

- [ ] Update `.mex/ROUTER.md` "Current Project State" if content categories or counts changed meaningfully.
- [ ] Update any `.mex/context/` files that are now out of date.
- [ ] If this is a new task type without a pattern, create one in `.mex/patterns/` and add to `INDEX.md`.
