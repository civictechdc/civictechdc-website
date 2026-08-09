---
layout: project
is_active: true
title: VoteCatcher
seo_title: "VoteCatcher: Petition Signature Verification"
image: project_thumbnails/ballot-initiative.png
image_alt_text: Handwritten PDF scans being converted into machine-readable format
github_link: https://github.com/civictechdc/votecatcher
slack_channel: C04U3D9AWER
description: Building open-source campaign infrastructure that grassroots organizers can use, starting with petition-signature review.
seo_description: VoteCatcher builds reusable open-source campaign processes, starting with OCR-assisted petition review and voter-file matching.
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-26
case_study_standard: true
---

VoteCatcher puts practical campaign infrastructure in the hands of grassroots organizers. The project starts with petition-signature review, but its larger goal is to document reusable campaign processes that community-led efforts can adapt. Think processes, not apps.

## Why grassroots campaigns need shared infrastructure

Organizers often choose between tedious manual work and expensive software that does not fit a local campaign. Time spent transcribing documents, reconciling voter records, or moving data between tools is time taken from organizing.

VoteCatcher grew from conversations with organizers facing those tradeoffs. The project treats good campaign technology as a public resource, not an advantage reserved for well-funded campaigns with dedicated technical teams.

## Starting with petition review

The current application supports a petition-review workflow:

1. create a campaign workspace;
2. import a voter-registration file;
3. upload scanned petition pages;
4. extract cropped entries with a configured optical-character-recognition provider;
5. compare extracted text with voter records;
6. group possible matches by confidence for human review;
7. export the reviewed results.

The public repository contains a SvelteKit interface, a FastAPI backend, sample data, and a simulation mode. These features let contributors exercise the workflow without uploading real voter or petition records.

## The bigger campaign-infrastructure vision

Signature review is the first process, not the full mission. Voter-file integration, data validation, documented workflows, and deployment guidance can support candidate campaigns, issue advocacy, ballot initiatives, and other community organizing.

The project aims to produce a playbook that another campaign can inspect and adapt. That requires more than code: organizers must help define the workflow, reviewers must test it with real document formats, and maintainers must explain what the software can and cannot decide.

## Current status and safeguards

VoteCatcher is active and pre-1.0. It has not published an independent accuracy study, measured time savings, a production campaign deployment, or an election outcome.

- A confidence score helps prioritize review; it does not establish that a signature is legally valid.
- Petition images and voter files can contain sensitive personal information.
- Deployers need access controls, retention and deletion rules, vendor review, security practices, and jurisdiction-specific legal guidance.
- A configured OCR provider may receive cropped petition images.
- Human reviewers remain responsible for consequential decisions.

The project should earn claims about accuracy and usefulness through documented work with campaign reviewers.

## Help build open campaign processes

VoteCatcher welcomes campaign practitioners, election-law experts, designers, frontend and Python developers, security reviewers, data specialists, testers, and project coordinators. Use the GitHub and Slack links above to inspect the work or join the team.

You can also <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="votecatcher_project_cta">meet the team at a Project Night</a>. If your public-interest organization has a related campaign workflow, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="votecatcher_project_cta">bring the problem to Civic Tech DC</a>.
