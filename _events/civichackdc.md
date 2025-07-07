---
layout: events
title: "Civic Hack DC 2025"
date: 2025-07-26
location: "Washington DC"
url: /civichackdc
card_image: events/civichackdc/mainhackathonimage.png
registration_link: https://lu.ma/czi3y05y
page_css: /assets/css/civichackdc.css
description: |
  A data hackathon to build open-source tools for analyzing public comments on regulations. Join us for a day of civic innovation!
---

<section class="hero">
    <div class="container">
        <div class="hero-banner">
            {% include responsive-image.html class="usa-card__img" src="events/civichackdc/mainhackathonimage.png" alt="Civic Hack DC banner" %}
        </div>
        <h2><b>Saturday, July 26</b></h2>
        <h4><i>10:00 AM - 6:30 PM </i></h4>
        <h3><b>Location: <span style="color: #FFD700;">TBA</span></b></h3>
        <p><i>(metro-accessible)</i></p>
        <br/>

        <p>Please reach out to <a href="mailto:hack2025@civictechdc.org" style="color: white;">hack2025@civictechdc.org</a> if you are interested in sponsoring the event!</p>
        <br/>
        <p style="font-size: 1.2rem; text-align: center; max-width: 800px; margin: 0 auto;">A collaborative, hands-on hackathon dedicated to using AI, data science, and data engineering techniques to unlock public-comment data and illuminate how the public influences federal policies.</p>
        <div class="cta-buttons">
            <a href="https://lu.ma/czi3y05y" class="btn btn-secondary">Register</a>
            <a href="#about" class="btn btn-secondary">Learn More</a>
        </div>
    </div>

</section>

<section class="section">
    <div class="container">
        <div class="partners-grid">
            <a href="https://www.moravian.edu" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/Moravian-400w.png" alt="Moravian"></a>
            <a href="https://careset.com/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/careset-400w.png" alt="Careset"></a>
            <a href="https://www.meetup.com/data-wranglers-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dataengineers-400w.png" alt="Data Engineers"></a>
            <a href="https://www.meetup.com/data-visualization-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dataviz-400w.png" alt="Data Viz"></a>
            <a href="https://www.dc2.org/data-science-dc" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dsdc-400w.png" alt="DSDC"></a>
            <a href="https://www.meetup.com/women-and-gender-expansive-coders-dc-wgxc-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/WGXCDC-400w.png" alt="WGXCDC"></a>
        </div>
    </div>
</section>

<section class="section" id="about">
    <div class="container">
        <h2 class="section-title">📊 Why this matters 📊</h2>
        <div class="about-text" style="max-width: 800px; margin: 2rem auto 0; text-align: left;">
            <p>Each time a federal agency proposes new rules or seeks public input via <a href="https://www.regulations.gov/" target="_blank" rel="noopener noreferrer">regulations.gov</a>, thousands of comments pour in from individuals, advocacy groups, corporations, and more. Yet the data is notoriously difficult to access, analyze, and utilize effectively.</p>
            <p>To bridge this gap, Professor Ben Coleman and his students at Moravian University developed a robust open-source data pipeline. Powered by donated API keys, their tool continuously downloads and publishes public comments across agencies to <a href="https://aws.amazon.com/marketplace/pp/prodview-ypmw3cvvwhv3y" target="_blank" rel="noopener noreferrer">S3 on AWS through its Open Data Platform</a>, making the comments freely available for exploration and analysis.</p>
            <p>On July 26, we're hosting a hackathon to create open-source tools that can be used to examine public comments on any future or past regulations or RFIs. We will explore several datasets, including a <a href="https://www.federalregister.gov/documents/2025/05/16/2025-08701/request-for-information-health-technology-ecosystem">recent CMS RFI</a> seeking input on improving the health tech ecosystem for patients. Professor Coleman will be on-site to walk participants through the data download tool and structure.</p>
        </div>
    </div>
</section>

