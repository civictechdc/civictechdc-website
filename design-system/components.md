---
layout: design-system
title: Components
description: Reusable UI elements used to build pages.
permalink: /design-system/components/
---

Components are reusable building blocks for our user interface. We use standard USWDS components, sometimes customized with our own HTML structures (`_includes/components/`).

## Buttons

Buttons communicate actions that users can take.

### Primary Button

<div class="margin-bottom-2">
  <a href="#" class="usa-button">Primary Button</a>
</div>

```html
<a href="#" class="usa-button">Primary Button</a>
```

### Secondary Button

<div class="margin-bottom-4">
  <a href="#" class="usa-button usa-button--outline">Secondary Button</a>
</div>

```html
<a href="#" class="usa-button usa-button--outline">Secondary Button</a>
```

## Cards

Cards are used to group related information. We have several custom card templates.

### Standard USWDS Card

<div class="grid-row margin-bottom-4">
  <div class="desktop:grid-col-6">
    <div class="usa-card">
      <div class="usa-card__container">
        <div class="usa-card__header">
          <h3 class="usa-card__heading">Card Heading</h3>
        </div>
        <div class="usa-card__body">
          <p>This is the content of the card. It provides a brief summary of the topic.</p>
        </div>
        <div class="usa-card__footer">
          <a href="#" class="usa-button">Read more</a>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="usa-card">
  <div class="usa-card__container">
    <div class="usa-card__header">
      <h3 class="usa-card__heading">Card Heading</h3>
    </div>
    <div class="usa-card__body">
      <p>This is the content of the card. It provides a brief summary of the topic.</p>
    </div>
    <div class="usa-card__footer">
      <a href="#" class="usa-button">Read more</a>
    </div>
  </div>
</div>
```

### Event Card

We use a custom Jekyll include for Event Cards. Include it by passing an event object:

<div class="margin-bottom-4">
  {% include components/meetup-events.html %}
</div>

```liquid
{% raw %}
{% include components/meetup-events.html %}
{% endraw %}
```

## Tags

Tags are used to categorize content, such as blog posts or projects.

<div class="margin-bottom-4">
  <span class="usa-tag">Python</span>
  <span class="usa-tag">JavaScript</span>
  <span class="usa-tag">Data Visualization</span>
</div>

```html
<span class="usa-tag">Python</span>
<span class="usa-tag">JavaScript</span>
<span class="usa-tag">Data Visualization</span>
```

## Alerts

Alerts provide important feedback or information to the user.

<div class="usa-alert usa-alert--info margin-bottom-4">
  <div class="usa-alert__body">
    <h3 class="usa-alert__heading">Information</h3>
    <p class="usa-alert__text">Join us at our next hackathon on Tuesday!</p>
  </div>
</div>

```html
<div class="usa-alert usa-alert--info">
  <div class="usa-alert__body">
    <h3 class="usa-alert__heading">Information</h3>
    <p class="usa-alert__text">Join us at our next hackathon on Tuesday!</p>
  </div>
</div>
```

### Project Card

Project cards are used to showcase Civic Tech DC projects (like ANC Finder). Include it by passing a `project` object. It displays an image, title, and description.

<div class="grid-row margin-bottom-4">
  <div class="desktop:grid-col-6">
    {% assign sample_project = site.projects.first %}
    {% include components/project-card.html project=sample_project %}
  </div>
</div>

```liquid
{% raw %}
{% include components/project-card.html project=project %}
{% endraw %}
```

### Latest Blog Post

The latest blog post component is used to highlight recent news. It automatically fetches the most recent post from the blog and displays its meta information, excerpt, and tags.

<div class="grid-row margin-bottom-4">
  <div class="desktop:grid-col-6">
    {% include components/latest-blog-post.html %}
  </div>
</div>

```liquid
{% raw %}
{% include components/latest-blog-post.html %}
{% endraw %}
```
