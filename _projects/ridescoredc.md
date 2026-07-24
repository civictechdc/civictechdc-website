---
layout: project
is_active: true
title: Ride Score DC
seo_title: "Bike Safety Data Project: Ride Score DC"
image: project_thumbnails/ridescoredc.png
image_alt_text: Ride Score logo over a gold and blue street map
github_link: https://github.com/civictechdc/ridescoredc
slack_channel: C09N0MZR3FY
description: An active open-data project prototyping transparent street-segment comfort and safety scores for DC cyclists, advocates, and planners.
seo_description: Ride Score DC is prototyping transparent street-segment bike comfort and safety scores from DC crash, street, and infrastructure data.
content_owner: Ride Score DC project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

Ride Score DC is prototyping an open-data pipeline and map that describes cycling comfort and safety factors at the street-segment level. It combines crash, roadway, and bicycle-infrastructure data with documented scoring rules. The result is an exploratory planning and advocacy tool, not a guarantee that a route is safe.

## Challenge: open street data does not answer a rider's question

DC publishes useful crash, street, speed, and bicycle-infrastructure data, but those datasets do not automatically tell a rider how a segment may feel or which infrastructure changes could matter. Riders often rely on familiarity and local knowledge, while advocates and planners need transparent ways to compare conditions.

Any composite score simplifies reality. Data can be incomplete or delayed, a comfortable segment for one rider may not be comfortable for another, and street conditions change. A credible score must reveal its inputs and rules rather than present one number as objective truth.

## Cyclists, advocates, and validation

The intended users include everyday cyclists, bicycle advocates, transportation researchers, and people exploring infrastructure priorities. The project draws on established concepts such as Level of Traffic Stress and Bicycle Network Analysis.

The current project record does not name a validating organization. Direct review with riders of different ages, abilities, trip purposes, and neighborhoods is still needed, along with transportation-domain review of the scoring model. This page does not claim that WABA, DDOT, or another transportation organization has endorsed or validated the tool.

## Approach and Civic Tech DC's role

Civic Tech DC volunteers contribute geospatial analysis, data engineering, scoring-model design, mapping, interface work, documentation, testing, and community outreach.

The [public repository](https://github.com/civictechdc/ridescoredc) documents:

- canonical schemas for street segments and score layers;
- transparent rulesets for established and composite measures;
- a Python pipeline for ingesting, cleaning, scoring, and exporting data;
- toggleable map layers for scores and source factors;
- an early web-map implementation.

A separate [public project website](https://www.ridescoredc.com/) presents the work. The repository, model, and website are active prototypes; their current state should be checked before reuse.

## Current status and known limits

Ride Score DC is active. The repository contains sample data, model artifacts, an MVP map, and an initial pipeline, while setup and validation work remain in progress.

- The score has not been reported as validated against a representative rider study.
- Source data may omit near misses, perceived stress, temporary conditions, or recent street changes.
- A street-segment score does not account for an entire trip, intersection risk, weather, construction, or a rider's needs.
- No organizational partner, public adoption count, crash reduction, or infrastructure outcome is claimed.
- Model weights, update cadence, data provenance, and maintenance ownership require continuing review.

People should use current conditions, posted rules, and their own judgment rather than relying on the prototype for safety-critical routing.

## Reusable lessons

1. **Expose the ingredients.** A composite score is more useful when people can inspect crash, speed, lane, and infrastructure factors separately.
2. **Ground-truth the map.** Administrative data needs review from people who ride the streets.
3. **Design for different users.** A confident commuter, new rider, child, and adaptive cyclist may interpret comfort differently.
4. **Version the method and data.** A score should identify the rules and source snapshot used to calculate it.
5. **Measure use before impact.** A working map is an output; safer behavior or infrastructure change requires separate evidence.

## Test the model or contribute

DC cyclists and transportation practitioners can help review source data, ground-truth segments, and test whether the explanations are understandable. GIS, data, design, frontend, backend, and outreach contributors can use the GitHub and Slack links above.

If your community has a related transportation-data problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="ride_score_cta">bring it to Civic Tech DC</a>. You can also <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="ride_score_cta">meet the team at a Project Night</a>.
