---
layout: project
is_active: false
title: Daria
seo_title: "Open-Source Nonprofit Case Management: Daria"
image: project_thumbnails/daria.png
image_alt_text: Daria open-source CRM logo
github_link: https://github.com/DARIAEngineering/dcaf_case_management
description: Open-source case-management software developed with abortion funds after the DC Abortion Fund outgrew a shared-spreadsheet workflow; DARIA is now maintained independently.
seo_description: See how Daria turned an abortion fund's spreadsheet workflow into open-source nonprofit case-management software now used by multiple funds.
content_owner: Civic Tech DC project archive
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

DARIA is a case-management system for abortion funds. It began with the DC Abortion Fund (DCAF), went into service there in 2016, and is now used by multiple funds across the United States. The project is no longer an active Civic Tech DC project, but the open-source software and an independent DARIA Engineering team remain active.

## Challenge: case management in shared spreadsheets

Abortion funds help people navigate appointments and provide grants when they cannot afford the full cost of abortion care. That work involves calls, contact information, patient status, pledges, clinic coordination, and follow-up across volunteer shifts.

According to the [DARIA project documentation](https://github.com/DARIAEngineering/dcaf_case_management#project-description), about 75 DCAF case managers were recording roughly 3,500 calls each year in shared Excel sheets before the application launched. Case managers had to learn spreadsheet conventions, search for missing information, avoid overwriting one another's work, and reconstruct context across shifts.

## Partners, users, and validation

DARIA was created by abortion funders and people who support abortion funds. DCAF supplied the original workflow, case-manager expertise, and production setting. The system was designed to mirror how volunteer case managers return calls, track patient needs and status, issue funding pledges, and record fulfillment.

That direct user involvement shaped the product more than a generic customer-relationship-management template could. [Case-manager feedback collected by the project](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/IMPACT_ON_ADOPTERS.md) describes less time troubleshooting spreadsheets, better continuity between shifts, and more attention available for conversations with patients.

Those reports are valuable project evidence, but they are user accounts rather than an independent impact evaluation.

## Product and data decisions

DARIA uses a familiar case-management workflow while making choices specific to abortion-fund practice:

- patient records are searchable and organized around calls, status, pledges, and clinic coordination;
- each adopting fund has a separate instance and controls its own data;
- administrators can manage fund-specific settings and reporting workflows;
- anonymized data can be exported for analysis;
- sensitive information is deliberately minimized, restricted, or excluded from exports;
- personally identifying fields are removed on documented schedules after administrative use.

The project's [data-collection practices](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/OUR_DATA_COLLECTION_PRACTICES.md) explain how the team weighs operational value against the harm that a breach could cause. One documented example is the decision to remove an immigration-status flag because the risk to patients outweighed the convenience to case managers.

## Implementation and open-source work

Volunteers built a Ruby on Rails application and released it under the MIT License. The public repository includes the application, tests, setup documentation, security guidance, onboarding material, a data dictionary, and contribution instructions. A [public sandbox](https://sandbox.dariaservices.com/users/sign_in) lets eligible organizations explore the workflow without real patient data.

Civic Tech DC helped provide an early community and volunteer home. The sustained project also depended on fund practitioners, technical leadership, security advice, documentation, administration, and ongoing maintenance—not only initial software development.

## Adoption, transition, and current status

The [current project README](https://github.com/DARIAEngineering/dcaf_case_management) says DCAF and several other funds use DARIA and that the software is generally stable. The independent [DARIA Engineering team](https://github.com/DARIAEngineering) now supports adoption, separate deployments, patches, monitoring, and maintenance.

This page labels DARIA as a **past Civic Tech DC project** because ownership and day-to-day work transitioned to the independent DARIA Engineering community. The repository is not archived and continues to receive updates. Organizations considering the software should use current DARIA documentation and contact its maintainers rather than treating this historical case study as implementation or security advice.

## Reusable lessons

1. **Map the real workflow before choosing a database.** The useful unit was not a generic “contact”; it was the sequence of calls, needs, pledges, clinics, and follow-up that case managers already understood.
2. **Co-design changes the product.** Practitioners revealed shift handoffs, high-risk data, reporting needs, and terminology that an outside technical team would have missed.
3. **Privacy is a product requirement.** Data minimization, separation, retention, and export rules belong in product decisions and code.
4. **Adoption includes migration and administration.** A working application still needs onboarding, data migration, fund-specific configuration, support, and training.
5. **A durable volunteer project needs an owner.** The transition to an independent team and service model matters as much as the first release.

## Reuse the work or bring a related workflow

Abortion funds interested in DARIA should review the [adoption guide](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/ADOPTING_DARIA.md), test the sandbox, and contact the current DARIA team. Developers can inspect the repository and its contribution guidance.

If your nonprofit or public-interest organization has a different case-management, database, or service-delivery problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="daria_project_cta">start with the workflow and bring it to Civic Tech DC</a>. An existing tool may be the answer; if new work is justified, user participation, privacy, maintenance, and open-source reuse should shape it from the beginning.
