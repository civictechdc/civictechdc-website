---
layout: hero-image
title: Open-Source Civic Tech Projects
description: Explore open-source Civic Tech DC projects built with nonprofits, public-interest partners, community users, and volunteer technologists.
hero-title: Open-source civic tech projects
hero-subtitle: See how nonprofits, legal clinics, researchers, community members, and other public-interest partners work with volunteers to validate needs, build in the open, and learn from what happens next.
hero-image: hero-image-projects.jpg
hero-image-alt: People gathered at tables during a Civic Tech DC community event
content_owner: Civic Tech DC organizing team
last_reviewed: 2026-07-24
---

{% include components/pitch-cta.html %}

## Public-interest technology in practice

Every project starts with a real need or a promising idea. Partners and users help validate the problem; volunteers contribute product, data, design, development, research, policy, and project-management skills; and the team scopes work that can be tested in the open. Status labels below distinguish active Civic Tech DC work from past projects and independent projects that began in the community.

These examples are organized by the problems and audiences they serve, not by technology alone.

{% assign reentry = site.projects | where: "title", "DC Reentry Housing Project" | first %}
{% assign daria = site.projects | where: "title", "Daria" | first %}
{% assign clean_slate = site.projects | where: "title", "Clean Slate" | first %}
{% assign data_democracy = site.projects | where: "title", "Data and Democracy Project" | first %}
{% assign spicyregs = site.projects | where: "title", "SpicyRegs" | first %}
{% assign opendatadc = site.projects | where: "title", "Open Data DC" | first %}

<ul class="ctdc-partner-paths ctdc-partner-paths--two usa-list usa-list--unstyled">
  <li class="ctdc-partner-path">
    <h3 class="ctdc-partner-path__title">Nonprofit data and operations</h3>
    <p class="ctdc-partner-path__body">
      <a href="{{ reentry.url | relative_url }}">DC Reentry Housing</a>
      documents an active coalition-data project, including what still needs
      validation.
      <a href="{{ daria.url | relative_url }}">Daria</a> shows how an abortion
      fund's shared-spreadsheet workflow became open-source case-management
      software that is now maintained independently.
    </p>
  </li>
  <li class="ctdc-partner-path">
    <h3 class="ctdc-partner-path__title">Legal access and legal clinics</h3>
    <p class="ctdc-partner-path__body">
      <a href="{{ clean_slate.url | relative_url }}">Clean Slate</a> is a past
      project that paired legal-services expertise and attorney review with a
      limited eligibility-triage tool. Its archived status is part of the
      lesson.
    </p>
  </li>
  <li class="ctdc-partner-path">
    <h3 class="ctdc-partner-path__title">Journalism, research, and democracy</h3>
    <p class="ctdc-partner-path__body">
      <a href="{{ data_democracy.url | relative_url }}">Data and Democracy</a>
      is building a reproducible election-data workflow with an initial
      public-interest user.
      <a href="{{ spicyregs.url | relative_url }}">SpicyRegs</a> helps people
      explore federal regulatory work.
    </p>
  </li>
  <li class="ctdc-partner-path">
    <h3 class="ctdc-partner-path__title">Community information and public data</h3>
    <p class="ctdc-partner-path__body">
      <a href="{{ opendatadc.url | relative_url }}">Open Data DC</a> and other
      projects across housing, transportation, environment, and local
      government show how open data can become more understandable and useful.
    </p>
  </li>
</ul>

<p>
  Have a related need?
  <a
    href="{{ site.baseurl }}/pitch"
    data-analytics-event="project_inquiry_click"
    data-analytics-location="projects_clusters"
    >Bring us a problem or idea</a
  >. Want to contribute?
  <a
    href="{{ site.baseurl }}/events"
    data-analytics-event="event_discovery_click"
    data-analytics-location="projects_clusters"
    >Join a Project Night</a
  >
  or
  <a
    href="{{ site.baseurl }}/slack"
    data-analytics-event="slack_discovery_click"
    data-analytics-location="projects_clusters"
    >meet the community on Slack</a
  >.
</p>

## Current projects

These projects are currently listed as active Civic Tech DC work. Their individual pages describe what is underway, what has been validated, and what remains uncertain.

{% include components/project-cards.html is_active=true heading=3 columns=2 %}

<div class="ctdc-archive-section" markdown="1">

## Past projects

Since its founding in 2012, Civic Tech DC has worked on dozens of projects. This is a selected archive rather than a complete inventory. A past label may mean the work ended, transitioned to another maintainer, or no longer operates as a Civic Tech DC project; read the individual page for current status.

{% include components/project-cards.html is_active=false heading=3 columns=4 %}

</div>

{% include components/content-review.html %}
