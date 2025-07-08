---
layout: hero-image
title: Events
hero-title: Special Events
hero-subtitle: In addition to our biweekly Project Nights, Civic Tech DC hosts occasional events, roughly once a quarter, where we partner with local organizations to raise awareness about civic tech and foster community collaboration.
hero-image: hero-image-events.jpg
page_css: /assets/css/events.css
---

<h1 class="margin-bottom-1">Events</h1>

<h2>Upcoming Events</h2>
<ul class="usa-card-group">
  {% assign upcoming_events = site.events | sort: "date" %}
  {% assign upcoming_events = upcoming_events | where_exp: "e", "e.date >= site.time" %}
  {% for event in upcoming_events %}
    <li class="usa-card__media-text-wrapper">
      {% if event.url %}
        <a class="usa-card__link" href="{{ event.url }}">
      {% endif %}
          {% include responsive-image.html src=event.card_image alt=event.title class="usa-card__img" %}
          <div class="usa-card__body">
            <h3 class="usa-card__heading">{{ event.title }}</h3>
            <p class="event-description">{{ event.description }}</p>
            <p>
              {{ event.date | date: "%B %-d, %Y" }}{% if event.location %} — {{ event.location }}{% endif %}
            </p>
          </div>
      {% if event.url %}
        </a>
      {% endif %}
    </li>
  {% endfor %}
</ul>

<h2>Past Events</h2>
<p>A selection of exciting past events we had!</p>
<ul class="usa-card-group past-events-grid">
  {% assign past_events = site.events | sort: "date" | reverse %}
  {% assign past_events = past_events | where_exp: "e", "e.date < site.time" %}
  {% for event in past_events limit: 3 %}
    <li class="usa-card__media-text-wrapper">
      {% if event.url %}
        <a class="usa-card__link" href="{{ event.url }}">
      {% endif %}
          {% include responsive-image.html src=event.card_image alt=event.title class="usa-card__img" %}
          <div class="usa-card__body">
            <h3 class="usa-card__heading">{{ event.title }}</h3>
            <p class="event-description">{{ event.description }}</p>
            <p>
              {{ event.date | date: "%B %-d, %Y" }}{% if event.location %} — {{ event.location }}{% endif %}
            </p>
          </div>
      {% if event.url %}
        </a>
      {% endif %}
    </li>
  {% endfor %}
</ul>
