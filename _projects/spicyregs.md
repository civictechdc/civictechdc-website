---
layout: project
is_active: true
title: SpicyRegs
seo_title: "SpicyRegs: Accessible Federal Regulatory Data"
image: project_thumbnails/spicyregs.jpg
image_alt_text: Civic Hack DC participants collaborating on regulatory data tools
github_link: https://github.com/civictechdc/spicy-regs
slack_channel: C09H576E6LU
description: Turning federal regulations and public comments into accessible, reproducible data and tools for technical and nontechnical users.
seo_description: SpicyRegs helps people explore federal dockets, documents, and public comments through reproducible open data and research tools.
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-26
factual_review_status: pending
factual_review_required_approvals: 3
case_study_standard: true
---

SpicyRegs turns federal regulations and public comments into accessible, actionable information. The project is building an open, contributor-friendly platform that technical and nontechnical users can use to explore and analyze Regulations.gov data.

Its broader purpose is civic: help citizens, policy advocates, researchers, journalists, academics, and government practitioners understand and participate in federal policymaking.

## From a one-day hackathon to an ongoing project

SpicyRegs grew from Civic Hack DC on July 26, 2025. More than 80 civic technologists, policy experts, and government staff built 13 open-source prototypes for regulatory data in one day. The work included easier data access, artificial-intelligence-assisted questions and answers, pipelines, and dashboards.

The event built on Moravian University's Mirrulations project, which mirrors millions of federal regulatory records. The project has also collaborated with DataKind DC. Read the [Civic Hack DC recap]({{ site.baseurl }}/blog/2025/08/06/civic-hackdc-july-recap/) for the original projects and community.

SpicyRegs continues that work as a DMV-based project serving nationwide federal data.

## What people can use now

The [public SpicyRegs repository](https://github.com/civictechdc/spicy-regs) provides:

- a repeatable pipeline that reads public mirrored source records and writes Parquet data;
- downloadable docket, document, and comment tables;
- command-line tools for inspecting, sampling, and searching the data;
- a generated [data dictionary](https://docs.spicy-regs.dev/);
- example notebooks and contribution guidance;
- modular components that can support different analyses and interfaces.

The [SpicyRegs application](https://app.spicy-regs.dev/feed) presents current user-facing work. The data layer remains available for people who need a notebook, report, command-line workflow, or different application.

## Public data still needs context

Federal regulatory portals contain dockets, documents, attachments, and public comments in changing formats. Making them downloadable does not automatically make every search, comparison, or summary reliable.

- Source portals and mirrors can be incomplete, capped, delayed, or inconsistent.
- Attachments and extracted text need quality checks.
- Automated search, classification, and summaries need citations and human review.
- A repeatable dataset does not establish what a pattern means.
- The project has not published measured changes in public participation, policy outcomes, adoption, or research time.

SpicyRegs should make it easy to inspect the underlying record, source URL, stable identifier, retrieval details, and transformations behind an analysis.

## Use the data or join SpicyRegs

Policy advocates, researchers, journalists, academics, government practitioners, and interested members of the public can help test whether the data and interfaces answer real questions. Contributors can help with regulatory expertise, data analysis, machine learning, natural-language processing, pipelines, APIs, interface development, design, documentation, and community engagement.

Use the GitHub and Slack links above, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="spicyregs_project_cta">meet the team at a Project Night</a>, or <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="spicyregs_project_cta">bring Civic Tech DC a related regulatory or public-records problem</a>.
