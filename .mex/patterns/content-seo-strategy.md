---
name: content-seo-strategy
description: How to create, implement, or refresh the canonical content and SEO strategy using current site truth, search evidence, audience language, project proof, and conversion measurement.
triggers:
  - "content strategy"
  - "SEO strategy"
  - "keyword strategy"
  - "content roadmap"
edges:
  - target: context/architecture.md
    condition: when mapping content to rendered pages and routes
  - target: patterns/seo-metadata.md
    condition: when recommendations include metadata, structured data, or crawler behavior
last_updated: 2026-07-24
---

# Content and SEO Strategy

## Context

The canonical strategy lives at `docs/content-seo-strategy.md`; its measurement contract lives at `docs/content-seo-measurement.md`; project and partner approval status lives at `docs/content-seo-factual-review.md`. They must reflect the current repository, live site, publishing capacity, audience language, project evidence, validated search intent, instrumentation, and factual-review state. Search observations are dated snapshots, not permanent rank claims.

## Steps

1. Read the live Homepage, Pitch, Partners, Projects, About, priority project pages, and navigation sources. Review the Blog only when it contains material evidence or owns current site behavior.
2. Inventory active and past projects that can substantiate audience and use-case claims.
3. Separate evidence into:
   - current site and project truth;
   - validated search observations;
   - revised keyword hypotheses;
   - unvalidated audience-expansion hypotheses.
4. Define the core positioning, operating model, audiences, qualification boundaries, and non-goals.
5. Give each core page one primary job, search intent, and conversion action.
6. Record the organization's realistic publishing cadence and choose a strategy that works within it.
7. Assign each useful keyword cluster to one durable page; prefer an existing core or project page over a new route.
8. Prioritize foundational pages and evidence-rich project pages before generic informational content.
9. Define content standards, distribution, measurement, governance, and a sequenced execution plan.
10. Record the date, engine/location limitations, assumptions, and open research questions.
11. When implementing the strategy, update the durable page owners, proof pages, internal links, content-review fields, and data-layer events together. Add rendered assertions to `scripts/check-seo.rb` for requirements that must not regress.

## Verify

- [ ] Claims match current page and project sources.
- [ ] Search observations identify their date, engine, geography, and limitations.
- [ ] Validated terms are not mixed with hypotheses.
- [ ] Pitch and Partners have distinct ownership.
- [ ] The strategy preserves brand/entity visibility while adding needs-based discovery.
- [ ] Every priority keyword cluster has one durable page owner.
- [ ] The plan fits the organization's publishing cadence and does not require recurring blog posts.
- [ ] Metadata recommendations fit the 65-character title and 160-character description limits.
- [ ] The plan optimizes for qualified mission outcomes rather than traffic alone.
- [ ] Priority content has a factual source, responsible owner, CTA, and measurement path.
- [ ] Every active project and explicitly promoted past case study declares and follows `case_study_standard: true`.
- [ ] Factual approval remains visibly pending in source until the required project and partner reviewers record approval evidence.
- [ ] Measurement distinguishes discovery clicks, intent signals, completed actions, and qualified outcomes.
- [ ] `npm run check:seo` verifies the implemented priority-page content and conversion hooks.
- [ ] `docs/content-seo-strategy.md`, `docs/content-seo-measurement.md`, `docs/content-seo-factual-review.md`, this pattern, the pattern index, and the router remain synchronized.