<section class="section alt">
    <div class="container">
        <h2 class="section-title">📝 Submit Your Problem Statements 📝</h2>
        <div style="max-width: 800px; margin: 0 auto; text-align: center;">
            <p>We're actively seeking problem statements from policy experts to explore during the hackathon. If you have an idea, please submit it through our form; we'll review submissions and select key problems for participants to tackle. For example, one of our primary problem statements will address the recent CMS RFI on patient-centered health technology, but we encourage submissions on other topics as well.</p>
            <div class="cta-buttons">
                <a href="https://docs.google.com/forms/d/e/1FAIpQLSfSGLrrTdu85aPlaLKGb2qZPPQ4wVJowmIpmAOu9e_MviG-sQ/viewform?usp=dialog" class="btn btn-secondary">Submit a Problem Statement</a>
            </div>
        </div>
    </div>
</section>

<section class="section">
  <div class="container">
    <h2 class="section-title">✨ What We'll Build Together ✨</h2>
    <p class="section-description" style="max-width: 800px; margin: 0 auto; text-align: center;">
      In this collaborative, non-competitive event, participants will develop open-source tools designed for reuse with any public comment dataset, past or future, exploring questions such as:
    </p>
    <br>
    <div class="question-grid">
      <div class="question-card">Who's commenting? (Individuals, nonprofits, corporations)</div>
      <div class="question-card">What are the major themes, sentiments, and sector-specific concerns?</div>
      <div class="question-card">Can we detect copy-paste campaigns or coordinated submissions?</div>
      <div class="question-card">What are organizations' historical commenting trends and motivations?</div>
      <div class="question-card">Which public comments directly influenced the final regulatory outcomes?</div>
    </div>
  </div>
</section>

<section class="section">
    <div class="container">
        <h2 class="section-title">✨ Hackathon Goals ✨</h2>
        <div class="goals-grid">
            <div class="goal-card">
                <div class="goal-number">1</div>
                <h3>Bring Together Contributors</h3>
                <p>Connect researchers, designers, data scientists, policy experts, and civic advocates to collaborate on civic tech solutions.</p>
            </div>
            <div class="goal-card">
                <div class="goal-number">2</div>
                <h3>Build Open-Source Tools</h3>
                <p>Develop tools for analyzing public comments, making it easier to extract meaningful insights from public feedback.</p>
            </div>
            <div class="goal-card">
                <div class="goal-number">3</div>
                <h3>Promote Civic Engagement</h3>
                <p>Demonstrate how public comments on regulations can inform better policymaking through improved engagement.</p>
            </div>
            <div class="goal-card">
                <div class="goal-number">4</div>
                <h3>Have Fun!</h3>
                <p>No prior experience is required! Just bring your curiosity, ideas, and laptop. We'll provide starter kits, roaming mentors, food, and drinks. This will be a collaborative, not competitive, hackathon.</p>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <h2 class="section-title">🤝 We're Looking For 🤝</h2>
        <div class="goals-grid">
            <div class="goal-card">
                <h3>Partnerships</h3>
                <p>Organizations interested in co-hosting, promoting, and helping us facilitate the event.</p>
            </div>
            <div class="goal-card">
                <h3>Subject Matter Experts</h3>
                <p>Individuals with expertise willing to serve on our problem review board and provide insights on submitted problem statements.</p>
            </div>
            <div class="goal-card">
                <h3>Sponsorships</h3>
                <p>Financial support, venue donations, food and beverage provision, or computing infrastructure; including cloud credits, AI resources, and infrastructure support. Please reach out to <a href="mailto:hack2025@civictechdc.org">hack2025@civictechdc.org</a></p>
            </div>
        </div>
    </div>
</section>

<section class="section alt" id="schedule">
    <div class="container">
        <h2 class="section-title">📅 Event Schedule 📅</h2>
        <p style="text-align: center; font-size: 2rem;">TBD</p>
    </div>
</section>
