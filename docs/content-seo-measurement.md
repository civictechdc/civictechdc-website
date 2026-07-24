# Content and SEO Measurement

**Status:** Repository instrumentation implemented<br>
**Owner:** Civic Tech DC organizing team<br>
**Started:** July 24, 2026<br>
**Next review:** October 24, 2026

## What success means

The north-star outcome is a **qualified public-interest project conversation**: someone brings a specific problem or idea, identifies users or a credible path to them, describes a plausible public benefit, and is willing to participate in validation and ongoing work.

Rankings and clicks help diagnose whether the right people can find and use the site. They are not project outcomes by themselves.

## Baseline

### Search visibility

The July 22, 2026 search snapshot in [the content and SEO strategy](content-seo-strategy.md#search-validation-snapshot) is the pre-change discovery baseline:

- Civic Tech DC appeared on none of the first pages for the eight tested nonbranded phrases on a clean U.S. Yahoo results page.
- Brave and DuckDuckGo spot checks supported that result before rate limits interrupted testing.
- A separate Bing check placed the homepage first for `civic tech`, showing strong brand/category visibility worth preserving.
- Google could not be measured reliably because it presented an automated-traffic challenge.

The result is directional, not a universal ranking report. Future retests must record the engine, date, location, signed-in state, and exact query.

### Technical search baseline

The July 24, 2026 production render contains:

- 53 indexable pages;
- one `noindex` page, the 404;
- 16 redirects;
- 70 rendered HTML files;
- unique titles, descriptions, canonical URLs, and Open Graph titles across indexable pages;
- complete canonical, social, structured-data, sitemap, robots, and feed checks.

The repository's `npm run check:seo` command rebuilds the site in a temporary directory and verifies this baseline plus the content-strategy requirements for the priority pages.

### Conversion baseline

Before this implementation, the repository loaded Google Tag Manager but did not emit named project, partner, event, Slack, or support click events. Historical user-intent counts therefore are **not available from this instrumentation** and must not be represented as zero user interest.

Use the first complete 28 days after the GTM event tags are published as the initial comparable conversion baseline. Record:

- organic sessions and landing pages;
- each event count and unique sessions;
- landing page → event rates;
- Pitch and partner inquiry clicks by `ctdc_link_location`;
- project-page → Pitch, event, and Slack paths;
- known data gaps, bot filtering, and consent effects.

## Data-layer event contract

Links with `data-analytics-event` push a custom event to `window.dataLayer`. Each event includes:

- `event`: the stable event name;
- `ctdc_link_location`: a stable component or page location;
- `ctdc_link_label`: an explicit label or the visible link text.

The listener does **not** send the destination URL, email subject, form contents, or other user-entered data.

| Event                      | What the click indicates                                                          | Do not interpret it as                         |
| -------------------------- | --------------------------------------------------------------------------------- | ---------------------------------------------- |
| `project_inquiry_click`    | The visitor opened project intake or a project-conversation email                 | An accepted, qualified, or completed project   |
| `partner_inquiry_click`    | The visitor opened a validating-user, subject-matter, event, or community inquiry | A confirmed partnership                        |
| `project_join_click`       | The visitor took a project-specific volunteer or participation step               | Sustained participation                        |
| `event_registration_click` | The visitor opened the registration destination for an upcoming event             | A completed registration or attendance         |
| `event_discovery_click`    | The visitor opened the events page, calendar, or event listing                    | Registration                                   |
| `slack_join_click`         | The visitor opened the external Slack invitation                                  | A completed Slack account or active membership |
| `support_click`            | The visitor opened a donation or support route                                    | A completed donation                           |
| `support_inquiry_click`    | The visitor opened a sponsor or in-kind-support email                             | A confirmed sponsor                            |
| `project_discovery_click`  | The visitor opened a project from a hub, card, or pathway                         | Project participation                          |
| `partner_discovery_click`  | The visitor opened the Partners page                                              | A partner inquiry                              |
| `slack_discovery_click`    | The visitor opened the site's Slack information page                              | A Slack invite click                           |
| `project_repository_click` | The visitor opened a project's public repository                                  | Reuse, contribution, or successful setup       |

Clicks are intent signals. Qualification and outcomes require separate, privacy-appropriate review.

## Google Tag Manager setup

The repository-side data-layer contract is implemented. A person with access to the Civic Tech DC Google Tag Manager container must:

1. create a custom-event trigger for each primary event above;
2. send the event name plus `ctdc_link_location` and `ctdc_link_label` to the analytics destination;
3. preview the container and confirm one event per click;
4. verify that no destination URL, email subject, or personal data is collected;
5. publish the container;
6. mark only the events that represent meaningful actions as conversions;
7. record the GTM version and publication date below.

**Published GTM version:** Not available in the repository<br>
**Publication date:** Pending a GTM owner with container access

Repository validation can prove that the browser emits the expected data-layer event. It cannot prove that an unpublished or externally configured GTM workspace forwards the event.

### Published-container check

The published `GTM-W5WT4SXT` container was checked on July 24, 2026:

- the published container loads Google Analytics property `G-JFGRMX6Z28` and sends a `page_view`;
- none of the 12 Civic Tech DC custom event names, `ctdc_link_location`, or `ctdc_link_label` appear in the published container JavaScript;
- in a Playwright browser check, clicking the Pitch CTA added `project_inquiry_click` and its two approved parameters to `window.dataLayer`;
- the click produced no new Google Analytics collection request.

The published container therefore does **not** forward the repository's new events as of this check. Recheck after publication rather than assuming that a GTM workspace change reached production.

### Activation order

1. Deploy the repository changes so the production pages emit the event contract.
2. In GTM, create data-layer variables for `ctdc_link_location` and `ctdc_link_label`.
3. Add a custom-event trigger covering the 12 event names in the contract.
4. Add a GA4 event tag that uses the data-layer event name and sends only the two approved parameters.
5. In GTM Preview, exercise one link for every event and confirm exactly one GA4 request per click.
6. Publish the container and record its version and date above.
7. Re-run the production click check and confirm the event in GA4 Realtime or DebugView.
8. Mark inquiry, participation, registration, Slack-join, and support actions as key events only after the analytics owner confirms the reporting model. Do not mark discovery or repository clicks as outcomes.

Deployment and GTM publication should happen in the same release window. Publishing the tag first creates no useful events; deploying the site first creates data-layer events that Analytics does not receive.

## Monthly review

Review the most recent complete 28-day period and compare it with the previous complete period:

1. nonbranded queries and organic landing pages for Homepage, Pitch, Partners, Projects, and the four priority project pages;
2. impressions, clicks, click-through rate, and average position by query/page pair;
3. project, partner, event, Slack, and support event rates;
4. project-page paths to Pitch, Events, Slack, and repositories;
5. newly indexed, excluded, redirected, or duplicate pages;
6. partner links and repository links to canonical project pages;
7. outdated project status, partner claims, or calls to action.

Do not create a new landing page from one query variation. First determine whether the query reflects qualified intent, whether an existing page can answer it, and whether someone can keep the new page accurate.

## Quarterly content review

The content owner should ask each active project or named partner to verify:

- partner and user roles;
- current status and ownership;
- outputs versus measured outcomes;
- privacy, legal, and security boundaries;
- repositories, live artifacts, and participation routes;
- what another organization can responsibly learn or reuse.

Use the [factual-review packet](content-seo-factual-review.md) and record approval in the pull request or project issue. If review is unavailable, attribute the claim to a public source, state the uncertainty, or remove the claim.
