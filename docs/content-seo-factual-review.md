# Content and SEO Factual Review

**Status:** Pending external review<br>
**Prepared:** July 24, 2026<br>
**Scope:** Every active project and every past project featured as a case study

This packet separates editorial review from factual approval. A `last_reviewed` date means Civic Tech DC checked the page for clarity, sources, status language, and unsupported claims. It does not mean that every named partner or project owner approved the description.

Each page in scope has `factual_review_status: pending` in its front matter. Change that value to `approved` only after every required reviewer for the page has confirmed the claims in scope and the approval evidence is recorded in a pull request or issue.

## Approval register

| Page                                                                                               | Required factual reviewers                                                                                                             | Status  | Approval evidence | Approval date |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ------- | ----------------- | ------------- |
| [VoteCatcher](https://www.civictechdc.org/projects/ballot-initiative.html)                         | Current project lead plus a campaign reviewer and election-law or petition-process practitioner                                        | Pending | None yet          | None yet      |
| [CIB Mango Tree](https://www.civictechdc.org/projects/cib-mango-tree.html)                         | Current project lead and GW Open Source Program Office representative; add a research user when available                              | Pending | None yet          | None yet      |
| [Congressional Tech](https://www.civictechdc.org/projects/congressional-tech.html)                 | Current project lead and American Governance Institute representative; add a congressional workflow user when available                | Pending | None yet          | None yet      |
| [Ride Score DC](https://www.civictechdc.org/projects/ridescoredc.html)                             | Current project lead plus a transportation practitioner and validating rider                                                           | Pending | None yet          | None yet      |
| [SpicyRegs](https://www.civictechdc.org/projects/spicyregs.html)                                   | Current project lead, Moravian University representative, and DataKind DC representative; add a policy or research user when available | Pending | None yet          | None yet      |
| [WaterVoice DMV](https://www.civictechdc.org/projects/watervoice-dmv.html)                         | Current project lead plus a recreational-water user, source-data practitioner, and any organization named as a partner                 | Pending | None yet          | None yet      |
| [DC Reentry Housing Project](https://www.civictechdc.org/projects/dc-reentry-housing-project.html) | DC Reentry Housing Alliance representative and current Civic Tech DC project lead                                                      | Pending | None yet          | None yet      |
| [Daria](https://www.civictechdc.org/projects/daria.html)                                           | Current DARIA Engineering maintainer and DC Abortion Fund representative                                                               | Pending | None yet          | None yet      |
| [Clean Slate](https://www.civictechdc.org/projects/clean-slate.html)                               | Civic Tech DC archive owner and Rising for Justice representative; ask Mission Launch to verify the transition sentence when practical | Pending | None yet          | None yet      |
| [Data and Democracy](https://www.civictechdc.org/projects/data-and-democracy.html)                 | Current Civic Tech DC project lead and Campaign Legal Center Voting Rights representative                                              | Pending | None yet          | None yet      |
| [Open Data DC](https://www.civictechdc.org/projects/opendatadc.html)                               | Civic Tech DC archive owner; record any available former portal maintainer review                                                      | Pending | None yet          | None yet      |

Silence is not approval. A public repository can support a claim when a reviewer is unavailable, but it does not satisfy the strategy's partner-review requirement.

## What every reviewer should check

For the page they know, ask the reviewer to verify:

1. the organization's or project's name and role;
2. the users and problem as described;
3. the work Civic Tech DC did or is doing;
4. active, past, transitioned, or unknown status;
5. outputs versus measured outcomes;
6. privacy, legal, security, and data limitations;
7. repositories, public artifacts, and next-step links;
8. anything that should be removed because it is sensitive, outdated, or misleading.

The request is for factual accuracy, not an endorsement of Civic Tech DC or the SEO strategy.

## Page-specific claims

### VoteCatcher

Confirm with the project lead and practitioners:

- the intended workflow is petition intake, OCR-assisted extraction, voter-file matching, confidence grouping, and human review;
- the intended users and regional configuration are described correctly;
- the project is pre-1.0 and has no claimed production campaign, legal determination, independent accuracy study, or measured outcome;
- petition images, voter files, and third-party OCR require privacy, security, retention, and legal review;
- the current GitHub repository and Slack channel are correct.

Source: [VoteCatcher repository and project documentation](https://github.com/civictechdc/votecatcher).

### CIB Mango Tree

Confirm with the project lead, GW OSPO, and a research user:

- researchers, journalists, fact-checkers, moderators, and watchdogs are the intended users;
- GW OSPO's relationship is described correctly;
- the current toolkit, graphical interface, documentation, and release status are accurate;
- the tools surface coordination signals but do not establish intent or prove inauthentic behavior;
- no adoption, investigative-result, or election-impact count is claimed.

Sources:

- [CIB Mango Tree repository](https://github.com/civictechdc/cib-mango-tree)
- [CIB Mango Tree website](https://cibmangotree.org/)

### Congressional Tech

Confirm with the project lead, AGI, and a workflow user:

- initial needs came from congressional-staff conversations associated with the Annual Congressional Hackathon;
- AGI's role and any current congressional relationships are described correctly;
- the repository is a portfolio of prototypes and proposals rather than one production service;
- the listed committee-video, data, spreadsheet, and web work is current;
- there is no claim of congressional endorsement, staff adoption, or measured institutional outcome.

Source: [Congressional Tech repository](https://github.com/civictechdc/congressional-tech).

### Ride Score DC

Confirm with the project lead and validating practitioners:

- cyclists, advocates, researchers, and planners are the intended users;
- the pipeline, schemas, rulesets, source factors, and prototype map are described correctly;
- no transportation organization is represented as a current partner or endorser;
- scores have not been reported as validated with representative riders and are not safety guarantees;
- no crash reduction, infrastructure change, or adoption outcome is claimed.

Sources:

- [Ride Score DC repository](https://github.com/civictechdc/ridescoredc)
- [Ride Score DC website](https://www.ridescoredc.com/)

### SpicyRegs

Confirm with the project lead, Moravian University, DataKind DC, and a target user:

- the July 2025 Civic Hack DC origin and collaborator roles are accurate;
- policy advocates, researchers, journalists, academics, and government practitioners are appropriate intended users;
- the current pipeline, public Parquet outputs, command-line tools, data dictionary, notebooks, and application are represented accurately;
- completeness, extraction, interpretation, and AI-assisted analysis limits are stated correctly;
- no public-participation, policy, adoption, or time-savings outcome is claimed.

Sources:

- [SpicyRegs repository](https://github.com/civictechdc/spicy-regs)
- [Civic Hack DC recap](https://www.civictechdc.org/blog/2025/08/06/civic-hackdc-july-recap/)

### WaterVoice DMV

Confirm with the project lead, users, data practitioners, and any named partner:

- WaterVoice DMV and DMV Water Watch refer to the same current project;
- intended users, geography, source types, grading method, and freshness treatment are correct;
- the repository has a functional prototype but not a public production service;
- fixture-backed or incomplete connectors, identifiers, site verification, hosting, monitoring, and legal review remain launch work;
- no agency or environmental organization is represented as endorsing the grades;
- no safety, adoption, exposure, or public-health outcome is claimed.

Source: [DMV Water Watch repository](https://github.com/civictechdc/DMVWaterWatch).

### DC Reentry Housing Project

Confirm with the Alliance and current project lead:

- the Alliance is the problem owner and subject-matter partner;
- coalition members are the intended initial users, while direct user roles and access remain discovery questions;
- discovery covers availability, eligibility, referrals, shared measures, access, governance, and maintenance;
- the work is active in July 2026;
- no public production platform, public repository, complete dataset, or measured housing outcome is available yet;
- product scope, ownership, access rules, and reporting cadence remain open questions.

This page relies primarily on the current project relationship, so named reviewer confirmation is required.

### Daria

Confirm with DARIA Engineering and the DC Abortion Fund:

- DARIA began with the DC Abortion Fund and entered service there in 2016;
- the pre-launch workflow involved about 75 case managers and roughly 3,500 calls per year;
- the product reflects abortion-fund case-management workflows and documented data-minimization decisions;
- multiple funds use DARIA, while user reports are not an independent impact evaluation;
- the software is now maintained independently and is no longer an active Civic Tech DC project;
- the current repository, adoption guide, and sandbox are the correct destinations.

Sources:

- [DARIA project description](https://github.com/DARIAEngineering/dcaf_case_management#project-description)
- [Impact on adopters](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/IMPACT_ON_ADOPTERS.md)
- [Data-collection practices](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/OUR_DATA_COLLECTION_PRACTICES.md)
- [Adoption guide](https://github.com/DARIAEngineering/dcaf_case_management/blob/main/_docs/ADOPTING_DARIA.md)

### Clean Slate

Confirm with the archive owner and Rising for Justice:

- Students in Court DC supplied the original legal-services context and record-sealing expertise;
- Rising for Justice is the current name or successor organization relevant to that historical partner reference;
- the application provided preliminary triage and education while lawyers retained responsibility for individual review;
- Civic Tech DC work occurred from 2015 through 2017;
- further development and deployment moved to Mission Launch's repository in March 2016;
- neither repository should be presented as current legal advice or a current legal service;
- no verified user, case, or legal-outcome count is available in the reviewed record.

Sources:

- [Civic Tech DC Clean Slate archive](https://github.com/civictechdc/clean-slate)
- [Mission Launch Clean Slate archive](https://github.com/MissionLaunch/clean-slate)
- [Rising for Justice](https://www.risingforjustice.org/)

### Data and Democracy

Confirm with the current project lead and Campaign Legal Center:

- the Campaign Legal Center Voting Rights team supplied the first concrete user relationship and workflow;
- the broader intended users include journalists, researchers, election practitioners, advocates, litigators, and oversight groups;
- the repository downloads, verifies, preserves, cleans, and combines Election Administration and Voting Survey data;
- 2020, 2022, and 2024 data work and the cross-year timeseries status are current;
- user discovery, analysis, visualization, and product decisions remain in progress;
- no single dashboard is a final public product, and the pipeline does not establish what a pattern means or prove wrongdoing.

Sources:

- [EAVS project repository](https://github.com/civictechdc/eavs_clc)
- [Campaign Legal Center Voting Rights](https://campaignlegal.org/issues/voting-rights)

### Open Data DC

Confirm with the archive owner or a former maintainer:

- the project used CKAN as a community-run catalog separate from the official DC government portal;
- intended uses included research, visualization, learning, and civic projects;
- the historical record's “more than 500 datasets” statement is supportable or should be removed;
- the repository is archived and the original project domain no longer resolves;
- no current dataset availability, user count, adoption, or public outcome is claimed.

Sources:

- [Open Data DC archive](https://github.com/civictechdc/opendatadc)
- [Official DC Open Data portal](https://opendata.dc.gov/)

## Review request template

> Civic Tech DC is preparing an updated project case study at [page URL]. Please review the linked page for factual accuracy, especially your role, the users and problem, current status, outputs versus outcomes, and any privacy, legal, security, or data limitations. This is not a request for endorsement. Please reply “Approved as factually accurate as of [date]” or list the needed edits. We will record the approval in the project pull request or issue.

## Recording an approval

For each required reviewer:

1. save the response in the project pull request or a public/internal issue appropriate to the sensitivity of the project;
2. record the reviewer by organization and role, not a private email address;
3. link the response in the approval register;
4. apply requested corrections and ask the reviewer to confirm the final version;
5. when all required reviewers approve, change `factual_review_status` to `approved`, add `factual_reviewed_by`, `factual_reviewed_on`, and `factual_review_evidence` front-matter values, and update `last_reviewed`;
6. request partner or repository links only after the final page is approved and deployed.

If a reviewer cannot verify a claim, mark it unknown, attribute it to the available source, or remove it. Do not convert an unanswered request into approval.
