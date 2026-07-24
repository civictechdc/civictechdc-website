---
layout: project
is_active: true
title: SpicyRegs
seo_title: "Federal Regulatory Data Tools: SpicyRegs"
image: project_thumbnails/spicyregs.jpg
image_alt_text: Civic Hack DC participants collaborating on regulatory data tools
github_link: https://github.com/civictechdc/spicy-regs
slack_channel: C09H576E6LU
description: An active open-source project turning federal regulatory dockets, documents, and public comments into reproducible data and accessible research tools.
seo_description: SpicyRegs turns federal regulatory dockets, documents, and public comments into reproducible data and accessible open-source research tools.
content_owner: SpicyRegs project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

SpicyRegs is building open, reproducible ways to acquire, clean, document, search, and analyze federal regulatory dockets, documents, and public comments. The project supports policy advocates, researchers, journalists, public-interest technologists, and government practitioners who need to work with regulatory data without relying on an undocumented sequence of downloads and spreadsheets.

## Challenge: public comments are public but difficult to reuse

Federal regulatory portals contain large collections of dockets, agency documents, attachments, and public comments. Researchers still have to locate the relevant records, understand relationships among them, handle changing source formats, extract text, preserve provenance, and produce analysis-ready data.

One-off downloads make results difficult to reproduce or update. Automated summaries and search tools add another risk: they can omit context, misread attachments, or make a pattern sound more authoritative than the source record supports.

## Users, partners, and validation

SpicyRegs grew from Civic Hack DC in July 2025, where civic technologists, policy experts, and government staff explored regulatory-data problems. The project builds on Moravian University's Mirrulations data work, and the existing project record names Moravian University and DataKind DC as collaborators.

Those relationships and the priority workflows still need current factual approval. Intended users include policy advocates, researchers, journalists, academics, government staff, and technical contributors. The project is continuing to test which outputs—downloadable data, command-line tools, notebooks, search, guided analysis, or a web interface—best support their work.

## Approach and Civic Tech DC's role

Civic Tech DC volunteers contribute data engineering, source acquisition, schema and provenance work, documentation, analysis, interface development, infrastructure, user research, and project coordination.

The [public SpicyRegs repository](https://github.com/civictechdc/spicy-regs) currently provides:

- a pipeline that reads public mirrored source records and writes Parquet data;
- downloadable docket, document, and comment tables;
- command-line tools for inspecting, sampling, and searching the published data;
- a generated [data dictionary](https://docs.spicy-regs.dev/);
- example notebooks and contributor documentation;
- modular components that can support multiple analyses and interfaces.

The [SpicyRegs application](https://app.spicy-regs.dev/feed) presents current user-facing work. The repository remains the authority for reproducibility, setup, and limitations.

## Current status and known limits

SpicyRegs is active. A repeatable data pipeline and public data outputs exist, while corpus completeness, text extraction, analysis, user experience, and product validation continue to evolve.

- Source portals and mirrors can be incomplete, capped, delayed, or inconsistent.
- Attachments and extracted text require quality checks.
- A reproducible dataset does not make every comparison or summary valid.
- Search, classification, and AI-assisted analysis need source citations and human review.
- The project has not published a measured increase in public participation, policy influence, or research time saved.
- Partner roles, active users, production guarantees, and long-term ownership remain pending factual review.

## Reusable lessons

1. **Preserve the source trail.** Keep stable identifiers, source URLs, retrieval details, and transformations with the output.
2. **Separate the data layer from one interface.** Reusable tables can support notebooks, reports, search, and future applications.
3. **Turn repeated preparation into code.** A rerunnable pipeline is easier to review than private manual steps.
4. **Treat completeness as a claim to prove.** API success does not establish that every expected record was retrieved.
5. **Keep analysis accountable to source documents.** Summaries and trends should make it easy to inspect the underlying record.

## Use the data, validate a workflow, or contribute

Policy advocates, researchers, journalists, academics, and government practitioners can help the team test whether its data and interfaces answer real questions responsibly. Data, policy, product, design, documentation, and software contributors can use the GitHub and Slack links above.

If you have a different regulatory or public-records problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="spicyregs_project_cta">bring it to Civic Tech DC</a>. To meet active teams first, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="spicyregs_project_cta">join a Project Night</a>.
