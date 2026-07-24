---
layout: project
is_active: true
title: Data and Democracy Project
seo_title: Data Tools for Journalists and Researchers
image: project_thumbnails/eavs.jpg
image_alt_text: Voting precinct data table
github_link: https://github.com/civictechdc/eavs_clc
slack_channel: C07HS3V6AAF
description: An active Civic Tech DC project making public election data easier for public-interest researchers, journalists, advocates, and election practitioners to analyze and reuse.
seo_description: See how Civic Tech DC is building reproducible election-data tools for journalists, researchers, advocates, administrators, and oversight groups.
content_owner: Data and Democracy project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

The Data and Democracy Project is building open, reproducible ways to download, clean, understand, and analyze public election data. Its first concrete user relationship is with the Campaign Legal Center's Voting Rights team; the broader intended audience includes journalists, researchers, election administrators, litigators, advocates, oversight groups, and other people working to understand or protect elections.

The project is active and in mid-stage development. The data pipeline exists, while user discovery, analysis, visualization, and product decisions are still in progress.

## Data friction: public does not mean usable

The U.S. Election Administration and Voting Survey (EAVS) is a detailed national dataset about how elections are administered, including voter registration, mail ballots, provisional ballots, voter-list maintenance, and other practices. The survey is public, but working with it can require:

- finding the correct files and codebooks for each election cycle;
- decoding roughly 400 columns with compact variable names;
- cleaning about 6,000 jurisdiction rows and inconsistent formats;
- understanding changes across years;
- preserving enough provenance to reproduce an analysis;
- deciding which comparisons are meaningful rather than merely possible.

Without a repeatable workflow, public-interest teams can spend more time preparing spreadsheets than investigating a question. Manual transformations are also difficult to review, update, and reuse.

## Users and validation

Early work focused on how the [Campaign Legal Center](https://campaignlegal.org/)'s Voting Rights team used EAVS data and where data preparation created bottlenecks. That relationship provided a real workflow and an initial standard for useful output.

The project is now testing broader needs with journalists, researchers, election practitioners, advocates, litigators, and oversight organizations. These groups may share a dataset but need different questions, levels of detail, explanations, and delivery formats. The team does not assume that a dashboard for one audience will serve all of them.

Current validation questions include:

- Which recurring questions should the cleaned data make easier to answer?
- What context does a journalist or policy analyst need to interpret a measure correctly?
- Which comparisons across years or jurisdictions are defensible?
- Should a validated need result in a dataset, documented analysis, notebook, chart, dashboard, or another form?
- Who will review outputs for election-administration and data-quality context?

## Reproducible workflow and current outputs

The public [EAVS repository](https://github.com/civictechdc/eavs_clc) contains a Python workflow that:

1. downloads source files from the U.S. Election Assistance Commission;
2. checks downloaded files against SHA-256 checksums;
3. preserves raw inputs separately from transformed data;
4. cleans columns into human-readable names;
5. produces analysis-ready files, including a Parquet timeseries;
6. supports exploratory notebooks and dashboard prototypes.

Notebooks are used to explore the data and test ideas. The project documentation calls for finalized transformations to become Python scripts so outputs can be rebuilt and reviewed rather than depending on an analyst's private sequence of spreadsheet edits.

Civic Tech DC volunteers contribute data engineering, quality checks, exploratory analysis, visualization, product discovery, outreach, documentation, and project coordination.

## Current status and known limits

As of July 2026, the project team reports:

- cleaned and standardized single-year work for 2020, 2022, and 2024;
- a shift toward the Election Assistance Commission's harmonized timeseries as the canonical cross-year source;
- combined timeseries outputs;
- partial demographic enrichment;
- analysis and visualization concepts in development;
- ongoing outreach and user discovery.

There is not yet one public end-user dashboard that should be treated as the project's final product. The pipeline reduces preparation friction; it does not decide what a pattern means, establish wrongdoing, or replace source documentation and domain review. Source-data limitations and changes across survey years still matter.

## What another public-data project can reuse

1. **Preserve provenance.** Keep raw files immutable, record source versions, and verify downloads.
2. **Turn repeated preparation into code.** A transparent script is easier to review and update than undocumented spreadsheet steps.
3. **Separate a reusable data layer from one analysis.** Clean, documented data can support many questions without implying that every comparison is valid.
4. **Prototype to learn, then operationalize.** Notebooks and charts help discover useful questions; stable outputs need tested, repeatable builds.
5. **Validate the delivery format.** A dashboard is not automatically more useful than a dataset, report, or reproducible notebook.
6. **Pair technical review with domain review.** Data quality and election-administration context affect what responsible analysis can claim.

## Related Civic Tech DC public-data work

{% assign spicyregs = site.projects | where: "title", "SpicyRegs" | first %}
{% assign cib = site.projects | where: "title", "CIB Mango Tree" | first %}
{% assign opendatadc = site.projects | where: "title", "Open Data DC" | first %}

- [SpicyRegs]({{ spicyregs.url | relative_url }}) helps people explore federal regulatory activity and public comments.
- [CIB Mango Tree]({{ cib.url | relative_url }}) helps researchers inspect online-activity datasets for possible coordination signals.
- [Open Data DC]({{ opendatadc.url | relative_url }}) is a historical example of work to make District data easier to find and use.

## Become a user, partner, or contributor

The project needs people who can test whether its outputs answer real questions. Journalists, researchers, election administrators, public-interest litigators, advocates, and oversight groups can share a workflow, question, or data obstacle as validating users or subject-matter partners.

Volunteers can contribute to Python data pipelines, documentation, data quality, analysis, visualization, user research, outreach, and project coordination.

<p>
  <a
    href="mailto:team@civictechdc.org?subject=Data%20and%20Democracy%20user%20or%20partner"
    class="usa-button"
    data-analytics-event="partner_inquiry_click"
    data-analytics-location="data_democracy_cta"
    >Become a validating user or partner</a
  >
  <a
    href="https://docs.google.com/forms/d/e/1FAIpQLSfZ7X3jxj1xwnmgvGi6b7FBPBf5SKoVHX3Vz1eV5wom5TXKNg/viewform"
    class="usa-button usa-button--outline"
    target="_blank"
    rel="noopener"
    data-analytics-event="project_join_click"
    data-analytics-location="data_democracy_cta"
    >Share your volunteer interests</a
  >
</p>

Have a different public-data problem? <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="data_democracy_cta">Bring it to Civic Tech DC</a> without assuming the answer must be another dashboard.
