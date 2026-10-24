---
layout: default
title: Blog
description: Read Civic Tech DC news, project updates, event recaps, and practical insights from Washington, DC's civic technology community.
social_image: hero-image-homepage.jpg
social_image_alt: Civic Tech DC volunteers collaborating at a project night
permalink: /blog/
---

<div class="grid-row grid-gap">
  <div class="grid-col-12">
    <header class="margin-bottom-4">
      <h1 class="font-heading-xl">Blog</h1>
      <p class="font-body-lg text-base-darker">
        Stay up to date with the latest news, project updates, and insights from the Civic Tech DC community.
      </p>
      {% assign all_tags = site.tags | sort %}
      {% if all_tags.size > 0 %}
        <nav class="blog-tag-cloud margin-top-3" aria-label="Blog tags">
          {% for tag in all_tags %}
            <a href="{{ site.baseurl }}/blog/tag/{{ tag[0] | slugify }}"
               class="usa-tag margin-right-05 margin-bottom-05">
              {{ tag[0] }}
            </a>
          {% endfor %}
        </nav>
      {% endif %}
    </header>

    {% if site.posts.size > 0 %}
      <div class="blog-posts grid-row grid-gap">
        {% for post in site.posts %}
          <article class="usa-card grid-col-12 tablet:grid-col-6 desktop:grid-col-4 margin-bottom-4">
            <div class="usa-card__container">
              {% assign card_image = post.social_image | default: site.default_social_image %}
              {% assign card_alt = post.social_image_alt | default: post.title %}
              <div class="usa-card__media usa-card__media--exdent">
                <div class="usa-card__img">
                  {% include responsive-image.html src=card_image alt=card_alt sizes="(min-width: 1024px) 33vw, (min-width: 640px) 50vw, 100vw" style="width: 100%; aspect-ratio: 16 / 9; object-fit: cover;" %}
                </div>
              </div>
              <div class="usa-card__header">
                <h2 class="usa-card__heading">
                  <a href="{{ post.url }}" class="usa-link">{{ post.title }}</a>
                </h2>
              </div>
              <div class="usa-card__body">
                <div class="blog-post-meta text-base-dark margin-bottom-2">
                  <time datetime="{{ post.date | date_to_xmlschema }}">
                    {{ post.date | date: "%B %d, %Y" }}
                  </time>
                  {% if post.author %}
                    <span class="margin-x-1">•</span>
                    <span>by {{ post.author }}</span>
                  {% endif %}
                </div>

                {% if post.excerpt %}
                  <div class="blog-post-excerpt">
                    {{ post.excerpt | strip_html | truncatewords: 50 }}
                  </div>
                {% endif %}

                {% if post.tags.size > 0 %}
                  
                {% endif %}
              </div>
              <div class="usa-card__footer">
                <a href="{{ post.url }}" class="usa-button usa-button--outline">Read More</a>
              </div>
            </div>
          </article>
        {% endfor %}
      </div>
    {% else %}
      <div class="usa-alert usa-alert--info">
        <div class="usa-alert__body">
          <h3 class="usa-alert__heading">No blog posts yet</h3>
          <p class="usa-alert__text">
            We're working on creating great content for you. Check back soon for updates from the Civic Tech DC community!
          </p>
        </div>
      </div>
    {% endif %}

  </div>
</div>
