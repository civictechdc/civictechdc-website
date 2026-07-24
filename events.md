---
layout: hero-image
title: Events
description: Find Civic Tech DC Project Nights, workshops, hackathons, and community events for technologists, designers, policy experts, and curious newcomers.
hero-title: Events
hero-subtitle: From our twice-monthly Project Nights to special events with local partners, here's what's happening at Civic Tech DC, and how to get involved.
hero-image: hero-image-events.jpg
hero-image-alt: Civic Tech DC volunteers gathering for a community event
page_css: /assets/css/events.css
redirect_from:
  - /special-events
  - /special-events/
---

<h2>Recurring events</h2>
<p>The steady rhythm of Civic Tech DC: no registration, no commitment, just show up.</p>

<div class="ctdc-recurring">
  <p class="ctdc-recurring__eyebrow">Twice a month</p>
  <h3 class="ctdc-recurring__title">Project Nights</h3>
  <p class="ctdc-recurring__text">
    We get together to work on civic-tech projects, learn from each other, and
    share a few slices of pizza. Bring a project or jump onto one that's already
    rolling. And if it's your first time, we'll help you find something to dig
    into. Developers, designers, data folks, policy nerds, and the plain curious
    are all welcome.
  </p>
  <dl class="ctdc-recurring__facts">
    <div class="ctdc-recurring__fact">
      <dt>Cadence</dt>
      <dd>Twice a month</dd>
    </div>
    <div class="ctdc-recurring__fact">
      <dt>Who</dt>
      <dd>Everyone, no experience needed</dd>
    </div>
    <div class="ctdc-recurring__fact">
      <dt>What</dt>
      <dd>Project work, learning &amp; pizza</dd>
    </div>
    <div class="ctdc-recurring__fact">
      <dt>RSVP</dt>
      <dd>Free. See the calendar below</dd>
    </div>
  </dl>
  <div class="ctdc-recurring__actions">
    <a
      href="https://luma.com/civic-tech-dc"
      target="_blank"
      rel="noopener"
      class="usa-button"
      data-analytics-event="event_discovery_click"
      data-analytics-location="recurring_events"
      >See upcoming dates</a
    >
    <a
      href="{{ site.baseurl }}/slack"
      class="usa-button usa-button--outline"
      data-analytics-event="slack_discovery_click"
      data-analytics-location="recurring_events"
      >Join us on Slack</a
    >
  </div>
</div>

<h2>Special events</h2>
{% assign upcoming_events = site.events | sort: "date" %}
{% assign upcoming_events = upcoming_events | where_exp: "e", "e.date >= site.time" %}
{% if upcoming_events.size == 0 %}
<div class="ctdc-events-empty">
  <p class="ctdc-events-empty__title">No special events on the calendar right now.</p>
  <p class="ctdc-events-empty__text">
    Check the calendar below for what's coming up next, or follow us so you hear
    about the next one first.
  </p>
  <a
    href="{{ site.baseurl }}/slack"
    class="usa-button"
    data-analytics-event="slack_discovery_click"
    data-analytics-location="events_empty_state"
    >Join us on Slack</a
  >
</div>
{% else %}
<ul class="usa-card-group ctdc-event-grid">
  {% for event in upcoming_events %}
    {% include components/event-card.html event=event columns=2 %}
  {% endfor %}
</ul>
{% endif %}

{% include components/meetup-events.html %}

<h2>Past events</h2>
<p>A look back at the special events we've hosted.</p>
<ul class="usa-card-group ctdc-event-grid">
  {% assign past_events = site.events | sort: "date" | reverse %}
  {% assign past_events = past_events | where_exp: "e", "e.date < site.time" %}
  {% for event in past_events %}
    {% include components/event-card.html event=event past=true %}
  {% endfor %}
</ul>
<p class="ctdc-events-archive-link">
  <a
    href="https://luma.com/civic-tech-dc?period=past"
    target="_blank"
    rel="noopener"
    data-analytics-event="event_discovery_click"
    data-analytics-location="past_events"
  >
    See all past events on Lu.ma
    <svg
      class="ctdc-icon"
      viewBox="0 0 24 24"
      width="16"
      height="16"
      fill="currentColor"
      aria-hidden="true"
    >
      <path d="M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8z" />
    </svg>
  </a>
</p>
