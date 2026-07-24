---
layout: project
is_active: true
title: WaterVoice DMV
seo_title: "DMV Water-Quality Map: WaterVoice DMV"
image: project_thumbnails/watervoice.png
image_alt_text: Prototype water-quality map of DC Metro waterways
github_link: https://github.com/civictechdc/DMVWaterWatch
description: An active open-source prototype combining water-quality, rainfall, impairment, and freshness data for paddlers and other recreational water users.
seo_description: WaterVoice DMV is prototyping an open map of water-quality, rainfall, impairment, and freshness data for recreational users in the DMV.
content_owner: WaterVoice DMV project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

WaterVoice DMV is the current website name for an active water-quality map prototype whose repository uses the working title **DMV Water Watch**. The project is exploring how paddlers, rowers, and (where legally allowed) swimmers can see recent source data and its freshness in one place. It is not a safety guarantee or a replacement for posted warnings and public-health guidance.

## Challenge: the data is scattered and time-sensitive

Recreational water users may need bacterial samples, rainfall, stream conditions, impairment status, and local advisories from different agencies or monitoring organizations. Each source has its own geography, update cadence, terminology, and gaps.

A simple green, yellow, or red label can be misleading if it hides an old sample or missing source. Conditions can change between measurements, rainfall can affect waterways quickly, and different activities have different exposure risks.

## Recreational users, data partners, and validation

The intended users are paddlers, rowers, anglers, local stewards, and swimmers at locations where swimming is legal. The initial geographic focus is the inner DMV, including the Potomac, Anacostia, Four Mile Run, and Rock Creek.

The repository documents future outreach to riverkeeper organizations, local data producers, and community users. Direct user research, partner roles, source permissions, and the prior website reference to Four Mile Run Conservancy still require confirmation. This page does not claim that a monitoring organization or public agency endorses the prototype or its grades.

## Approach and Civic Tech DC's role

Civic Tech DC volunteers contribute source research, data connectors, normalization, grading logic, mapping, interface design, testing, accessibility, documentation, outreach planning, and project coordination.

The [public DMV Water Watch repository](https://github.com/civictechdc/DMVWaterWatch) currently documents:

- connectors for federal and local water, weather, and impairment sources;
- a normalized build pipeline that produces site, grade, history, manifest, and source files;
- a deterministic grading rubric with freshness windows and worked examples;
- an activity toggle and explanations of the signals behind a grade;
- a mobile-first map prototype, methodology pages, source attribution, and a disclaimer;
- issue templates for site suggestions, incorrect grades, verification, bugs, and features.

The architecture aims to show stale and missing data rather than silently converting it into a current safety statement.

## Current status and known limits

WaterVoice DMV is active and has a functional repository prototype, but it is not yet a public production service.

- Several connectors still rely on fixtures or need production credentials and source verification.
- Some monitoring and assessment identifiers remain incomplete.
- The initial site catalog needs community verification and expansion.
- Production hosting, operational ownership, and data-refresh monitoring are not complete.
- The user-facing disclaimer still needs legal review.
- The page does not report adoption, a validated grade-accuracy study, fewer exposure incidents, or another measured public-health outcome.

Water-quality samples are retrospective and local conditions change. Users must follow current signage and guidance from responsible authorities and use their own judgment.

## Reusable lessons

1. **Show freshness with the result.** An old measurement should not look like a current one.
2. **Keep sources visible.** Users need to know which agency or organization produced each signal.
3. **Represent missing data honestly.** No measurement is not the same as a safe measurement.
4. **Validate the decision, not only the map.** Learn what a paddler or swimmer will do with the information.
5. **Plan operations before launch.** A real-time claim needs monitored connectors, failure states, correction paths, and an accountable owner.

## Test the prototype or join the work

Recreational water users, environmental organizations, monitoring practitioners, public-health reviewers, GIS contributors, data engineers, designers, and project managers can inspect the repository and help validate the work.

To meet the team, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="watervoice_project_cta">join a Project Night</a>. If your community has a related environmental-data problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="watervoice_project_cta">bring it to Civic Tech DC</a>.
