---
layout: hero-image
banner-hero: true
title: Initiatives
description: "The programs and infrastructure that keep Civic Tech DC running, and what each needs to continue: venues, funding, maintainers, facilitators, and writers."
hero-title: Initiatives
hero-subtitle: "Behind our projects sits the machinery that keeps a volunteer organization running: the hackathon, the fellowship, the tools and documentation organizers rely on. Each initiative below names exactly what it needs to keep going."
hero-image: hero-image-partners.jpg
hero-image-alt: Civic Tech DC organizers and partners at a community event
permalink: /initiatives/
---

## How this works

Our [projects]({{ site.baseurl }}/projects.html) serve the public. These
initiatives serve the organization, and they only move when someone puts time,
money, or a venue behind them. Every card says what the initiative is and
exactly what it needs. If one of them is yours to solve, email
<a href="mailto:team@civictechdc.org?subject=Supporting%20a%20Civic%20Tech%20DC%20initiative" data-analytics-event="support_click" data-analytics-location="initiatives_page">team@civictechdc.org</a>
and we will take it from there.

<ul class="usa-card-group ctdc-initiative-cards">
  {% for initiative in site.data.initiatives %}
    {% include components/initiative-card.html initiative=initiative %}
  {% endfor %}
</ul>

<div class="ctdc-donate-cta">
  <ul class="usa-button-group ctdc-donate-cta__buttons">
    <li class="usa-button-group__item">
      <a class="usa-button ctdc-donate-btn-primary" href="mailto:team@civictechdc.org?subject=Supporting%20a%20Civic%20Tech%20DC%20initiative" data-analytics-event="support_click" data-analytics-location="initiatives_page">Back an initiative</a>
    </li>
    <li class="usa-button-group__item">
      <a class="usa-button ctdc-donate-btn-outline" href="{{ site.baseurl }}/support/" data-analytics-event="support_click" data-analytics-location="initiatives_page">Make a donation</a>
    </li>
  </ul>
  <p class="ctdc-donate-cta__note">Civic Tech DC is a registered 501(c)(3) nonprofit. Donations are tax-deductible to the full extent allowed by law.</p>
</div>
