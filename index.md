---
layout: hero-image-with-supporters-footer
title: Civic Tech DC
hero-title: Civic Tech DC
hero-subtitle: Founded in 2012, Civic Tech DC is a non-partisan 501(c)(3) nonprofit community of volunteers using open-source technology to support civic engagement, strengthen democracy, and empower public-interest initiatives.
hero-image: hero-image-homepage.jpg
hero-image-alt: Civic Tech DC volunteers collaborating on laptops around tables at a project night
---

{% include components/meetup-events.html %}

## Current projects

We're always incubating new projects and iterating on existing ones! Here are the projects we're currently supporting:

### Active Projects

{% include components/project-cards.html is_active=true columns=2 %}

<div class="ctdc-archive-section" markdown="1">

### Past Projects

{% include components/project-cards.html is_active=false columns=4 %}

</div>

{% comment %}

## Help wanted

Looking to contribute? Here are a few current needs. See more on our [Volunteer board]({% link volunteer.md %}).

{% include components/positions-list.html limit=6 %}
{% endcomment %}
