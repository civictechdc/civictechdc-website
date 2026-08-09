---
layout: project
is_active: true
title: Ride Score DC
seo_title: "Ride Score DC: Bike Safety and Comfort Map"
image: project_thumbnails/ridescoredc.png
image_alt_text: Ride Score logo over a gold and blue street map
github_link: https://github.com/civictechdc/ridescoredc
slack_channel: C09N0MZR3FY
description: Rating DC street segments for cycling safety and comfort, with an interactive map that shows riders and advocates the data behind each score.
seo_description: Ride Score DC maps transparent street-level bike safety and comfort scores from crash, roadway, speed, and infrastructure data.
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-26
case_study_standard: true
---

Ride Score DC is building an interactive map that rates street segments for cycling safety and comfort. The project combines DC crash, street, speed, and bicycle-infrastructure data so riders and advocates can inspect risk factors and identify opportunities for safer streets.

A score can guide exploration and advocacy. It cannot guarantee that a street or route is safe.

## “Why isn't there a safety rating for bike routes?”

That question started Ride Score DC. The District publishes rich open data about crashes, bike lanes, streets, and traffic conditions, but no single dataset tells a rider how a segment may feel. People often rely on familiarity, word of mouth, or trial and error.

The project aims to:

- visualize street-by-street safety and comfort scores;
- show crash history, infrastructure, speed, and traffic-stress factors;
- let people inspect the inputs instead of trusting one unexplained number;
- highlight possible infrastructure improvements;
- support the goals of Vision Zero DC.

## An open and reusable method

Ride Score DC draws on established approaches such as Level of Traffic Stress and PeopleForBikes' Bicycle Network Analysis. The work is split across public repositories:

- the [main repository](https://github.com/civictechdc/ridescoredc) holds project documentation, onboarding material, and sample data;
- the [models repository](https://github.com/civictechdc/ridescoredc-models) holds the Python scoring pipeline and early model work, including a first Level of Traffic Stress implementation;
- the [website repository](https://github.com/civictechdc/ridescoredc-website) holds an early web-map implementation.

DC is the first focus. The open-source method can be adapted by other cities that have suitable crash, roadway, and infrastructure data.

## Riders, advocates, and partners

The intended users include everyday cyclists, bicycle advocates, transportation researchers, and people considering infrastructure priorities. The team wants to work with riders of different ages, abilities, trip purposes, and neighborhoods to ground-truth the map.

Ride Score DC does not currently name an organizational partner. The team would welcome validation from groups such as the Washington Area Bicyclist Association, the District Department of Transportation, and Vision Zero practitioners, but the page does not imply their endorsement.

## Current status and limits

The project is active. Across its repositories the team has sample data, early model artifacts, an MVP map, and an initial pipeline; setup, model review, data updates, and rider validation remain in progress.

- Source data may omit near misses, perceived stress, temporary conditions, or recent street changes.
- A segment score cannot describe an entire trip, intersection risk, weather, construction, or every rider's needs.
- The project has not published a representative rider study, adoption count, crash reduction, or infrastructure outcome.
- Model weights, data provenance, update cadence, and maintenance ownership need continuing review.

People should check current conditions and use their own judgment rather than relying on a prototype for safety-critical routing.

## Help build and ground-truth the map

Ride Score DC welcomes cyclists, transportation practitioners, GIS specialists, data analysts, data engineers, designers, frontend and backend developers, accessibility reviewers, and community organizers.

Use the GitHub and Slack links above, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="ride_score_cta">meet the team at a Project Night</a>, or <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="ride_score_cta">bring Civic Tech DC a related transportation-data problem</a>.
