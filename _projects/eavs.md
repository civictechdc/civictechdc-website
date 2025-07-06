---
layout: project
is_active: true
title: Election Administration and Voting Survey
image: eavs.jpg
image_alt_text: Voting precinct data table
description: Use the data from the biennial Election Administration and Voting Survey (EAVS) to identify trends and outliers related to voter registration, voter roll maintenance, mail ballots, provisional ballots, voter turnout, and other aspects of how elections are run in states and counties across the U.S.
---
<section class="bg-base-lightest padding-y-4 usa-prose maxw-none">
  <div class="grid-container usa-prose">
    <em>🗳️ This project works with U.S. Election Administration and Voting Survey (EAVS) data to support research and analysis by the Campaign Legal Center's Voting Rights team.</em>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">🏠 Why This Matters</h2>
    <p>
      By using data from the biennial Election Administration and Voting Survey, we can identify trends and outliers in voter registration, voter roll maintenance, mail ballots, and other aspects of US elections.
    </p>
  </div>
</section>

<section>
    <div class="usa-alert usa-alert--info margin-y-3">
      <div class="usa-alert__body">
        <p class="usa-alert__text">
          We're bridging this gap with a tool that:
        </p>
        <ul class="usa-list">
          <li>Automates <strong>data processing and analysis</strong> of EAVS survey results</li>
          <li>Provides <strong>interactive visualizations</strong> to identify trends and outliers</li>
          <li>Enables <strong>efficient comparison</strong> across states, counties, and years</li>
        </ul>
      </div>
    </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">🚀 Our Impact</h2>
    <p>
    Join us to help detect and deter vote suppression and fraud! By helping the Campaign Legal Center to identify outliers in voter registration and votes, we enable their attorneys to take action against any wrongdoing that may be causing the anomalies.
    </p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">🌍 Geography / Reach</h2>
    <p>DMV-based, but designed to be open source and replicable across the country.</p>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">🤝 Community Partners</h2>
      <a href="https://campaignlegal.org/" class="usa-link usa-link--external" target="_blank" rel="noopener noreferrer"> Campaign Legal Center + Nonprofit</a>
  </div>
</section>

<section class="padding-y-1 usa-prose maxw-none">
  <div class="grid-container">
    <h2 class="font-sans-lg">📖 Our Story</h2>
    <p>The Campaign Legal Center wants to <strong>identify states and counties which have suspicious patterns in voter registration or voting</strong>, so it can take legal action to remedy the problems. For example, one state had an unusually high rate of rejection for voter registration applications submitted at public service offices, which turned out to be because of a glitch in the self-service kiosks used at public service offices in that state.</p> 
    <p>The current process the Campaign Legal Center uses is to <strong>identify the variables that they are interested in the EAVS raw data file and codebook</strong>. Then they copy and paste the relevant columns into a new Excel spreadsheet. In order to calculate the voter registration rejection rates they are interested in, they use Excel formulas (for example, dividing the column that contains the number of applications rejected by the sum of the column that contains number of applications accepted and the column that contains the number of applications rejected). Then they use the Excel subtotal feature to aggregate the data by state, since the raw data is only presented by county (although one of their interns wrote an R script to add up the county totals to get state totals). If they want to calculate how rates have changed, they copy and paste the relevant columns from the Excel spreadsheets they made for previous surveys into the current year spreadsheet.</p>
    <p>One of the major pain points is that all of this copying and pasting, aside from being labor intensive, can result in human error. Also, it is difficult for the Campaign Legal Center attorneys to find what they are looking for in the Excel spreadsheet. Thus, the Campaign Legal Center needs <strong>Civic Tech volunteers to help them with data analysis and visualization.</strong></p>
  </div>
</section>

<section class="bg-primary-darker text-white padding-y-5 usa-prose maxw-none">
  <div class="grid-container text-white">
    <h2>👋 Come Join Us</h2>
    <p>Everyone is welcome no matter your skill level or background. We especially need help with:</p>
    <ul class="usa-list">
      <li>Data Modeling</li>
      <li>Data Analysis</li>
      <li>Project Management</li>
      <li>User Experience</li>
      <li>Python</li>
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