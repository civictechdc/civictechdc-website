---
layout: project
is_active: true
title: CIB Mango Tree
seo_title: "CIB Research Tools: CIB Mango Tree"
image: project_thumbnails/mango.png
image_alt_text: Yellow cartoon mango fruit
github_link: https://github.com/civictechdc/cib-mango-tree
slack_channel: C077YB2ES84
description: An active open-source toolkit that helps researchers, journalists, fact-checkers, and watchdogs examine online-activity datasets for coordination signals.
seo_description: CIB Mango Tree helps researchers, journalists, fact-checkers, and watchdogs examine online-activity data for possible coordination signals.
content_owner: CIB Mango Tree project team
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

CIB Mango Tree is an open-source research toolkit for examining datasets of online activity for patterns that may indicate coordination. It is intended for researchers, data journalists, fact-checkers, moderators, and watchdogs, including people who do not write code. Its tests can surface behavior worth investigating; they cannot determine a person's intent or prove that an account or campaign is inauthentic.

## Challenge: coordination can hide inside large datasets

Investigators studying online manipulation may need to compare repeated phrases, posting times, account activity, and other patterns across many records. Doing that work with ad hoc scripts raises practical barriers: every investigator must prepare data, reimplement tests, interpret results, and explain the method.

A reusable toolkit can make analyses easier to run and review. It can also create false confidence if a statistical pattern is presented as a verdict. Similar language or synchronized activity may have benign explanations, and platform data may be incomplete or collected under different rules.

## Users, collaborators, and validation

The project is designed around the workflows of researchers, journalists, fact-checkers, moderators, and civic watchdogs. The existing project record names the George Washington University Open Source Program Office among its collaborators. That organization's exact role, along with any claimed investigative use, still requires factual approval before it should be treated as a validated outcome.

The public materials explain the intended audience and provide contribution guidance, but this page does not report a formal user study, a verified number of investigators using the toolkit, or an independently reviewed detection result.

## Approach and Civic Tech DC's role

Civic Tech DC volunteers contribute Python development, data engineering, interface design, documentation, testing, contributor support, research workflow design, and community coordination.

The [public repository](https://github.com/civictechdc/cib-mango-tree) packages analyzers behind a common interface and documents how contributors can install, run, and extend the project. The July 2026 `v0.11.0` release introduced a graphical interface, replacing the earlier terminal-only experience for new releases. The [project website](https://cibmangotree.org/) and [developer documentation](https://civictechdc.github.io/cib-mango-tree/) provide orientation and setup guidance.

The useful output is not a label declaring that an actor is deceptive. It is a reproducible set of signals, parameters, and results that a qualified investigator can inspect alongside source context.

## Current status and known limits

CIB Mango Tree is active, has a current public release, and accepts open-source contributions.

- A coordination signal is not proof of coordinated inauthentic behavior.
- Results depend on the completeness, provenance, and permitted use of the input dataset.
- Thresholds and tests need to be interpreted for the platform, event, language, and research question.
- Investigators remain responsible for corroboration, ethical review, and responsible publication.
- This page does not claim a measured reduction in manipulation, a verified election intervention, or a documented adoption count.
- The named collaborator relationship and any sensitive examples of use remain pending factual review.

## Reusable lessons

1. **Make the method inspectable.** Researchers should be able to see what signal was tested and with which parameters.
2. **Keep detection and judgment separate.** Software can prioritize records without deciding intent.
3. **Design for provenance.** Input source, collection method, transformations, and limitations affect every conclusion.
4. **Lower the technical barrier without hiding complexity.** A graphical interface should expose enough context to prevent one-click overclaiming.
5. **Plan responsible disclosure.** Investigative findings can affect people and public trust; review and corroboration matter.

## Use, validate, or contribute

Researchers, journalists, fact-checkers, moderators, and watchdogs can review the toolkit, test it on an appropriate dataset, and tell the team which steps remain difficult or unclear. Developers, designers, documentation contributors, and research-method reviewers can use the GitHub and Slack links above.

If you have a related public-interest research or data problem, <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="cib_project_cta">bring it to Civic Tech DC</a>. If you want to meet active teams first, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="cib_project_cta">join a Project Night</a>.
