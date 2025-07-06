---
layout: events
title: "Civic Hack DC 2025"
date: 2025-07-23
location: "Washington DC"
url: /civichackdc
description: |
  A data hackathon to build open-source tools for analyzing public comments on regulations. Join us for a day of civic innovation!
---
<style>

* { margin: 0; padding: 0; box-sizing: border-box; }
body { font-family: 'Source Sans Pro Web', 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; line-height: 1.6; color: #333; }
.container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }

.hero { background: linear-gradient(0deg, #104377); color: white; padding: 4rem 0; text-align: center; }
.hero h1 { font-size: 3.5rem; font-weight: bold; margin-bottom: 1rem; text-shadow: 2px 2px 4px rgba(0,0,0,0.3); }
.hero-banner { background: rgba(255,255,255,0.1); padding: 1rem 2rem; border-radius: 10px; margin: 2rem auto; max-width: 600px; backdrop-filter: blur(10px); }

.section { padding: 3rem 0; }
.section.alt { background: #f8f9fa; }
.section-title { text-align: center; font-size: 2.5rem; margin-bottom: 2rem; color: #333; }

.cta-buttons { display: flex; gap: 1rem; justify-content: center; margin-top: 2rem; }
.btn { padding: 12px 30px; border: none; border-radius: 25px; font-weight: 600; text-decoration: none; display: inline-block; transition: all 0.3s; cursor: pointer; }
.btn-secondary { background: #f8f9fa; color: #333; border: 2px solid #e9ecef; }
.btn-secondary:hover { background: #104377; transform: translateY(-2px); }

.focus-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(120px, 1fr)); gap: 1rem; margin: 2rem 0; }
.focus-icon { background: white; padding: 1.5rem; border-radius: 12px; text-align: center; box-shadow: 0 4px 6px rgba(0,0,0,0.1); transition: transform 0.3s; }
.focus-icon:hover { transform: translateY(-4px); }
.focus-icon-symbol { width: 40px; height: 40px; background: #4A90E2; border-radius: 50%; margin: 0 auto 0.5rem; display: flex; align-items: center; justify-content: center; color: white; font-size: 1.2rem; }

.goals-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; }
.goal-card { background: #f8f9fa; padding: 2rem; border-radius: 12px; border-left: 4px solid #4A90E2; transition: transform 0.3s, box-shadow 0.3s; }
.goal-card:hover { transform: translateY(-4px); box-shadow: 0 8px 25px rgba(0,0,0,0.15); }
.goal-number { background: #104377; color: white; width: 30px; height: 30px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: bold; margin-bottom: 1rem; }

.question-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; }
.question-card { background: #f8f9fa; padding: 0.8rem; border-radius: 12px; border-left: 4px solid #4A90E2; transition: transform 0.3s, box-shadow 0.3s; }
.question-card:hover { transform: translateY(-4px); box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15); }

.partners-grid { display: flex; justify-content: center; flex-wrap: wrap; margin-top: 1rem; gap: 2rem; padding: 0; }
.partner-logo { width: 120px; height: auto; object-fit: contain; }
.container { padding-left: 0; padding-right: 0; }

@media (max-width: 768px) {
    .header-content { flex-direction: column; gap: 1rem; }
    nav ul { gap: 1rem; }
    .hero h1 { font-size: 2.5rem; }
    .focus-grid { grid-template-columns: repeat(2, 1fr); }
    .goals-grid { grid-template-columns: 1fr; }
    .cta-buttons { flex-direction: column; align-items: center; }
    .timeline-item { padding-left: 60px; }
}
</style>

<section class="hero">
    <div class="container">
        <div class="hero-banner">
            <img class="usa-card__img" src="{{ '/assets/images/events/civichackdc/mainhackathonimage.png' | relative_url }}" alt="Civic Hack DC banner">
        </div>
        <h2><b>July 26, 2025</b></h2>
        <p style="font-size: 1.2rem; text-align: center; max-width: 800px; margin: 0 auto;">A data hackathon to build open-source tools for analyzing public comments on regulations</p>
        <div class="cta-buttons">
            <a href="https://lu.ma/czi3y05y" class="btn btn-secondary">Register</a>
            <a href="#about" class="btn btn-secondary">Learn More</a>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="partners-grid">
            <a href="https://www.moravian.edu" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/Moravian.png" alt="Moravian"></a>
            <a href="https://careset.com/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/careset.png" alt="Careset"></a>
            <a href="https://www.meetup.com/data-wranglers-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dataengineers.png" alt="Data Engineers"></a>
            <a href="https://www.meetup.com/data-visualization-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dataviz.png" alt="Data Viz"></a>
            <a href="https://www.dc2.org/data-science-dc" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/dsdc.png" alt="DSDC"></a>
            <a href="https://www.meetup.com/women-and-gender-expansive-coders-dc-wgxc-dc/" target="_blank" rel="noopener noreferrer"> <img class="partner-logo" src="/assets/images/events/civichackdc/WGXCDC.png" alt="WGXCDC"></a>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <h2 class="section-title">📊 About 📊</h2>
            <div class="container">
                <div style="margin-top: 3rem;">
                <p>Anytime a federal government agency puts out a proposed regulatory rule or RFI, the public has an opportunity to comment. These comments, which can number in the hundreds or thousands, are made public on <a href="https://www.regulations.gov/" target="_blank" rel="noopener noreferrer">Regulations.gov</a>. They can show the public sentiment on certain topics and how the public influences the rulemaking process. While regulations.gov allows you to download comments, there are significant technical limitations. This, as well as other practicalities — such as the large number of comments — can limit researchers, journalists, and even government agencies themselves from thoroughly analyzing these comments.</p>
                <br>
                <p>To address this, Professor Ben Coleman and his students at Moravian University built a tool that uses donated API keys to download comments across all agencies. The tool is continuously updated and the resulting data, in plain-text formats, is published by <a href="https://aws.amazon.com/marketplace/pp/prodview-ypmw3cvvwhv3y" target="_blank" rel="noopener noreferrer">AWS on S3 through its Open Data platform</a>.</p>
                <br>
                <p>On July 26, we're hosting a hackathon focused on a 
                <a href="https://www.federalregister.gov/documents/2025/05/16/2025-08701/request-for-information-health-technology-ecosystem">recent CMS RFI</a> (Document Number: 104377) seeking input on improving the health tech ecosystem for patients. We hope to create open-source tools in the hackathon that can be used to examine public comments on any future or past regulations or RFIs, put out by any agency. Professor Coleman will be on-site to walk participants through the data download tool and structure.</p>
            </div>
        </div>
    </div>
</section>

<section class="section">
  <div class="container">
    <h2 class="section-title">✨ Hackathon Questions ✨</h2>
    <p class="section-description">
      Tools will help researchers, journalists, and federal employees to ask questions of the data, such as:
    </p>
    <br>
    <div class="question-grid">
      <div class="question-card">What kinds of people are responding (individuals, corporations, non-profits)? What are those different groups saying about different topics?</div>
      <div class="question-card">What corporations or organizations are commenting, and what might their motivations be? What have they commented on in the past?</div>
      <div class="question-card">What portion of these comments are copied/pasted from large campaigns? Can we tell where the campaign originated?</div>
      <div class="question-card">What are the most common themes or concerns raised in the comments?</div>
      <div class="question-card">Which comments influenced the government’s decisions when it made its Final Rule?</div>
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
                <p>This will be a collaborative, not competitive, hackathon. We encourage anyone interested in this topic to attend.</p>
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

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Smooth scrolling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });

    // Timeline animation
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            }
        });
    }, { threshold: 0.1, rootMargin: '0px 0px -50px 0px' });

    document.querySelectorAll('.timeline-item').forEach(item => {
        observer.observe(item);
    });
});
</script>