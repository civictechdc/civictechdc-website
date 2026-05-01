---
layout: project
is_active: true
title: Election Administration and Voting Survey
image: project_thumbnails/eavs.jpg
image_alt_text: Voting precinct data table
description: Use the data from the biennial Election Administration and Voting Survey (EAVS) to identify trends and outliers related to voter registration, voter roll maintenance, mail ballots, provisional ballots, voter turnout, and other aspects of how elections are run in states and counties across the U.S.
---

<section class="bg-base-lightest padding-y-4 usa-prose maxw-none">
  <div class="grid-container usa-prose">
    <em>🗳️ This project works with the U.S. Election Administration and Voting Survey (EAVS) data to support research and analysis for public-interest groups.</em>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg"> Why This Matters</h2>
    <p>
Election administration data can reveal patterns that may point to administrative issues, data quality problems, or practices that warrant further review. The U.S. Election Administration and Voting Survey (EAVS) provides detailed information on how elections are run across states and counties—covering voter registration, mail ballots, provisional ballots, voter list maintenance, and more.

Making this data easier to clean, compare, and analyze across jurisdictions and over time can support research, oversight, advocacy, and other public-interest work.
    </p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">Our Impact</h2>
    <p>By making EAVS data easier to clean, analyze, and compare across time and geography, this project supports election officials, researchers, advocacy organizations, legal teams, journalists, public-interest organizations to identify patterns that may warrant further investigation. The work aims to lower barriers to using election administration data and to enable more consistent, transparent, and scalable analysis.
    </p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">What We're Building</h2>
    <p>The EAVS project is building a reproducible, open workflow to make election administration data easier to use. Current work includes:</p>

<ul>
<li>A Python-based data pipeline to clean and standardize EAVS datasets</li>
<li>Cleaned datasets for 2020, 2022, and 2024, along with combined multi-year outputs</li>
<li>Time-series data to support analysis across election cycles</li>
<li>Data enrichment with demographic and jurisdictional information (e.g., Census-based data)</li>
<li>Analysis-ready datasets designed for dashboards and further investigation</li>
</ul>
  
<p>The goal is to reduce the time and effort required to work with EAVS data and to make analyses more transparent, reproducible, and scalable.
    </p>
  </div>
</section>
<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">Current Project Status</h2>
    <p>The project is currently in a mid-to-late stage of development, with strong foundations in place and ongoing work in several areas.</p>
<ul>
<li>Core datasets for 2020, 2022, and 2024 have been cleaned and standardized</li>
<li>Combined multi-year datasets and time-series outputs have been created</li>
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
    <p>The EAVS dataset is rich but not user-friendly. Working with it often requires identifying relevant variables across multiple files and codebooks, cleaning and standardizing inconsistent formats, calculating key metrics, and comparing results across years and jurisdictions. In practice, this has often meant manual, spreadsheet-based workflows that are time-consuming, difficult to reproduce, and prone to error.

Civic Tech DC volunteers began this project to make EAVS data more accessible and usable. Early work focused on understanding how organizations and researchers were working with the data and where the biggest bottlenecks existed.

One example: in prior analysis, a large drop in in-person voting in a county was initially interpreted as a potential issue—but was later explained by the rollout of a new ballot marking device that changed how votes were recorded. This highlighted both the value of the data and the importance of making it easier to analyze accurately and consistently.

The project has since evolved into building a reusable, multi-year data pipeline and supporting tools to enable more reliable and scalable analysis.
    </p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">How the Project Is Organised</h2>
    <p>The project is organized into five areas:</p>

<ul>
<li>Data Cleaning / Pipeline (Python) – cleaning and standardizing datasets, building reproducible workflows</li>
<li>Dashboard (Tableau) – developing visualizations and user-facing tools</li>
<li>Analysis / Insights – exploring data, identifying patterns, and generating findings</li>
<li>Outreach – connecting with potential users and partners to understand needs and use cases</li>
<li>Project Management – coordinating tasks, documentation, and team processes</li>
</ul>
<p>Volunteers are welcome to contribute to one or more areas depending on their interests and experience.
    </p>
  </div>
</section>

<section class="bg-primary-darker text-white padding-y-5 usa-prose maxw-none">
  <div class="grid-container text-white">
    <h2>👋 Come Join Us</h2>
    <p>We welcome volunteers with a range of skills and interests. Current needs include:</p>
<ul>
<li>Python / Data Pipeline – cleaning and standardizing datasets, improving and extending the pipeline</li>
<li>Tableau / Dashboarding – building and refining visualizations (experienced Tableau users especially welcome)</li>
<li>Analysis / Insights – conducting quality checks, exploratory analysis, and identifying meaningful patterns</li>
<li>Outreach – identifying and connecting with potential users of the work</li>
<li>Project Management and Coordination – supporting organization, onboarding, and communication</li>
</ul>
<p>The project is coordinated through the Civic Tech DC Slack workspace and during in-person project nights on the 2nd and 4th Wednesdays of each month. Work is largely asynchronous between meetings.

To get involved, join the Slack workspace here: https://www.civictechdc.org/slack

Once there, look for the #eavs_clc channel, where we share updates, tasks, questions, and resources. Joining is not a commitment—just a way to learn more.</p>
    </ul>
  </div>
</section>

<section class="usa-section padding-y-4">
  <div class="grid-container">
    <div class="usa-button-group">
      <a href="https://civictechdc.slack.com/archives/C07HS3V6AAF" class="usa-button" style="background-color: #253551; color: #ffffff;" target="_blank" rel="noopener noreferrer">
        💬 Slack (#eavs_clc)
      </a>
      <a href="https://github.com/civictechdc/eavs_clc" class="usa-button" style="background-color: #253551; color: #ffffff;" target="_blank" rel="noopener noreferrer">
        🧩 GitHub Repo
      </a>
    </div>
  </div>
</section>
