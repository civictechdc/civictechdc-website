---
layout: project
is_active: true
title: Data and Democracy Project
seo_title: "Election Data Tools: Data and Democracy"
image: project_thumbnails/eavs.jpg
image_alt_text: Voting precinct data table
github_link: https://github.com/civictechdc/eavs_clc
slack_channel: C07HS3V6AAF
description: Making election and democracy data easier to understand and use so journalists, advocates, administrators, and oversight groups can act on what they find.
seo_description: Data and Democracy builds reproducible election-data tools for journalists, advocates, administrators, researchers, and oversight groups.
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-26
case_study_standard: true
---

The Data and Democracy Project makes public election data easier to understand and use. It helps journalists, advocates, election administrators, litigators, researchers, and oversight groups spend less time wrangling spreadsheets and more time examining what the data shows.

The project is active and in mid-stage development. Its data pipeline exists; analysis, visualization, outreach, and user discovery continue.

## Why election data is hard to use

US elections generate large public datasets, but the files are scattered, inconsistent, and documented for specialists. Patterns that matter can remain buried in spreadsheets and codebooks because few public-interest teams have time to prepare the data repeatedly.

The project's flagship dataset is the US Election Administration and Voting Survey (EAVS). It covers voter registration, mail ballots, provisional ballots, voter-list maintenance, and other election practices. A typical file contains roughly 400 columns and 6,000 jurisdiction rows.

## What the team is building

The public [EAVS repository](https://github.com/civictechdc/eavs_clc) contains a Python workflow that:

1. downloads source files from the US Election Assistance Commission;
2. verifies downloads with SHA-256 checksums;
3. preserves raw inputs separately from transformed data;
4. replaces compact variable names with readable labels;
5. produces analysis-ready files, including a Parquet timeseries;
6. supports exploratory notebooks and dashboard prototypes.

The team uses notebooks to explore questions. It moves stable transformations into Python scripts so another person can rebuild and review the output instead of relying on private spreadsheet steps.

## Campaign Legal Center and broader users

Early work focused on understanding how the [Campaign Legal Center](https://campaignlegal.org/)'s Voting Rights team worked with EAVS data and where preparation created bottlenecks. That workflow helped shape the pipeline. This page treats it as early user research, not a formal partnership or broader endorsement.

The project is also talking with journalists, researchers, election practitioners, advocates, litigators, and oversight organizations. Those groups may use the same dataset to answer different questions, so the team does not assume that one dashboard will serve everyone.

## Current project status

As of July 2026:

- data for 2020, 2022, and 2024 have been cleaned and standardized;
- the team is shifting toward the Election Assistance Commission's harmonized timeseries as the canonical cross-year source;
- combined timeseries outputs exist;
- demographic enrichment is partly integrated;
- analysis and visualization concepts are in development;
- outreach and user discovery continue.

No single public dashboard represents the final product. The pipeline makes preparation more reproducible; it does not decide what a pattern means, establish wrongdoing, or remove the need for source documentation and election-administration expertise.

## Join the project or test the data

Michael, Yashin, and Cameron coordinate the project with Civic Tech DC volunteers. Current work includes Python data pipelines, data quality, analytics, visualization, documentation, user research, outreach, and project management. The most important qualification is curiosity about how elections work and who gets to participate.

Journalists, researchers, election administrators, litigators, advocates, and oversight groups can share a question or data obstacle as validating users. Use the GitHub and Slack links above, or:

<p>
  <a
    href="mailto:team@civictechdc.org?subject=Data%20and%20Democracy%20user%20or%20partner"
    class="usa-button"
    data-analytics-event="partner_inquiry_click"
    data-analytics-location="data_democracy_cta"
    >Help validate the election-data work</a
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

Have a different public-data problem? <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="data_democracy_cta">Bring it to Civic Tech DC</a>.
