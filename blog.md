---
layout: default
title: Blog
permalink: /blog/
---

<div class="grid-row grid-gap">
  <div class="tablet:grid-col-8">
    <header class="margin-bottom-4">
      <h1 class="font-heading-xl">Blog</h1>
      <p class="font-body-lg text-base-darker">
        Stay up to date with the latest news, project updates, and insights from the Civic Tech DC community.
      </p>
    </header>

    {% if site.posts.size > 0 %}
      <div class="blog-posts">
        {% for post in site.posts %}
          <article class="usa-card margin-bottom-4">
            <div class="usa-card__container">
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
                  {% if post.categories.size > 0 %}
                    <span class="margin-x-1">•</span>
                    <span>in 
                      {% for category in post.categories %}
                        <a href="{{ site.baseurl }}/blog/category/{{ category | slugify }}" class="usa-link">{{ category }}</a>{% unless forloop.last %}, {% endunless %}
                      {% endfor %}
                    </span>
                  {% endif %}
                </div>
                
                {% if post.excerpt %}
                  <div class="blog-post-excerpt">
                    {{ post.excerpt | strip_html | truncatewords: 50 }}
                  </div>
                {% endif %}
                
                {% if post.tags.size > 0 %}
                  <div class="blog-post-tags margin-top-2">
                    {% for tag in post.tags limit:3 %}
                      <span class="usa-tag usa-tag--small">{{ tag }}</span>
                    {% endfor %}
                    {% if post.tags.size > 3 %}
                      <span class="text-base-dark">+{{ post.tags.size | minus: 3 }} more</span>
                    {% endif %}
                  </div>
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

  <aside class="tablet:grid-col-4">
    <div class="blog-sidebar padding-left-3">
      {% if site.posts.size > 0 %}
        <div class="usa-card margin-bottom-3">
          <div class="usa-card__container">
            <div class="usa-card__header">
              <h3 class="usa-card__heading">Recent Posts</h3>
            </div>
            <div class="usa-card__body">
              <ul class="add-list-reset">
                {% for post in site.posts limit:5 %}
                  <li class="margin-bottom-2">
                    <a href="{{ post.url }}" class="usa-link">{{ post.title }}</a>
                    <div class="text-base-dark font-mono-2xs">{{ post.date | date: "%b %d, %Y" }}</div>
                  </li>
                {% endfor %}
              </ul>
            </div>
          </div>
        </div>

        {% assign categories = site.categories | sort %}
        {% if categories.size > 0 %}
          <div class="usa-card margin-bottom-3">
            <div class="usa-card__container">
              <div class="usa-card__header">
                <h3 class="usa-card__heading">Categories</h3>
              </div>
              <div class="usa-card__body">
                <ul class="add-list-reset">
                  {% for category in categories %}
                    <li class="margin-bottom-1">
                      <a href="{{ site.baseurl }}/blog/category/{{ category[0] | slugify }}" class="usa-link">
                        {{ category[0] }} ({{ category[1].size }})
                      </a>
                    </li>
                  {% endfor %}
                </ul>
              </div>
            </div>
          </div>
        {% endif %}

        {% assign all_tags = site.tags | sort %}
        {% if all_tags.size > 0 %}
          <div class="usa-card">
            <div class="usa-card__container">
              <div class="usa-card__header">
                <h3 class="usa-card__heading">Popular Tags</h3>
              </div>
              <div class="usa-card__body">
                <div class="blog-tag-cloud">
                  {% for tag in all_tags limit:10 %}
                    <a href="{{ site.baseurl }}/blog/tag/{{ tag[0] | slugify }}" class="usa-tag margin-right-05 margin-bottom-05">
                      {{ tag[0] }}
                    </a>
                  {% endfor %}
                </div>
              </div>
            </div>
          </div>
        {% endif %}
      {% endif %}

      <div class="usa-card">
        <div class="usa-card__container">
          <div class="usa-card__header">
            <h3 class="usa-card__heading">Get Involved</h3>
          </div>
          <div class="usa-card__body">
            <p class="font-body-sm">
              Want to contribute to our blog? Share your civic tech experiences, project updates, or insights with the community.
            </p>
            <div style="display: inline-flex; align-items: center;">
            <a
            href="https://join.slack.com/t/civictechdc/shared_invite/zt-328ykmsgh-FAH~~3KrJ2JtdZ7BXVYl5w"
            target="_blank"
            id="submitrequest"
            type="submit"
            class="usa-button usa-button--small"
            style="display: inline-flex; align-items: center; text-decoration: none;">
            {% include responsive-image.html src="logos/slack.png" style="margin-right: 0.5rem; width: 24px; height: auto;" alt="Join our Slack" %}
            Join Our Slack
            </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </aside>
</div>
