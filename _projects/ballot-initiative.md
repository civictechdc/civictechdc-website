---
layout: project
is_active: true
title: VoteCatcher
seo_title: "Open-Source Campaign Tools: VoteCatcher"
image: project_thumbnails/ballot-initiative.png
image_alt_text: Handwritten PDF scans being converted into machine-readable format
github_link: https://github.com/civictechdc/votecatcher
slack_channel: C04U3D9AWER
description: An active open-source project prototyping petition intake, OCR-assisted signature triage, voter-file matching, and human review for grassroots campaigns.
seo_description: See how VoteCatcher is prototyping open-source petition intake, OCR-assisted signature triage, voter-file matching, and human review.
content_owner: VoteCatcher project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

VoteCatcher is building open-source campaign infrastructure for the labor-intensive process of reviewing ballot-petition signatures. The active project combines document intake, optical character recognition, voter-file matching, confidence scores, and a human review workflow. It is a pre-1.0 project, not a legal determination service, and the page does not claim that its matches have been validated for an election authority or production campaign.

## Challenge: petition review is repetitive and consequential

Grassroots campaigns may receive scanned petition sheets that must be compared with an official voter-registration file. Manual transcription and matching take time, while proprietary campaign systems may be expensive or poorly suited to a local process.

This is not merely an OCR problem. Handwriting can be ambiguous, voter records contain sensitive personal information, petition rules vary by jurisdiction, and a false match or missed match can affect legal and campaign decisions. Automation should help people focus their review; it should not conceal uncertainty or replace the accountable reviewer.

## Organizers, reviewers, and validation

The intended users are grassroots campaign organizers and the people responsible for reviewing petition entries. The concept grew from conversations about costly software and manual data entry, and the public repository contains a configurable demonstration workflow.

The project still needs documented validation with real campaign reviewers before it can claim that the workflow, confidence thresholds, or time savings work in practice. No named campaign partner, production deployment, adoption count, independently measured accuracy rate, or completed-election outcome is published on this page.

## Approach and Civic Tech DC's role

Civic Tech DC volunteers are contributing product design, document processing, data matching, web development, testing, security work, deployment documentation, and project coordination. The [public VoteCatcher repository](https://github.com/civictechdc/votecatcher) currently documents a workflow that can:

1. create a campaign workspace;
2. import a voter-registration file;
3. upload scanned petition pages;
4. send cropped entries to a configured OCR provider;
5. compare extracted text with voter records using fuzzy matching;
6. group results by confidence for human review;
7. export results for further analysis.

The application uses a SvelteKit interface and a FastAPI backend. It supports sample data and simulation so contributors can exercise the flow without uploading real voter or petition records.

## Current status and known limits

VoteCatcher is active and the repository receives current development. Its security policy labels the software pre-1.0 and supports only the latest release.

- Human reviewers still need to examine uncertain and consequential matches.
- Confidence scores are software signals, not proof that a signature is legally valid.
- Petition images and voter files can contain personal information. A real deployment needs appropriate access controls, retention rules, vendor review, and legal guidance.
- OCR providers may receive cropped petition images when configured; deployers must understand each provider's data practices.
- Regional field definitions and election rules must be verified for the jurisdiction.
- This page does not report a production campaign, independent accuracy study, time-savings study, or election outcome.

These limits should be resolved with campaign users and election-law expertise, not inferred from passing software tests.

## Reusable lessons

1. **Automate triage, not accountability.** Use confidence to prioritize review while keeping a person responsible for the decision.
2. **Test with the real document format.** Crop regions, handwriting, field order, and voter-file columns differ by jurisdiction.
3. **Treat campaign data as sensitive.** Data flow, access, retention, deletion, and third-party processing belong in the product design.
4. **Publish uncertainty.** A score should show why a record may match and when a reviewer must intervene.
5. **Separate a reusable process from one campaign.** Configurable fields and documented deployment make the open-source work more adaptable.

## Join the project or bring a related need

Developers, designers, campaign practitioners, election-law experts, security reviewers, and people experienced with document workflows can use the GitHub and Slack links above to inspect or join the work.

You can also <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="votecatcher_project_cta">meet the team at a Project Night</a>. If your public-interest organization has a different document-intake or review problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="votecatcher_project_cta">bring the workflow to Civic Tech DC</a> without assuming that OCR or AI is the right answer.
