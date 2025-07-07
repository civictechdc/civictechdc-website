---
layout: hero-image
title: Events
hero-title: Special Events
hero-subtitle: In addition to our biweekly Project Nights, Civic Tech DC hosts occasional events, roughly once a quarter, where we partner with local organizations to raise awareness about civic tech and foster community collaboration.
hero-image: /assets/images/hero-image-events.JPG
---

<style>
.usa-card__media-text-wrapper {
  border: 3px solid #eec05e;
  width: 600px;
  box-sizing: border-box;
  padding: 10px;
  margin-bottom: 20px;
  transition: box-shadow 0.2s;
}

.usa-card__media-text-wrapper:hover {
  box-shadow: 0 0 0 9px #eec05e33;
}

.usa-card__link {
  display: block;
  text-decoration: none;
  color: inherit;
}

.usa-card__img {
  width: 100%;
  height: auto;
  object-fit: cover;
  display: block;
  margin-bottom: 10px;
}

.usa-card__body {
  padding: 0;
}

.usa-card__heading {
  margin-top: 0;
  margin-bottom: 8px;
}

.event-description {
  font-size: 16px;
  margin: 0 0 8px 0;
}
</style>

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
          <img class="usa-card__img" src="{{ site.baseurl }}/assets/images/hero-image-hackathon.png" alt="{{ event.image_alt_text }}" />
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
<ul class="usa-card-group">
  {% assign past_events = site.events | sort: "date" | reverse %}
  {% assign past_events = past_events | where_exp: "e", "e.date < site.time" %}
  {% for event in past_events %}
    <li class="usa-card__media-text-wrapper">
      {% if event.url %}
        <a class="usa-card__link" href="{{ event.url }}">
      {% endif %}
          <img class="usa-card__img" src="{{ site.baseurl }}/assets/images/hero-image-data-showcase.png" alt="{{ event.image_alt_text }}" />
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
