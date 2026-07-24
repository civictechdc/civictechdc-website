---
layout: project
is_active: false
title: Clean Slate
seo_title: "Legal Clinic Technology: Clean Slate"
image: project_thumbnails/clean-slate.jpg
image_alt_text: Clean Slate DC logo
github_link: https://github.com/civictechdc/clean-slate
description: A past legal-access project that paired a DC legal clinic's expertise and attorney review with a limited tool for understanding record-sealing eligibility.
seo_description: Clean Slate paired legal-clinic expertise and attorney review with a limited DC record-sealing eligibility tool, then transitioned to another nonprofit.
content_owner: Civic Tech DC project archive
last_reviewed: 2026-07-24
factual_review_status: pending
case_study_standard: true
---

Clean Slate was a 2015–2017 legal-access project for people trying to understand whether a DC criminal record might qualify for sealing. Civic Tech DC volunteers worked with Students in Court DC (now [Rising for Justice](https://www.risingforjustice.org/)) to turn expert legal logic into a guided triage tool while keeping lawyers in the review process.

Clean Slate is no longer active, and its historical logic must not be used as current legal advice.

## Legal need

Record-sealing rules are difficult for a nonlawyer to interpret. The result can depend on the offense, case status, dates, waiting periods, pending matters, and changes in law. Legal clinics also needed to answer initial eligibility questions efficiently, route possible clients, train attorneys, and help people understand next steps.

The project began after marijuana decriminalization and legalization changed the local policy context. A timely digital guide could make the first step more understandable, but incorrect legal logic could also mislead someone about an important right.

## Clinic role and user validation

Students in Court DC supplied the legal-services context and record-sealing expertise. The [archived project repository](https://github.com/civictechdc/clean-slate) records needs from legal clinics, including:

- quickly checking whether a client's record might be eligible for sealing;
- receiving and routing intake referrals;
- helping new attorneys learn the process;
- providing forms and step-by-step information;
- explaining the timeline for possible eligibility.

The clinic relationship gave the volunteer team access to the people who understood both the law and the intake workflow. Eligibility rules were represented as a series of questions and answer paths that legal practitioners could inspect and revise.

## Safeguards and technology's limited role

The JavaScript and React application guided a user through questions and returned a preliminary result such as likely eligible, possibly eligible after a waiting period, or not currently eligible. It was designed as triage and education, not as a lawyer.

The distinction mattered:

- legal experts defined and reviewed the decision logic;
- the interface explained terms and next steps rather than issuing a court determination;
- lawyers remained responsible for reviewing individual cases;
- the project had to change when the law changed;
- a software answer could not account for every fact or replace legal counsel.

That limited role is a useful model for pro bono legal technology. Technology can organize questions, reduce repetition, and improve access to information while accountable legal professionals retain judgment.

## Transition and current status

The original Civic Tech DC repository is archived and was last active in 2017. In March 2016, further development and deployment moved to [Mission Launch's Clean Slate repository](https://github.com/MissionLaunch/clean-slate). That repository also reflects a historical version of the project rather than a current legal service.

The page does not claim a verified number of users, completed cases, or legal outcomes because those measures are not available in the project record reviewed here. Its value as evidence is the collaboration model, the safeguard around human review, and the explicit transition, not an invented impact figure.

For current help with a DC legal matter, use a qualified legal-services provider and current official information. [Rising for Justice](https://www.risingforjustice.org/) is the successor organization to the project's original clinic partner.

## Lessons for future legal-access projects

1. **A legal clinic must shape the product.** Volunteer developers cannot infer legal rules, intake practice, or the consequences of an incorrect answer.
2. **Define the boundary of automation.** Triage and education can support a professional workflow without pretending to replace legal judgment.
3. **Make policy logic reviewable.** Structured questions and answer paths help practitioners inspect what the software will say.
4. **Plan for legal change.** A correct tool can become harmful when law, forms, or procedure changes.
5. **Archive responsibly.** Past legal tools should state that they are inactive and direct people to current, qualified help.

## Bring a legal-access problem or validate one

Legal clinics, pro bono practitioners, policy advocates, and community members can <a href="{{ site.baseurl }}/pitch" data-analytics-event="project_inquiry_click" data-analytics-location="clean_slate_project_cta">bring a current legal-access problem to Civic Tech DC</a>. You do not need to prescribe a tool; start with the people affected, the workflow, the safeguards, and the evidence.

If you can help a project understand legal practice or affected users, [see how validating and subject-matter partners work with Civic Tech DC]({{ site.baseurl }}/partners).

Want to help with current public-interest work instead? <a href="{{ site.baseurl }}/events" data-analytics-event="event_discovery_click" data-analytics-location="clean_slate_project_cta">Meet active teams at a Project Night</a> or <a href="{{ site.baseurl }}/slack" data-analytics-event="slack_discovery_click" data-analytics-location="clean_slate_project_cta">join the Civic Tech DC Slack</a>.
