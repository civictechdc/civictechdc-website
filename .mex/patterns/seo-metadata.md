---
name: seo-metadata
description: How to maintain canonical search metadata, social previews, structured data, and crawler discovery files.
triggers:
  - "SEO"
  - "metadata"
  - "social preview"
  - "structured data"
  - "sitemap"
  - "robots"
edges:
  - target: context/architecture.md
    condition: when changing how metadata is rendered or discovered
  - target: patterns/responsive-images.md
    condition: when adding or changing a social preview image
last_updated: 2026-07-21
---

# SEO and Metadata

## Ownership

`_includes/core/meta.html` owns titles, descriptions, canonicals, robots directives, Open Graph tags, Twitter cards, and the feed link. It calls `_includes/core/structured-data.html` for JSON-LD. Keep shared metadata logic in those files instead of duplicating tags in layouts or pages.

The preferred origin is `https://www.civictechdc.org`. `_config.yml` supplies that origin to canonical URLs, the sitemap, the feed, and structured data.

## Content Contract

Every indexable page needs:

- A unique `title` and a useful, page-specific `description` or `excerpt`.
- A representative image under `_images/` and descriptive image alt text. Project `image`, event `card_image`, and page `hero-image` fields automatically become social images. Use `social_image` and `social_image_alt` when the default is not appropriate.
- A rendered title no longer than 65 characters, including the ` | Civic Tech DC` suffix, and a description no longer than 160 characters. Use `seo_title` or `seo_description` when visible copy must remain longer.

Image fields are paths relative to `_images/`, not public `/assets/images/` paths. Raster social images resolve to their generated `-1200w` variant; SVG, GIF, and WebP files keep their generated filename.

## Special Cases

- The 404 page uses `robots: noindex, follow` and `sitemap: false`.
- Off-site event redirects use `redirect_to` and `sitemap: false` so only the destination is canonical and the source document does not leak into the sitemap.
- Hosted event pages include an `event` object with ISO 8601 start and end times, a Schema.org status and attendance mode, and a complete location. The visible date, time, venue, and address must match that object.
- Blog category and tag archives are intentionally indexable. Their layout receives unique generated titles and descriptions and emits `CollectionPage` structured data.

## Generated Output

- `jekyll-sitemap` generates `/sitemap.xml` from indexable documents.
- `jekyll-feed` generates `/feed.xml` from blog posts.
- `/robots.txt` permits crawling and advertises the canonical sitemap.
- Every indexable page emits Organization, WebSite, and page JSON-LD. Blog posts also emit BlogPosting data; hosted event pages emit Event data.

Do not edit generated `_site`, `assets/images`, sitemap, or feed output.

## Verify

Run:

```bash
npm run check:seo
```

The check performs a production Jekyll build and validates every rendered HTML route, redirect, social image, JSON-LD graph, sitemap URL, robots directive, and feed entry. It also detects duplicate metadata and noncanonical origins. Run `npm run build` first only when `sass/` or `_images/` changed.
