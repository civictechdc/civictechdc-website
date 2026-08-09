---
layout: project
is_active: true
title: CIB Mango Tree
seo_title: "CIB Mango Tree: Detecting Coordinated Behavior"
image: project_thumbnails/mango.png
image_alt_text: Yellow cartoon mango fruit
github_link: https://github.com/civictechdc/cib-mango-tree
slack_channel: C077YB2ES84
description: Helping researchers, journalists, fact-checkers, moderators, and watchdogs examine social-media data for signs of coordinated inauthentic behavior.
seo_description: CIB Mango Tree is an open-source toolkit for investigating coordination signals in social-media data without requiring programming experience.
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-26
case_study_standard: true
---

CIB Mango Tree is an open-source toolkit for detecting signs of coordinated inauthentic behavior in datasets of online activity. It helps researchers, data journalists, fact-checkers, moderators, and watchdogs run repeatable tests, including people who do not write code.

The tests surface behavior worth investigating. They cannot determine a person's intent or prove that an account or campaign is inauthentic.

## Protecting democratic discourse

Coordinated manipulation can hide among millions of ordinary posts. Investigators may need to compare repeated phrases, posting times, account activity, and other patterns across large datasets. Without accessible tools, each team must prepare its data, rebuild common tests, and explain its methods from scratch.

CIB Mango Tree lowers that technical barrier. The project began in Washington, DC, in August 2024, inspired in part by Taiwan's civic-tech movement and its use of open collaboration to strengthen public discourse. Its ambition remains international: help communities investigate online manipulation with methods they can inspect and discuss.

## From volunteer idea to research toolkit

The project brings together Python developers, data engineers, researchers, journalists, interface designers, testers, and community organizers. Its collaborators have included the George Washington University Open Source Program Office.

The [public repository](https://github.com/civictechdc/cib-mango-tree) packages analyzers behind a common interface. The July 2026 `v0.11.0` release added a graphical interface, replacing the earlier terminal-only experience for new releases. The [project website](https://cibmangotree.org/) and [developer documentation](https://civictechdc.github.io/cib-mango-tree/) explain the toolkit and contribution process.

## Responsible use

CIB Mango Tree is active and accepts open-source contributions.

- Similar language or synchronized activity can have benign explanations.
- Results depend on the input data's completeness, provenance, and permitted use.
- Thresholds need context about the platform, event, language, and research question.
- Investigators remain responsible for corroboration, ethical review, and responsible publication.
- The project has not published an adoption count, an independently reviewed detection result, or a measured election outcome.

The useful output is a reproducible set of signals, parameters, and results that an investigator can inspect alongside source context, not a one-click verdict.

## Use the toolkit or join the community

Researchers, journalists, fact-checkers, moderators, and watchdogs can test the toolkit on appropriate data and tell the team where the workflow remains difficult. Contributors can help with Python, data engineering, web development, documentation, testing, research methods, workflow management, and community engagement.

Use the GitHub and Slack links above, <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="cib_project_cta">meet the team at a Project Night</a>, or <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="cib_project_cta">bring Civic Tech DC a related public-interest research problem</a>.
