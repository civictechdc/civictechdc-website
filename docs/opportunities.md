# Opportunities board

The public page is `/opportunities/`. Its cards and expandable details come from
`_data/opportunities.json`; organizers never need to edit the card layout.
The 11 retained entries are **proposed opportunities**, not confirmed openings.
The board links to the eight projects currently marked active in the Jekyll
collection, reusing their existing project images. Four role types are marked
`accepts_multiple`: Workshop Instructor, Portfolio Mentor, Communications
Contributor, and Website Contributor.
`proposed` entries appear publicly with an explicit label and no application button.
`open` entries appear as confirmed openings. Closed and draft entries remain in the
file for organizers but are not rendered. This is visibility, not confidentiality:
the GitHub repository is public. Do not store private applicant information here.

## Editing workflow

1. Open the Opportunities Board collection in Decap and edit the shared list.
2. Add a unique, stable lowercase ID; title; category; specific commitment;
   short description; volunteer benefits; named contact and public contact method;
   responsibilities; achievable deliverables; available support; and review date.
3. Confirm the role with its contact before changing its status to `open`.
4. Save and review the resulting GitHub change. Publishing to `main` triggers the
   existing GitHub Pages deployment. Confirm the card and its details on the site.
5. Review listings monthly. Set filled or completed roles to `closed`.

One board owner should coordinate review. Give editing permission to a small
organizer group; community members can suggest roles through the shared form.

## Shared interest form

Set `interest_url` to the complete HTTPS URL of an existing, approved form that
accepts submissions without Slack membership. Include an opportunity selection
field, contact information, and an explanation of who receives submissions and
how follow-up works. Keep applicant information outside this public repository.
Until configured, cards direct visitors to the named organizer.
The initial implementation uses one shared form and asks visitors to select the
role; automatic selection needs the chosen form provider's prefill URL format.
Do not invent an endpoint or launch a form that does not deliver submissions.

## Local Decap editing

`admin/config.yml` defines the editing form. Hosted login is intentionally not
active: `/admin/` explains that setup is pending. The local editor is at
`/admin/local.html` and loads Decap only on localhost or 127.0.0.1.

1. Install the repository dependencies and run `npm run serve`.
2. In the checkout, run `npx --yes decap-server@3.4.0` to start Decap's local proxy.
   This grants local file-write access; use only on a trusted development machine
   and never expose port 8081 publicly.
3. Visit `/admin/local.html` on your local Jekyll server. The local proxy writes
   the JSON file directly. Review the Git diff before committing.

The editor's pinned JavaScript is downloaded from cdn.jsdelivr.net, so that destination
must be reachable in the editor browser. The pinned script URL was checked successfully during implementation.
Local instructions still require an end-to-end browser check before relying on
this editor for production content management.

## Recommended hosting: Netlify

Use an organization-owned Netlify account to host the editor and configure its
GitHub OAuth integration. Keep the public website on GitHub Pages. A repository
administrator must connect the repository and configure the OAuth application;
the exact editor domain and callback must be known before enabling hosted login.
Confirm the chosen Netlify integration supports the final editor origin.

## Enable hosted organizer login (remaining setup)

GitHub Pages cannot host the OAuth callback service required by Decap's GitHub
backend. A repository administrator must select and provision a compatible OAuth
service before hosted editing is enabled. No credentials belong in this repository.

1. Choose a maintained Decap-compatible GitHub OAuth service and deploy it with
   the secrets stored securely at the hosting provider. Restrict origins to the
   production website and authorize only the intended repository/editor group.
2. Register a GitHub OAuth application with that service's documented callback
   URL. An organization administrator may need to approve organization access.
3. Set `backend.base_url` and `backend.auth_endpoint` in `admin/config.yml` to the
   chosen service's actual HTTPS origin and endpoint. Do not rely on the default
   Netlify OAuth endpoint without configuring a Netlify service.
4. Disable `local_backend` for hosted use. Replace the `/admin/` setup notice with
   the pinned Decap script after authentication is configured. Keep noindex and
   sitemap exclusion. Decide whether direct publishing is appropriate or use
   Decap's editorial workflow with protected-branch-compatible permissions.
5. Test login with an authorized editor, reject unauthorized users, save a draft,
   publish a confirmed role, verify its card, then close it and verify removal.
   Check the shared interest form actually receives the selected role.

Hosted authentication and the shared form are external prerequisites, not
completed features. No deployment or OAuth application has been created here.

## CMS choice and costs

Decap remains the prepared editor; hosted authentication is not connected.
Its project-page and opportunity forms use editorial workflow. Protect the
GitHub main branch and require organizer pull-request review to enforce approval;
the CMS interface alone is not an authorization boundary. The project dropdown
currently covers the eight active project pages and must be refreshed when that
project directory changes.
It uses GitHub repository permissions and organizer review, not strict
project-only access. Project leads would use forms, not code, after login setup.

Directus 12.5.0 was evaluated locally. Collection setup succeeded, but creating
custom project-lead permissions failed with HTTP 403 RESOURCE_RESTRICTED:
`custom_permission_rules_enabled is a restricted resource.` Its license also
prohibits bypassing protected features. The trial service was stopped; no
Directus production service, subscription, or migration was created. Do not
promise project-specific Directus permissions at zero license cost. Persistent
hosting and backups would also need a separate plan.

Community roles can be stored without a `project_path`. Project-specific roles
use the exact Jekyll project URL as `project_path`; the shared card include renders
them on that project's page rather than in the general community-role section.
The logo section links to current project pages. Drafts remain hidden everywhere.

## Windows local preview

Fetch the generated `assets/css/opportunities.css` along with the board include
and data. This stylesheet is generated from `sass/custom/opportunities.scss`;
it makes project links into tiles and removes the intro text width limit.

After obtaining the branch files, copy `scripts/opportunities-preview.html` to
`opportunities-local-preview.html` at the checkout root. This file renders the
same shared board include with draft roles visible and a preview warning. Use
`bundle exec jekyll serve --host 127.0.0.1 --no-watch` and visit
`/opportunities-preview/`. Remove the root preview file before committing or
publishing. The production board shows open and explicitly proposed roles. Draft and closed roles stay hidden.

On Windows, run Gulp separately from Jekyll: the POSIX `gulp & ...` serve script
otherwise runs the watcher first and never starts Jekyll. Use `npm run build`
when assets need rebuilding, then start Jekyll directly. Ruby on Windows may
also require `tzinfo-data` and the Windows platform in the dependency lockfile;
those machine-specific dependency changes are not included in this board change.
