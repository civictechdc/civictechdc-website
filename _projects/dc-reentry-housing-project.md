---
layout: project
is_active: true
title: DC Reentry Housing Project
seo_title: Nonprofit Data Platform for DC Reentry Housing
image: project_thumbnails/dc-reentry-housing-alliance.jpg
image_alt_text: DC Reentry Housing Alliance logo
description: A Civic Tech DC project working with the DC Reentry Housing Alliance to define a shared data platform for housing availability, eligibility, and coalition measurement.
seo_description: See how Civic Tech DC is validating a shared data platform for reentry housing providers, eligibility, availability, and coalition measurement.
content_owner: DC Reentry Housing project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

The DC Reentry Housing Alliance wants a clearer, shared view of housing options and outcomes across organizations that support people returning from incarceration. Civic Tech DC is helping the Alliance explore the data definitions, workflows, and technical scope for that platform. The project is active, but it is not yet a public, real-time service and does not yet have measured outcomes.

## Challenge: important data is scattered

Housing providers and coalition members may track available units, eligibility rules, referrals, and outcomes in different places and formats. That fragmentation makes it harder to answer practical questions across the coalition, compare definitions, or decide what should be measured together.

The technical challenge is not simply to put spreadsheets into a dashboard. The coalition first needs shared definitions, appropriate access rules, a sustainable data-entry or integration workflow, and agreement about which questions the platform should answer.

## Partner and intended users

The **DC Reentry Housing Alliance** is the problem owner and subject-matter partner. It brings together people with lived experience, housing providers, and policy stakeholders working to address reentry homelessness in the District.

The intended users include coalition members coordinating housing work and people responsible for program, referral, and policy decisions. Direct user roles and access levels still need to be confirmed as part of discovery; the page does not assume that every stakeholder will use the same interface or see the same data.

## Validation before development

The current concept comes from the Alliance's need to understand housing availability, eligibility, and shared outcomes across participating organizations. The project team is using discovery to test:

- which decisions coalition members need the data to support;
- which terms and outcome measures can be defined consistently;
- what data already exists, who owns it, and how often it changes;
- which information is sensitive and who should be allowed to see it;
- whether mapping, a dashboard, reports, or a smaller shared dataset is the most useful first product;
- what participating organizations can realistically maintain.

A feature is not considered validated merely because it would be technically possible.

## Platform approach and Civic Tech DC's role

Civic Tech DC volunteers are contributing product discovery, data modeling, technical architecture, visualization exploration, and project coordination. The working scope may include:

- a shared data model for housing resources, eligibility, and coalition measures;
- a maintainable way for participating organizations to contribute or update data;
- maps or other visualizations when geography helps answer a validated question;
- role-based access and data-governance decisions appropriate to the information;
- documentation so the Alliance can understand, use, and maintain the work.

The team is intentionally treating “real time” as a requirement to validate, not a marketing claim. Update frequency should match the underlying workflow and the coalition's ability to keep the data accurate.

## Current status and known limits

As of July 2026, this is an **active discovery and development project**. The team is defining users, shared measures, data sources, and a feasible first milestone with the Alliance.

- There is no public production platform or public repository linked from this page yet.
- Availability, eligibility, and outcome data have not been described as complete or authoritative.
- No improvement in housing placement, coordination, or policy outcomes has been measured yet.
- Product scope, access rules, maintenance ownership, and reporting cadence remain validation questions.

These limits are important. A coalition dashboard is only useful when the participating organizations agree on what the data means and can keep it current.

## Lessons for other nonprofit coalitions

1. **Begin with decisions, not charts.** Identify what people need to decide before selecting dashboard views or metrics.
2. **Treat shared definitions as product work.** A common field name does not guarantee that organizations record the same thing.
3. **Plan governance with the data model.** Ownership, consent, access, correction, and retention cannot wait until launch.
4. **Match automation to capacity.** A technically sophisticated integration can fail if partners cannot operate or maintain it.
5. **Ship a testable first slice.** One reliable workflow or measure can teach more than a broad platform designed without users.

## Join the work or bring a related problem

People with experience in nonprofit data management, service-provider workflows, data governance, product discovery, accessible visualization, and sustainable open-source systems can help the team ask better questions and test the scope.

<p>
  <a
    href="{{ site.baseurl }}/slack"
    class="usa-button"
    data-analytics-event="project_join_click"
    data-analytics-location="reentry_project_cta"
    data-analytics-label="Explore the DC Reentry Housing project"
    >Find the project on Slack</a
  >
  <a
    href="{{ site.baseurl }}/events"
    class="usa-button usa-button--outline"
    data-analytics-event="event_discovery_click"
    data-analytics-location="reentry_project_cta"
    >Join a Project Night</a
  >
</p>

If your coalition has a related data-management, dashboard, or shared-measurement problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="reentry_project_cta">bring the need to Civic Tech DC</a>. We will start with users, decisions, and fit, not an assumed platform.
