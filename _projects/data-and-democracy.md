---
layout: project
is_active: true
title: Data and Democracy Project
image: project_thumbnails/eavs.jpg
image_alt_text: Voting precinct data table
description: "We make election and democracy data easier to understand and use, so that investigators, election administrators, oversight bodies, journalists, and others working to protect elections can find what matters and act on it."
seo_description: The Data and Democracy Project makes election data easier to use so investigators, administrators, oversight bodies, and journalists can protect elections.
---

<section class="bg-base-lightest padding-y-4 usa-prose maxw-none">
  <div class="grid-container usa-prose">
    <em><span aria-hidden="true">🗳️</span> We make election and democracy data easier to understand and use, so that investigators, election administrators, oversight bodies, journalists, and others working to protect elections can find what matters and act on it.</em>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">Why This Matters</h2>
    <p>
Elections in the United States generate enormous amounts of public data, but that data is scattered, inconsistent, and hard to use. Patterns that matter (administrative issues, data quality problems, or practices that warrant a closer look) stay buried in spreadsheets and codebooks that few people have the time or tooling to work through.

Our work makes election and democracy data easier to access and use, so that the people protecting elections can find what matters and act on it. These include journalists, advocates for fairer elections, election administrators, litigators, oversight bodies, and other election protection and public-interest organizations. Our goal is to reduce friction and speed up the process of working with election data, so that groups spend less time wrangling spreadsheets and more time acting on what they find.

</p>

  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">What We're Building</h2>
    <p>Our flagship effort is a reproducible, open workflow built around the U.S. Election Administration and Voting Survey (EAVS), the most detailed national dataset on how elections are actually run, covering voter registration, mail ballots, provisional ballots, voter list maintenance, and more. Current work includes:</p>

<ul>
<li>Building out a Python-based data pipeline to clean and standardize EAVS datasets</li>
<li>Developing timeseries data to support analysis across election cycles </li>
<li>Enriching datasets with demographic and jurisdictional information (e.g., Census-based data) </li>
<li>Preparing analysis-ready datasets for dashboards and further investigation</li>
</ul>
  
<p>The goal is to reduce the time and effort required to work with election data and to make analyses more transparent, reproducible, and scalable.
    </p>
  </div>
</section>
<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">Current Project Status</h2>
    <p>The project is currently in mid-stage of development, with strong foundations in place and ongoing work in several areas.</p>
<ul>
<li>Single-year datasets for 2020, 2022, and 2024 have been cleaned and standardized; the team is now shifting to build on the EAC's own pre-harmonized timeseries dataset as the canonical cross-year source, rather than manually combining files</li>
<li>Combined multi-year datasets and timeseries outputs have been created</li>
<li>Demographic enrichment has been partially integrated</li>
<li>Dashboard development and analysis concepts are in progress</li>
<li>The team is actively engaging in outreach and user discovery to ensure the work aligns with real-world needs</li>
</ul>
<p>The focus now is on refining the pipeline, expanding analysis and visualization, and working with potential users to guide further development.
    </p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">Our Story</h2>
    <p>The project is led by a small core team (Michael, Yashin, and Cameron) alongside Civic Tech DC volunteers. It began with a simple observation: the data that could help protect elections is rich but not user-friendly. Working with it often requires identifying relevant variables across multiple files and codebooks, cleaning and standardizing inconsistent formats, calculating key metrics, and comparing results across years and jurisdictions. In practice, this has often meant manual, spreadsheet-based workflows that are time-consuming, difficult to reproduce, and prone to error.</p>

<p>Early work focused on understanding how the Campaign Legal Center was working with EAVS data and where the biggest bottlenecks existed. The project has since evolved into building a reusable, multi-year data pipeline and supporting tools to enable more reliable and scalable analysis, and into a broader effort to make public election data usable for everyone working to protect the vote.</p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">How the Project Is Organised</h2>
    <p>The project is organized into five areas:</p>

<ul>
<li>Data Cleaning / Pipeline (Python) – cleaning and standardizing datasets, building reproducible workflows</li>
<li>Data Visualization (Tableau, Plotly, etc.) – developing dashboards and user-facing tools</li>
<li>Analytics / Modeling – exploring data, identifying patterns, and generating findings</li>
<li>Outreach – connecting with potential users and partners to understand needs and use cases</li>
<li>Project Management – coordinating tasks, documentation, and team processes</li>
</ul>
<p>Volunteers are welcome to contribute to one or more areas depending on their interests and experience.
    </p>
  </div>
</section>

<section class="bg-primary-darker text-white padding-y-5 usa-prose maxw-none">
  <div class="grid-container text-white">
    <h2><span aria-hidden="true">👋</span> Come Join Us</h2>
    <p>We're looking for volunteers with skills in Python data pipelines, data visualization, analytics and modeling, and outreach. But the most important thing is curiosity about how elections actually work and who gets to participate in them. Current needs include:</p>
<ul>
<li>Data Cleaning / Pipeline Building (Python) – cleaning and standardizing datasets, improving and extending the pipeline</li>
<li>Data Visualization (Tableau, Plotly, etc.) – building and refining dashboards and visualizations</li>
<li>Data Analytics / Modeling – conducting quality checks, exploratory analysis, modeling, and identifying meaningful patterns</li>
<li>Outreach – identifying and connecting with potential users of the work</li>
<li>Project Management and Coordination – supporting organization, onboarding, and communication</li>
</ul>
<p>The project is coordinated through the Civic Tech DC Slack workspace and during in-person project nights on the 2nd and 4th Wednesdays of each month. Work is largely asynchronous between meetings.</p>

<p>To get involved, join the <a href="{{ '/slack.html' | relative_url }}">Slack workspace</a>. Once there, look for the <strong>#eavs_clc</strong> channel, where we share updates, tasks, questions, and resources.</p>

<p>If you are interested in potentially contributing now or later, please also fill out the <a href="https://docs.google.com/forms/d/e/1FAIpQLSfZ7X3jxj1xwnmgvGi6b7FBPBf5SKoVHX3Vz1eV5wom5TXKNg/viewform">Volunteer Matchmaker Survey</a>. Completing the survey is not a commitment to volunteer; it simply helps us understand your interests, skills, and availability as the project evolves.</p>
  </div>
</section>

<section class="usa-section padding-y-4">
  <div class="grid-container">
    <div class="usa-button-group">
      <a href="https://civictechdc.slack.com/archives/C07HS3V6AAF" class="usa-button usa-button--dark" target="_blank" rel="noopener noreferrer">
        <span aria-hidden="true">💬</span> Slack (#eavs_clc)
      </a>
      <a href="https://github.com/civictechdc/eavs_clc" class="usa-button usa-button--dark" target="_blank" rel="noopener noreferrer">
        <span aria-hidden="true">🧩</span> GitHub Repo
      </a>
    </div>
  </div>
</section>
