---
layout: post
title: "Civic Hack DC 2025: Making Public Comments Count"
date: 2025-08-06 16:00:00 -0500
author: "Michael Deeb"
categories: [Events, Community]
tags: [civic hackdc, hackathon, open data, regulatory tech, volunteer]
excerpt: "80 civic technologists explored 2.3TB of regulatory data in one day. Here’s what they built, what we learned, and how to stay involved."
---

On **July 26, 2025**, Civic Tech DC hosted **Civic Hack DC 2025**, a one-day hackathon powered by community, creativity, and a 2.3TB mirror of regulatory data.

Together with **Professor Ben Coleman** of Moravian University and the **Mirrulations Project**, we gave 80 participants access to a massive dataset of federal public comments — and challenged them to build tools that help make civic voices easier to hear.

---

## Powered by Partnership

This event wouldn’t have happened without the incredible contributions of:

- **[Professor Ben Coleman & Moravian University](https://www.moravian.edu/computer-science/faculty#ben)** – stewards of the Mirrulations dataset  
- **[DataKind DC](https://www.meetup.com/datakind-dc/)** – event co-host and community connector  
- **[Taoti Creative](https://taoti.com/)** – host venue and fiscal sponsor  
- **[CareSet](https://careset.org/)**, **[Prefect](https://www.prefect.io/)**, **[ThunderCompute](https://www.thundercompute.com/)** – fiscal and infrastructure sponsors  
- **[Judges](https://github.com/civictechdc/hackdc2025/blob/main/evaluations/summaries.md#judges)** – experts from Moravian University, CMS, Google, AWS, APHL, DataKind DC, and Civic Tech DC  
- **Our volunteers** – setup, logistics, documentation, support — thank you!  

---
<div style="display: flex; align-items: flex-start; gap: 20px;">
<h2>A Message from Professor Ben Coleman</h2>
<img src="/assets/images/team_photos/coleman-2023-400w.jpg" alt="Professor Ben Coleman" style="width: 100px; height: auto; margin-left: 20px;">

</div>

> "When Fred Trotter and I launched the Mirrulations project five years ago, our vision was simple: make regulatory data freely available to everyone. What began as an undergraduate student project to work around API limitations has grown into something remarkable: a complete mirror of regulations.gov housed in AWS S3, continuously updated as new data arrives, and freely available as part of the AWS Open Data Program.
>
> For years my students, Fred, and I focused intensely on acquiring and maintaining this vast dataset of proposed rules and public comments. We knew the data held tremendous potential for understanding how public participation influences the regulatory process, but we hadn't fully explored what that potential might look like in practice.
> That's exactly what made last week's hackathon so extraordinary.
>
> Everyone arrived that morning with limited knowledge of our dataset. By the end of the day, you were thinking creatively and ambitiously about possibilities we hadn't even considered. The technical, design, and process expertise you brought created an incredible range of projects, from tools that tackle the technical challenges of working with massive regulatory datasets to novel approaches for identifying patterns in public comment data.
>
> What struck me most wasn't just the quality of the work, but your genuine engagement with the data itself. We knew that a one-day event wouldn't produce polished products. Instead, the most significant contributions were proof-of-concept explorations using small portions of our massive dataset. The real transformation happened in the connections you made with each other and with the possibilities this data represents.
> Many of your projects will find their way into the Mirrulations ecosystem, and we're excited about potential partnerships as we continue to unlock the value of this resource. More importantly, this event helped me understand that we need to build a true community around this work.
>
> Thank you to everyone who participated. I made new connections too, and I'm looking forward to collaborating with you in the months ahead. We're planning to build a landing page at <https://github.com/mirrulations/> as a home base for everyone who wants to continue building amazing projects with this data.
> The hackathon demonstrated what is possible when passionate people discover powerful data."

*Professor Ben Coleman, Moravian University*

---

## Problem Themes Addressed

Participants tackled core challenges identified through extensive stakeholder research with nonprofits, policy analysts, and civic technologists. In just six hours, **13 open-source projects** were developed to address these interconnected problems in the regulatory comment landscape.

### **Data Accessibility & Analysis**

**Challenge:** The Mirrulations 2.3TB dataset is JSON-heavy and difficult to analyze efficiently  
**Stakeholder Need:** "Accessing all the data in this format can be slow... What can we build on top of the raw Mirrulations data leveraging free S3 and open-source tools?"  
**Solution Focus:** Efficient formats (Parquet/ORC) for scalable storage and lightweight, local-friendly pipelines

### **Campaign Detection & Data Quality**

**Challenge:** Coordinated campaigns and automated submissions obscure genuine public engagement  
**Stakeholder Need:** "Track campaigns... identify duplicates, irrelevant submissions, templates, and AI- or bot-generated comments"  
**Solution Focus:** Advanced timing analysis and text similarity tools to extract unique signal from noise

### **Entity Resolution & Influence Mapping**

**Challenge:** Inconsistent organization names make it impossible to track stakeholder engagement patterns  
**Stakeholder Need:** "Make it easier to determine which organizations submitted comments... We need entity disambiguation"  
**Solution Focus:** Canonical entity resolution to unify aliases and measure organizational influence across dockets

### **Docket-Level & Cross-Docket Analysis**

**Challenge:** Single dockets contain tens of thousands of comments; no way to track rule evolution across years  
**Stakeholder Need:** "How can we summarize key themes from thousands of comments? How are dockets related?"  
**Solution Focus:** LLM-powered thematic clustering and version-aware analysis connecting RFIs → Proposed Rules → Final Rules

### **Sentiment & Position Analysis**

**Challenge:** Binary "for/against" coding misses nuanced stakeholder positions  
**Stakeholder Need:** "Sophisticated position analysis... How many credible commenters made similar points?"  
**Solution Focus:** Multi-dimensional position extraction revealing consensus patterns and unique insights

### **Multi-Agency Data Integration**

**Challenge:** Critical regulatory data scattered across incompatible agency portals (FCC, SEC, FERC, etc.)  
**Stakeholder Need:** Unified access layer spanning all federal comment systems beyond Regulations.gov  
**Solution Focus:** Standardized scraping and data formats to create comprehensive regulatory engagement dataset

### **Usability for Non-Technical Stakeholders**

**Challenge:** Policy analysts and advocates struggle with complex datasets and technical barriers  
**Stakeholder Need:** "Help non-experts discover adjacent topics... develop interactive visualizations for policy analysts"  
**Solution Focus:** User-friendly dashboards and guided semantic search enabling accessible regulatory analysis

**Explore the complete [project gallery and source code](https://github.com/civictechdc/hackdc2025/tree/main/projects/README.md) for demos, repositories, and detailed documentation.**

**Review the comprehensive [problem landscape](https://github.com/civictechdc/hackdc2025/tree/main/docs/README.md) including stakeholder research and use cases.**

---

## Highlighted Projects  

 These projects received weighted scores greater than ~3 out of 5, sorted alphabetically:

| Project | Highlight |
|--------|----------|
| **[Can of Spam](https://github.com/civictechdc/hackdc2025/tree/main/projects/canOfSpam)** | Detects duplicate and bot comments using timing analysis and hashes
| **[Hive-Partitioned Parquet](https://github.com/civictechdc/hackdc2025/tree/main/projects/hive-partitioned-parquet)** | Converts JSON to partitioned Parquet files for fast SQL analysis
| **[LLM.gov](https://github.com/civictechdc/hackdc2025/tree/main/projects/llmgov)** | RAG + vector embeddings for semantic search and question-answering
| **[Mirrulations-CLI](https://github.com/civictechdc/hackdc2025/tree/main/projects/mirrulations-cli)** | Python CLI to fetch, format, and structure regulatory data
| **[Rules-Talk](https://github.com/civictechdc/hackdc2025/tree/main/projects/rules-talk)** | Uses LLMs to group sentiment and topics in comment sets
| **[The Scrapers](https://github.com/civictechdc/hackdc2025/tree/main/projects/the-scrapers)** | Extends data beyond Regulations.gov by scraping FCC/SEC sites
| **[Taskmasters](https://github.com/civictechdc/hackdc2025/tree/main/projects/taskmasters)** | OCR and tagging pipeline for PDFs, DOCX, and images
| **[Within-Docket Dataset](https://github.com/civictechdc/hackdc2025/tree/main/projects/within-docket-dataset)** | Traces public comment impact on regulatory outcomes

For more details, see the [Evaluation Methodology](https://github.com/civictechdc/hackdc2025/blob/main/evaluations/methodology.md) and [Full Evaluation](https://github.com/civictechdc/hackdc2025/blob/main/evaluations/summaries.md).

---

## Keep Building With Us

Whether you contributed code or just showed up to listen — you're invited to keep the momentum going:

1. **Join our [Slack](/slack)** for project follow-ups, open calls, and collaboration  
2. **Contribute to the GitHub repos** from the [hackathon archive](https://github.com/civictechdc/hackdc2025)  
3. **Come to Project Nights** – [View our upcoming events](/)  
4. **Submit a new problem statement** – [Propose a challenge](/about)

---

## 📅 Save the Date: Spring 2026

We’re planning **Civic Hack DC: Part 2**, coming in **Spring 2026**  
**Theme**: *Deepening Impact with Open Regulatory Data*

Interested in sponsoring, co-hosting, or proposing a policy problem? Let us know at [civictechdc.org](/about).

---

## Final Thanks

To everyone who wrote code, reviewed projects, gave feedback, moved chairs, brought snacks, or just showed up, sincerely, thank you.

We’re building open infrastructure for democracy, one hackathon at a time.

**– The Civic Tech DC Team**

---

📸 **[Event Recap & Photos](https://github.com/civictechdc/hackdc2025/blob/main/README.md)**  
📂 **[All Project Repos](https://github.com/civictechdc/hackdc2025/tree/main/projects)**  
💬 **[Join the Slack](/slack)**
