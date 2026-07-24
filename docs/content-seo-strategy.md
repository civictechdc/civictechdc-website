# Civic Tech DC Content and SEO Strategy

**Status:** Implemented in the repository; external activation and review pending<br>
**Last updated:** July 24, 2026<br>
**Primary outcome:** More qualified public-interest project conversations, validating partners, and engaged volunteers

## Implementation Record

The repository implementation was completed and rendered on July 24, 2026.

| Scope                                      | Status                  | Evidence                                                                                                                                                                                               |
| ------------------------------------------ | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Homepage positioning and pathways          | Repository-complete     | Homepage preserves the `Civic Tech DC` title, names the full audience and operating model, and links distinctly to Pitch, Projects, Events, and Partners.                                              |
| Pitch owns project intake                  | Repository-complete     | Navigation now says **Start a project**; Pitch covers both intake pathways, support, fit, partner duties, capacity, process, examples, and FAQs.                                                       |
| Partners owns relationships and trust      | Repository-complete     | Partners distinguishes problem owners, validating users, collaborators, hosts, connectors, and supporters; its project CTA routes to Pitch.                                                            |
| Projects evidence hub                      | Repository-complete     | Projects groups nonprofit data, legal access, journalism/research, and community-data examples while retaining honest active and past labels.                                                          |
| Four priority proof pages                  | Repository-complete     | DC Reentry Housing, Daria, Clean Slate, and Data and Democracy follow the evidence standard, state limits, identify owners, and link to next steps.                                                    |
| Active and promoted project standard       | Repository-complete     | All eight active projects plus the three past projects featured as case studies declare the content standard, distinguish unknowns from results, identify owners, and expose next steps.               |
| Internal links and conversion hooks        | Repository-complete     | Priority pathways carry stable data-layer events and locations; project pages link to intake and status-appropriate volunteer routes.                                                                  |
| Search and technical baseline              | Recorded                | The July 22 search snapshot remains the pre-change discovery baseline; the July 24 production render is recorded in [Content and SEO Measurement](content-seo-measurement.md).                         |
| Production render and smoke validation     | Passed                  | `npm run build`, rendered SEO/content assertions, accessibility checks, full link checks, and desktop/mobile browser matrices passed.                                                                  |
| GTM event forwarding and publication       | External action pending | Repository code emits the events. The [published-container check](content-seo-measurement.md#published-container-check) confirms that the current GTM version does not forward them.                   |
| First 28-day conversion baseline           | External data pending   | Historical named-event data does not exist. Use the first complete 28 days after GTM publication without representing missing history as zero interest.                                                |
| Partner and project-owner factual approval | External review pending | Public repositories and existing approved site content support the current copy; the [factual-review packet](content-seo-factual-review.md) records the reviewers and claims still requiring approval. |
| Partner and repository distribution        | External action pending | Maintainers and partners should add canonical project links where appropriate after factual approval.                                                                                                  |

Repository validation does not substitute for the three pending external controls: publishing GTM tags, recording post-deployment data, and obtaining factual approval from named partners and active project owners.

## Decision Summary

Civic Tech DC should describe itself in plain language as a volunteer community that helps people and mission-driven organizations validate, scope, and build open-source public-interest technology.

The website should preserve the organization's strong Civic Tech DC identity while making its operating model unmistakable:

1. Someone brings a public-interest problem, idea, or early build.
2. Civic Tech DC helps find real users, partner organizations, and subject-matter expertise.
3. The group validates the need and scopes feasible work.
4. If the project is a fit and a team can form, volunteers build and iterate in the open.

The site already contains most of this model, but it is divided between **Partners** and **Pitch**, described with generic metadata, and supported by an underused portfolio of project evidence. The strategy is to clarify page ownership, improve search language, and make existing project pages useful search destinations. It does not depend on a recurring blog program.

## Strategy in One Sentence

Use Civic Tech DC's real projects to help nonprofits, legal clinics, journalists, academics, community members, and other public-interest partners discover how to bring a problem or idea, while giving volunteers clear evidence of what they can help build.

## What We Are Optimizing For

Traffic is useful only when it advances the mission. Priorities, in order, are:

1. **Qualified project conversations:** People or organizations bring a real public-interest problem, idea, user need, or early build.
2. **Validating partners and users:** Organizations and community members agree to help define needs, test assumptions, and remain involved.
3. **Sustained volunteer participation:** People find a relevant project and attend a Project Night, join Slack, or take on a concrete role.
4. **Authority and trust:** Civic Tech DC becomes a recognized source for practical, open-source public-interest technology work.
5. **Support for the work:** Partners, hosts, sponsors, and donors understand the value of the project pipeline.

Pageviews and rankings are diagnostic metrics, not the mission outcome.

## Publishing Model

Civic Tech DC publishes infrequently. Its SEO plan must work without an editorial calendar or a steady stream of articles.

Use this order of operations:

1. **Core pages own stable intent.** Homepage, Pitch, Partners, Projects, About, Events, and Support should answer the durable questions attached to their purpose.
2. **Project pages own problem and use-case intent.** They should explain the audience, problem, validation, work, result, lessons, and next step.
3. **Page sections own supporting questions.** Add concise FAQs, process explanations, examples, and decision guidance to the page that already owns the intent.
4. **Blog posts remain optional.** Use them for event recaps, announcements, or exceptional stories. Link them to the durable core or project page where essential information lives.

Create a new evergreen page only when search or intake evidence shows a distinct recurring need, no current page can answer it without losing focus, and someone can keep it accurate. Do not create a new page merely to target a keyword variation.

## Research Basis

### Current Site Truth

- Civic Tech DC is a nonprofit volunteer community, not a commercial consultancy or software vendor.
- In practice, selected projects receive no-cost discovery, technical consultation, scoping, user validation, and open-source development support.
- The audience is broader than nonprofits. It includes legal clinics, journalists, academics and researchers, government and public-interest staff, community groups, individual community members, and anyone working on a problem that helps people, society, or the environment.
- Project originators do not always arrive with a partner or confirmed users. Civic Tech DC may help find those people so the idea can be validated.
- Organizations may bring a problem without a predetermined solution. Civic Tech DC may help shape it and find people to work on it.
- Not every proposal becomes a project. A project needs a real user or access to users, an open-source approach, public benefit, a committed problem owner or partner, feasible scope, and enough volunteer leadership and capacity.
- The repository currently contains 18 project pages: 8 active and 10 past. They cover legal access, nonprofit case management, housing, elections, journalism and research, environmental data, transportation, public records, and community information.
- The blog contains only two posts. Civic Tech DC does not maintain a frequent publishing cadence, so core pages and the project portfolio must carry the search strategy.

### Search Validation Snapshot

On July 22, 2026, eight normal, unquoted searches were tested against a clean U.S. Yahoo results page. Yahoo rendered seven organic results per query, producing 56 first-page appearances. Civic Tech DC did not appear for any of the eight phrases. Five Brave searches and two DuckDuckGo searches corroborated the absence before those engines rate-limited the environment. Google could not be tested reliably because it presented an automated-traffic challenge.

This is a directional search-intent test, not a universal Google ranking report. Rankings change by engine, location, history, and time.

| Tested phrase                         | First-page pattern                                                | Strategic decision                                                                                                |
| ------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `technical assistance for nonprofits` | Consultants, managed IT, grants, and nonprofit resource pages     | Relevant supporting language, but “technical assistance” is broader than technology. Qualify the offer clearly.   |
| `nonprofit data help`                 | Nonprofit databases, data directories, and data-management guides | Too ambiguous as a primary target. Replace with problem-specific terms.                                           |
| `how to measure program impact`       | Guides, frameworks, and software vendors                          | Useful awareness topic, but broad and expertise-intensive. Do not lead with it.                                   |
| `help with a nonprofit database`      | Databases _of_ nonprofits and general database guides             | Search intent is misaligned. Replace with `nonprofit data management help` or a specific use case.                |
| `data visualization for nonprofits`   | Guides, examples, and software-company content                    | Good informational opportunity when supported by real Civic Tech DC examples.                                     |
| `automate nonprofit reporting`        | Reporting and accounting software pages                           | Relevant but commercially competitive. Lead with workflow lessons and case evidence, not a generic software list. |
| `tech volunteers for nonprofits`      | Volunteer-matching organizations and explanatory guides           | Highest-fit validated phrase. Address both organizations seeking help and volunteers seeking projects.            |
| `nonprofit dashboard help`            | Guides, examples, and platform vendors                            | Strong use-case opportunity, especially through the DC Reentry Housing Project and other data projects.           |

A separate clean Bing check placed the Civic Tech DC homepage first for `civic tech`. That brand/category visibility should be protected rather than replacing the homepage with a list of service keywords.

### What First-Page Metadata Showed

The metadata scrape covered 51 unique ranking URLs; 49 returned usable HTML.

- Median title length: **58 characters**.
- Median description length: **149 characters**.
- Median main-content length: approximately **1,242 words**.
- 35 of 54 usable result appearances had at least two important query terms in the title.
- 33 of 54 had at least two important query terms in the H1.
- 32 of 54 had at least two important query terms in the description.
- Only two used the entire search phrase verbatim in the title.
- Seven of 49 pages lacked a description, nine lacked a canonical, and sixteen lacked JSON-LD but still ranked.

The lesson is not to copy imperfect competitor metadata. It is that **dedicated intent pages, clear audience/problem language, useful content, and evidence matter more than keyword repetition or schema alone**. Strong external reputation and links are also likely contributors, but they were not measured in this test.

Representative patterns included:

- [Community IT](https://communityit.com/) uses a direct audience-and-service title: “IT Support for Nonprofits.”
- [Develop for Good](https://www.developforgood.org/) explicitly connects nonprofits with technology volunteers.
- [Sopact](https://www.sopact.com/use-case/nonprofit-dashboard) answers the dashboard query with a practical guide and examples.
- [Funraise](https://www.funraise.org/blog/data-visualization-for-nonprofits) uses a dedicated data-visualization guide.
- [Bonterra](https://www.bonterratech.com/blog/nonprofit-reporting-software) targets reporting with a software-comparison article.

Civic Tech DC's technical metadata pipeline is already stronger than many ranking pages. The primary gap is content and page intent, not missing tags.

## Positioning

### Core Description

Use this as the source message, adapting length to the context:

> Civic Tech DC is a nonprofit volunteer community that helps nonprofits, legal clinics, journalists, academics, community members, and other public-interest partners turn problems and ideas into useful open-source technology. We help find users and partners, validate the need, scope the work, and organize a volunteer team when a project is a fit.

### Message Hierarchy

1. **Identity:** Civic Tech DC is a nonprofit volunteer community rooted in the DMV.
2. **Category:** It builds public-interest and civic technology.
3. **Practical offer:** It provides selected projects with no-cost validation, scoping, technical consultation, and open-source development support.
4. **Audience:** It works with people and organizations trying to help the public, not only traditional nonprofits or government.
5. **Process:** Bring a problem or idea; validate it with real users; scope it; form a team; build in the open.
6. **Qualification:** Selection and delivery depend on public benefit, partner participation, feasibility, leadership, and volunteer capacity.

### Language to Prefer

- public-interest technology
- civic technology or civic tech
- nonprofit volunteer community
- volunteer-powered
- no-cost project support
- technical consultation and project scoping
- open-source development
- real users and validating partners
- bring a problem or idea
- build with, not build for

### Language to Use Carefully

- **Free consulting:** Searchers use it, but the phrase can imply guaranteed professional services. Explain that selected projects receive no-cost, volunteer-led support.
- **Technical assistance:** In the nonprofit sector it often includes governance, fundraising, finance, and other capacity building. Pair it with data, software, product, or technology language.
- **Client or customer:** Prefer partner, user, problem owner, project originator, or community member.
- **We will build it:** Prefer “we will explore the fit and try to form a team” until a project is accepted and staffed.

### Non-Goals

- Do not reposition Civic Tech DC as an IT help desk, managed-service provider, staffing agency, or software shop.
- Do not promise that every submission receives a team or completed product.
- Do not narrow the mission to nonprofits alone.
- Do not publish thin pages for every audience or keyword variation.
- Do not replace project evidence with generic, AI-generated advice.
- Do not sacrifice strong brand visibility for keyword-heavy homepage copy.

## Audience and Journey Map

| Audience                                                | What they arrive with                                              | What they need to learn                                          | Primary destination               | Primary action                          |
| ------------------------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------------------------- | --------------------------------- | --------------------------------------- |
| Organization or community problem owner                 | A workflow, data, service-delivery, access, or information problem | Whether Civic Tech DC is a fit and what participation requires   | Pitch                             | Start a private project conversation    |
| Civic-tech project originator                           | An idea, prototype, dataset, or early build                        | How to find real users, partners, and a sustainable project home | Pitch                             | Submit the idea for review              |
| Validating partner or user                              | Direct experience of a problem or access to affected users         | How they can shape requirements and test the work                | Partners, then Pitch/project page | Join as a validating partner            |
| Volunteer                                               | Skills, curiosity, or a desire to help                             | Which projects need help and how work happens                    | Projects, Events, Slack           | Join a Project Night or project channel |
| Journalist, researcher, academic, or legal practitioner | Domain expertise, data, or a public-interest question              | Whether collaboration can produce a useful open tool             | Pitch and relevant case studies   | Propose or validate a project           |
| Event host, connector, sponsor, or donor                | Space, reach, relationships, or funding                            | Other ways to strengthen the community                           | Partners or Support               | Start a partnership or contribute       |

## Page Ownership and Information Architecture

### Core Decision: Pitch Owns Project Intake

The existing pages should remain, but they need distinct jobs.

#### Pitch

**Purpose:** The canonical intake and qualification page for anyone bringing a public-interest problem, idea, dataset, workflow, or early build.

**Required changes:**

- Change the navigation label from **Pitch** to **Start a project** or **Bring a problem or idea** while retaining the existing URL.
- Change the H1 to **Bring us a problem or an idea**.
- Address both pathways explicitly: “we have a problem” and “I have an idea or build.”
- Name the full audience: nonprofits, legal clinics, journalists, academics, researchers, community groups, community members, public-interest staff, and civic technologists.
- Remove the implication that every problem must be confined to DC. Explain that Civic Tech DC is DMV-rooted and may support work with broader public benefit.
- Explain validation, fit, open source, partner participation, volunteer capacity, and what happens after the first email.
- Add visible, plain-language FAQs. Add FAQ schema only if the shared metadata system later supports and validates it.

**Recommended metadata:**

- Title: `Bring a Public-Interest Tech Project | Civic Tech DC`
- Description: `Bring Civic Tech DC a problem or idea that could help people. We validate it with users, scope the work, and recruit volunteers to build it open source.`

#### Partners

**Purpose:** The organizational relationship and trust page: project partners, validating users, subject-matter experts, event hosts, sponsors, and community connectors.

**Required changes:**

- Keep partner logos and proof of collaboration.
- Explain the difference between a problem owner, validating partner/user, project collaborator, host, connector, and sponsor.
- Send the **Build something** CTA to Pitch instead of maintaining a parallel email intake.
- Keep event and community partnership routes separate from project intake.

**Recommended metadata:**

- Title: `Public-Interest Technology Partnerships | Civic Tech DC`
- Description: `Work with Civic Tech DC as a project partner, validating user, subject-matter expert, event host, sponsor, or community connector.`

### Other Core Pages

| Page               | Primary job                                                            | Search role                                                                                | Primary CTA                                      |
| ------------------ | ---------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | ------------------------------------------------ |
| Homepage           | Establish the entity, mission, audience, and operating model           | Preserve `Civic Tech DC` and `civic tech` visibility; introduce public-interest technology | Start a project; join an event                   |
| Projects           | Prove that the model produces useful work                              | Hub for open-source civic-tech examples, audiences, and use cases                          | View a project; join or propose one              |
| Individual project | Explain the problem, partners/users, work, result, status, and lessons | Own specific problem, audience, and use-case searches                                      | Join, reuse the work, or start a related project |
| About              | Establish identity, governance, history, and scope                     | Entity trust and “what is Civic Tech DC”                                                   | Attend an event or explore projects              |
| Events and Slack   | Convert interested volunteers into participants                        | Branded and local participation searches                                                   | Register or join Slack                           |
| Support            | Explain why financial and in-kind support matters                      | Donation and sponsorship intent                                                            | Donate or sponsor                                |
| Blog               | Hold occasional recaps, announcements, or exceptional stories          | Support discovery but never own essential evergreen information                            | Continue to the relevant durable page            |

### Recommended Homepage Metadata

Keep the homepage title as `Civic Tech DC`. It is concise, aligns with the entity, and already performs for the category term.

Recommended description:

`Civic Tech DC helps nonprofits, legal clinics, journalists, academics, and community members validate ideas and build open-source public-interest technology.`

### Recommended Projects Metadata

- Title: `Open-Source Civic Tech Projects | Civic Tech DC`
- Description: `Explore open-source Civic Tech DC projects built with nonprofits, public-interest partners, community users, and volunteer technologists.`

### Topic Cluster Map

```text
Homepage: Civic Tech DC and the operating model
├── Pitch: bring a problem or idea
│   ├── who Civic Tech DC works with and what support may include
│   ├── how ideas are validated, scoped, and staffed
│   └── FAQ: fit, expectations, open source, capacity, and geography
├── Partners: organizations and people who make projects possible
│   ├── validating users and problem owners
│   ├── subject-matter and implementation partners
│   └── hosts, connectors, sponsors, and donors
├── Projects: evidence hub
│   ├── DC Reentry Housing: nonprofit data platform and dashboard work
│   ├── Daria: open-source nonprofit case management
│   ├── Clean Slate: legal-clinic and legal-access technology
│   ├── Data and Democracy: data tools for journalists and researchers
│   └── other project pages: transportation, environment, and community information
└── Blog: optional recaps and announcements that point to durable pages
```

## Keyword Strategy

No search-volume dataset was available. Prioritization below is based on mission fit, observed first-page intent, competitor-page quality, and the evidence Civic Tech DC can provide. Search Console data should refine it after the foundational pages are updated.

### Keyword-to-Page Ownership

Every priority search cluster needs one durable owner. Supporting pages may link to that owner, but they should not compete with it. Queries without a defensible owner remain research terms rather than targets.

| Search intent and representative terms                                                                                          | Primary owner              | Content needed                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------------- | -------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `civic tech`, `Civic Tech DC`, public-interest technology                                                                       | Homepage                   | Identity, DMV roots, full audience, operating model, and clear project/volunteer paths                                       |
| `tech volunteers for nonprofits`, `volunteer software developers for nonprofits`, no-cost tech support                          | Pitch                      | Who can bring a need, what support may include, selection limits, partner duties, process, and project examples              |
| `bring a civic tech idea`, `start a civic tech project`, `find partners for a civic tech project`                               | Pitch                      | Separate problem and idea pathways; explain validation, partner discovery, scoping, and team formation                       |
| public-interest technology partnership, validating partner, civic-tech sponsor                                                  | Partners                   | Partner roles, relationship examples, trust signals, and a project-intake link to Pitch                                      |
| `nonprofit dashboard help`, `nonprofit data management help`, `nonprofit data visualization`, shared or community data platform | DC Reentry Housing Project | Scattered-data problem, coalition users, validation, platform approach, current status, lessons, and related CTA             |
| open-source nonprofit case management, nonprofit database project help                                                          | Daria                      | Fund workflow, co-design, adoption, open-source repository, limits, and reusable lessons                                     |
| technology for legal clinics, pro bono legal technology                                                                         | Clean Slate                | Clinic partnership, policy problem, human review, transition, and lessons for legal-access technology                        |
| data tools for journalists, watchdogs, and researchers; public-data visualization                                               | Data and Democracy         | Named users, data friction, reproducible workflow, current outputs, open questions, related projects, and ways to contribute |
| nonprofit reporting automation                                                                                                  | No target yet              | Keep as a research term until a project documents a real reporting workflow, intervention, and result                        |

### Tier 1: High-Fit Action Intent

Use these naturally on Pitch and in supporting links from Homepage, Partners, Projects, and relevant project pages:

- pro bono technology help for nonprofits
- no-cost technology help for nonprofits
- volunteer software developers for nonprofits
- tech volunteers for nonprofits
- technology volunteers for community organizations
- public-interest technology project
- civic tech project support
- open-source development for nonprofits
- bring a civic tech idea
- start a civic tech project
- find partners for a civic tech project

These are target hypotheses informed by the tested `tech volunteers for nonprofits` results. They still require Search Console validation.

### Tier 2: Specific Problem and Use-Case Intent

- nonprofit data management help
- nonprofit database project help
- nonprofit dashboard help
- nonprofit data visualization
- shared data platform for nonprofit coalitions
- open-source case-management software for nonprofits
- public data visualization project
- community data platform

Use these on the evidence-rich project pages assigned above. Do not imply that Civic Tech DC offers every service on demand.

### Tier 3: Audience Expansion Hypotheses

These reflect the actual audience but were not validated in the initial search test:

- technology help for legal clinics or legal aid
- pro bono legal technology development
- data tools for journalists
- open-source tools for investigative journalism
- technology support for academic or community research
- civic data tools for researchers
- community technology project support
- volunteer developers for public-interest projects

Start with one strong project page for each proven audience. Create a dedicated audience page only after queries, referrals, or repeated partner conversations justify it.

### Informational Topics

- how to validate a civic tech idea
- how to scope a nonprofit technology project
- what makes a civic tech project sustainable
- how nonprofits can work with volunteer developers
- what to decide before building a nonprofit dashboard
- how to automate nonprofit reporting without another data silo
- data visualization for nonprofits
- how to measure program impact

Treat these as questions to answer inside Pitch or the relevant project page, not as an article queue. The final topic is broad and expertise-intensive; address it only when a qualified project owner can support the answer with a concrete example and useful method.

## Content Pillars

### 1. Bring a Public-Interest Problem or Idea

**Purpose:** Convert people with genuine needs or promising ideas into qualified project conversations.

**Topics:** Fit, user validation, partner discovery, scoping, open source, measurable public benefit, project leadership, and what happens after submission.

**Connects to:** Pitch and Partners.

### 2. Data and Operational Infrastructure for Mission-Driven Work

**Purpose:** Capture concrete needs expressed by nonprofits and community organizations without portraying Civic Tech DC as a generic IT provider.

**Topics:** Shared data platforms, case management, dashboards, reporting workflows, database design, data quality, visualization, and reusable open-source processes.

**Evidence:** DC Reentry Housing Project, Daria, Data and Democracy, DC Crash Bot, Housing Insights, Open Data DC, and WaterVoice DMV.

### 3. Open-Source Public-Interest Technology in Practice

**Purpose:** Demonstrate credibility through real projects, decisions, users, code, outcomes, and lessons.

**Topics:** Legal access, elections and democracy, journalism and research, climate and environment, transportation, housing, government transparency, and community information.

**Evidence:** Clean Slate, SpicyRegs, CIB Mango Tree, VoteCatcher, Congressional Tech, Ride Score DC, ANC Finder, Our DC Schools, and the rest of the project portfolio.

### 4. Volunteer Collaboration That Lasts

**Purpose:** Help partners and volunteers understand that useful civic technology requires participation, ownership, leadership, and continuity, not a one-day build event.

**Topics:** Working with volunteer teams, project roles, Project Nights, handoff and maintenance, partner responsibilities, open-source governance, and lessons from projects that sustained or transitioned.

**Connects to:** Projects, Events, Slack, Pitch, and Community.

## Project Page Content Standard

Every active project and every project promoted as a case study should answer:

1. **Who owns or experiences the problem?** Name the partner, users, or community where permission allows.
2. **What was happening before?** Describe the workflow, access barrier, fragmented data, cost, or unmet need.
3. **How was the need validated?** Identify user access, partner expertise, research, or testing.
4. **What did Civic Tech DC contribute?** Separate discovery, product strategy, data work, design, development, project management, and community coordination.
5. **What was built or changed?** Link the open-source repository and live artifact when available.
6. **What happened next?** State status, adoption, transition, measurable results, or known limits truthfully.
7. **What can another organization learn or reuse?** Make the page useful beyond promotion.
8. **How can someone participate?** Use a status-appropriate CTA.

Use a Challenge → Partners and users → Validation → Approach → Work → Result → Lessons → CTA structure. Do not invent impact measures when only outputs or anecdotes are known.

## Priority Page Backlog

Scores use the content-strategy weighting: audience impact 40%, content/mission fit 30%, search potential 20%, and resource readiness 10%. A resource score of 10 means the evidence is readily available and the work is comparatively feasible. Search scores are directional because search volume was not measured.

| Priority item                                                                    | Impact | Fit | Search | Resources | Weighted score | Durable surface                |
| -------------------------------------------------------------------------------- | -----: | --: | -----: | --------: | -------------: | ------------------------------ |
| Clarify Homepage, Pitch, and Partners ownership and copy                         |     10 |  10 |      8 |         9 |        **9.5** | Core pages                     |
| Expand Pitch to answer validation, fit, support, and partner questions           |      9 |  10 |      7 |         8 |        **8.8** | Pitch sections and FAQ         |
| Standardize project pages and upgrade the strongest proof                        |      9 |  10 |      7 |         7 |        **8.7** | Project collection and layout  |
| Explain nonprofit and volunteer expectations on the pages they already visit     |      9 |   9 |      8 |         8 |        **8.7** | Pitch, Projects, Events        |
| Turn DC Reentry Housing into the nonprofit data-platform proof page              |      8 |  10 |      8 |         8 |        **8.6** | Existing project page          |
| Turn Daria into the open-source nonprofit case-management proof page             |      8 |   9 |      8 |         8 |        **8.3** | Existing project page          |
| Strengthen Clean Slate for legal-clinic and legal-access searches                |      8 |  10 |      6 |         7 |        **8.1** | Existing project page          |
| Strengthen Data and Democracy for journalist and researcher searches             |      8 |  10 |      6 |         7 |        **8.1** | Existing project page          |
| Organize Projects around audience problems and reusable examples                 |      8 |   9 |      7 |         7 |        **8.0** | Projects hub                   |
| Add reporting, visualization, and dashboard lessons to the projects proving them |      7 |   8 |      7 |         6 |        **7.2** | Relevant project page sections |

## Priority Page Briefs

### Pitch: Bring Us a Problem or an Idea

- **Primary intent:** Project support and consideration.
- **Target:** `tech volunteers for nonprofits`, `no-cost technology help for nonprofits`, `bring a civic tech idea`, and `find partners for a civic tech project`.
- **Evidence:** Existing Pitch criteria and representative projects that found users, partners, or a clearer scope through Civic Tech DC.
- **Required sections:** Who can bring a need; problem and idea pathways; what no-cost volunteer support may include; how validation works; partner responsibilities; selection and capacity limits; process; examples; FAQs.
- **CTA:** Start a private project conversation.

### Projects: Open-Source Public-Interest Technology in Practice

- **Primary intent:** Proof, examples, and volunteer discovery.
- **Target:** `public-interest technology projects`, `open-source civic tech projects`, and supporting audience/use-case terms.
- **Evidence:** The active and past project collection.
- **Required sections:** A plain-language introduction to the operating model; grouped examples for nonprofit data, legal access, journalism/research, and community information; honest status labels; direct links to the strongest cases.
- **CTA:** Explore a relevant project, join a team, or bring a related problem.

### DC Reentry Housing: Shared Nonprofit Data Platform

- **Primary intent:** Use-case and proof.
- **Target:** `nonprofit dashboard help`, `shared data platform for nonprofits`, and `nonprofit data management help`.
- **Evidence:** DC Reentry Housing Alliance partnership, unit and eligibility mapping, shared measurement goals, and coalition workflow.
- **Required sections:** The scattered-data problem; coalition users; discovery and validation; platform scope; current status; known results or limits; lessons for other coalitions.
- **CTA:** Join the project or bring a related coalition data problem.

### Daria: Open-Source Nonprofit Case Management

- **Primary intent:** Use-case and proof.
- **Target:** `open-source nonprofit case management` and `nonprofit database project help`.
- **Evidence:** Development with abortion funds, the open-source repository, and adoption by multiple funds.
- **Required sections:** Original workflow; partner and user involvement; product decisions; implementation; adoption; current status; reusable lessons.
- **CTA:** Reuse the code where appropriate or bring a related public-interest workflow.

### Clean Slate: Technology With a Legal Clinic

- **Primary intent:** Audience proof and legal-technology use case.
- **Target hypotheses:** `technology help for legal clinics` and `pro bono legal technology development`.
- **Evidence:** Rising for Justice partnership, policy change, eligibility triage, lawyer review, and project transition.
- **Required sections:** Legal need; clinic role; validation and safeguards; technology's limited role; transition; lessons for future legal-access projects.
- **CTA:** Bring a legal-access problem or become a validating partner.

### Data and Democracy: Tools for Journalists and Researchers

- **Primary intent:** Audience proof and public-data use case.
- **Target hypotheses:** `data tools for journalists` and `civic data tools for researchers`.
- **Evidence:** Current election-data pipeline, user discovery, intended users, open-source work, and related public-data projects.
- **Required sections:** User groups; data friction; reproducible workflow; current outputs; project status; validation needs; related projects.
- **CTA:** Become a user, validating partner, subject-matter contributor, or volunteer.

## Content and On-Page Standards

Every new or substantially revised page should:

- Serve one primary search intent and one primary conversion action.
- Name the audience, problem, and useful outcome in the title, H1, description, or opening paragraph without forcing an exact phrase into every field.
- Keep rendered titles at 65 characters or fewer and descriptions at 160 characters or fewer.
- Answer the main question in the first 100 words.
- Use descriptive headings that let a nontechnical reader scan the page.
- Include real project, partner, user, or process evidence.
- Distinguish outputs from outcomes and verified results from aspirations.
- Link to relevant projects, Pitch, Partners, Events, and Slack based on the reader's next step.
- Link to repositories, partner sources, datasets, and external evidence where appropriate.
- Name a responsible owner and updated date on pages with changeable advice, project status, or outcome claims.
- Use visible FAQs only when they answer real selection or participation questions.
- Reuse the site's canonical metadata and structured-data system rather than adding page-local tags.
- Pass the repository's rendered SEO and accessibility checks.

### Writing Voice

- Plain, direct, practical, and welcoming.
- Mission-led without vague claims such as “transformative innovation.”
- Understandable to a nonprofit program manager, policy advocate, journalist, lawyer, researcher, resident, designer, or developer.
- Honest about constraints, volunteer capacity, status, maintenance, and what remains uncertain.

## Internal Linking Rules

- Homepage links directly to Pitch, Projects, Events, and Partners with distinct action labels.
- Partners' project-building CTA links to Pitch.
- Pitch links to two or three representative project cases showing different audiences and types of work.
- Each promoted project links back to Pitch for related proposals and to Events/Slack for volunteers.
- Projects links to the strongest project page for each audience and problem cluster.
- An occasional blog post links to its durable core or project page; it never serves as the only source for essential information.
- GitHub repository READMEs should link back to the canonical project page where maintainers permit it.

## Distribution and Authority

Search visibility will not come from metadata alone. For each priority core page or project case study:

1. Ask the named partner to review factual claims and link to the page from its own site or resource library when appropriate.
2. Link the page from the relevant GitHub repository, project README, and Civic Tech DC project page.
3. Share a partner-appropriate version through LinkedIn, Slack, Meetup, newsletters, and event follow-ups.
4. Offer the page to local and domain publications when it contains a genuinely useful result or lesson.
5. Keep organization descriptions consistent across GitHub, LinkedIn, Meetup, partner bios, and other profiles.

Existing relationships and project collaborators are a more credible authority path than generic link-building outreach.

## 90-Day Execution Plan

This cadence assumes volunteer capacity and favors one substantial, evidence-backed page upgrade every two to four weeks. It requires no blog schedule.

### Days 1–30: Clarify and Instrument

- Record baseline Search Console impressions, clicks, queries, indexed pages, and branded/nonbranded split. If Search Console is not configured, establish ownership first.
- Define analytics events for Pitch, partner inquiry, Project Night, and Slack CTA clicks through the existing tag-manager setup.
- Revise Homepage, Pitch, Partners, Projects metadata and first-screen copy.
- Make Pitch the single project-intake route; route Partners' build CTA to it.
- Add the full audience, two intake pathways, selection criteria, process, and visible FAQs to Pitch.
- Add representative project links from Pitch and organize Projects around audience problems and use cases.

### Days 31–60: Strengthen Proof

- Apply the project-page standard to DC Reentry Housing, Daria, Clean Slate, and one journalist/research project.
- Substantially upgrade the DC Reentry Housing and Daria pages for their assigned keyword clusters.
- Add user validation, partner responsibilities, and volunteer-project expectations to Pitch instead of creating separate articles.
- Ask involved partners to review, share, and link to accurate project pages.

### Days 61–90: Consolidate Keyword Coverage

- Upgrade Clean Slate and Data and Democracy for their assigned audience searches.
- Add dashboard, reporting, visualization, and project-sustainability lessons to the project pages that can prove them.
- Improve links among Homepage, Pitch, Partners, Projects, the four priority project pages, Events, and Slack.
- Review Search Console query language and Pitch/partner CTA activity.
- Retest the original eight queries and the revised high-intent phrases using a documented location and engine.
- Promote the best-performing project evidence through partner and community channels.
- Create a new evergreen page only if the data reveals important intent that no existing page can own.

## Measurement Framework

### North-Star Outcome

**Qualified public-interest project conversations initiated.**

A qualified conversation includes a specific problem or idea, identifiable users or a credible path to them, plausible public benefit, and willingness to participate in validation and ongoing work.

### Primary Conversion Events

- Pitch email or intake CTA click
- Partner inquiry CTA click
- Project-specific “join” action
- Event registration click
- Slack join click
- Sponsor or support inquiry

Track clicks as intent signals; do not treat a `mailto:` click as a completed or qualified inquiry.

### Search and Content Indicators

- Organic impressions and clicks to Pitch, Partners, Projects, and priority case studies
- Nonbranded query impressions in the Tier 1 and Tier 2 clusters
- Pages indexed and canonicalized correctly
- CTR by query/page pair
- Referring domains from partners, repositories, local media, and public-interest organizations
- Project-to-Pitch and Projects-to-Pitch CTA rates
- Event/Slack conversions from organic landing pages
- Returning visits to active project pages

### Review Cadence

- **Before changes:** capture a 28-day baseline and note data limitations.
- **Monthly:** review queries, landing pages, conversions, new links, and content status.
- **Quarterly:** reassess audience questions, project examples, outdated claims, and keyword priorities.
- **After six months:** decide whether any audience or use case merits a dedicated evergreen landing page.

Do not judge a new page by rank alone in its first weeks. First confirm crawlability, indexing, impressions, correct query intent, and qualified actions.

## Governance

For each substantive core or project page, assign four responsibilities even if one person holds several:

- **Subject owner:** Project lead, partner, or practitioner who can verify the facts.
- **Editor:** Ensures the page is useful to a nontechnical reader and follows this strategy.
- **Publisher:** Implements front matter, links, images, and metadata according to repository patterns.
- **Measurement owner:** Records the baseline, monitors query/conversion data, and schedules review.

Partners should approve descriptions of their role and any sensitive outcome claims. Project status must be kept current; an archived or unsupported project should not read like an active service.

## Definition of Done

A strategy milestone is complete when:

- Pitch and Partners have distinct purposes and CTAs.
- The homepage explains the audience and operating model without losing the Civic Tech DC brand focus.
- Every promoted project follows the evidence-based case-study structure or explicitly records what is still unknown.
- Every priority keyword cluster has one durable page owner.
- No priority keyword cluster depends on recurring blog publishing.
- Priority pages have unique, length-compliant metadata and useful internal links.
- Search and conversion baselines exist.
- Partner and project owners have reviewed factual claims.
- The rendered SEO, accessibility, and link checks pass.
- A future review date and content owner are recorded.

## Open Research Questions

These should be answered with intake conversations, Search Console, and partner interviews rather than assumptions:

1. What words do successful project partners use when they first describe their need?
2. Which kinds of requests are most common, most feasible, and most likely to sustain a volunteer team?
3. Which project pages already receive nonbranded impressions or referrals?
4. Which audience (organizations with problems, project originators, validating users, or volunteers) is currently hardest to attract?
5. What capacity can Civic Tech DC truthfully commit to during a typical quarter?
6. Which completed projects have defensible outcomes, adoption figures, quotes, or transferable lessons?
7. Do legal clinics, journalists, academics, and community groups use different search language that warrants separate content?

This document should be revised when those answers materially change the positioning, page map, or backlog.
