---
layout: hero-image
title: Events
hero-title: Special Events
hero-subtitle: In addition to our biweekly Project Nights, Civic Tech DC hosts occasional events, roughly once a quarter, where we partner with local organizations to raise awareness about civic tech and foster community collaboration.
hero-image: /assets/images/hero-image-events.jpg
---

<h1 class="margin-bottom-1">Events</h1>

<h2>Upcoming Events</h2>
<p>Stay tuned for our next event this summer!</p>
<ul class="usa-card-group">
  {% assign upcoming_events = site.events | sort: "date" %}
  {% assign upcoming_events = upcoming_events | where_exp: "e", "e.date >= site.time" %}
  {% for event in upcoming_events %}
  <!-- <p>Event Debug: {{ event.title }} → {{ event.url }}</p> -->
    <li class="usa-card">
      <a class="usa-card__container usa-card__container--clickable" href="{{ event.url | relative_url }}">
        <div class="usa-card__media">
          <img class="usa-card__img" src="{{ site.baseurl }}/assets/images/event_thumbnails/{{ event.image }}" alt="{{ event.image_alt_text }}" />
        </div>
        <div class="usa-card__body">
          <h3 class="usa-card__heading">{{ event.title }}</h3>
          <p>
            {{ event.date | date: "%B %-d, %Y" }}{% if event.location %} — {{ event.location }}{% endif %} — <strong>Coming Soon</strong>
          </p>
        </div>
      </a>
    </li>
  {% endfor %}
</ul>

<h2>Past Events</h2>
<p>A selection of exciting past events we had!</p>
<ul class="usa-card-group">
  {% assign past_events = site.events | sort: "date" | reverse %}
  {% assign past_events = past_events | where_exp: "e", "e.date < site.time" %}
  {% for event in past_events %}
    <li class="usa-card">
      <a class="usa-card__container usa-card__container--clickable" href="{{ event.url | relative_url }}">
        <div class="usa-card__media">
          <img class="usa-card__img" src="{{ site.baseurl }}/assets/images/event_thumbnails/{{ event.image }}" alt="{{ event.image_alt_text }}" />
        </div>
        <div class="usa-card__body">
          <h3 class="usa-card__heading">{{ event.title }}</h3>
          <p>
            {{ event.date | date: "%B %-d, %Y" }}{% if event.location %} — {{ event.location }}{% endif %} — <em>Event passed</em>
          </p>
        </div>
      </a>
    </li>
  {% endfor %}
</ul>
