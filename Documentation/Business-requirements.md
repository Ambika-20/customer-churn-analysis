# 📊 Customer Churn Analysis
### 📋 Business Requirements Document (BRD)

<p align="center">
  <strong>Understanding why customers leave — and identifying opportunities to retain them.</strong>
</p>

---

## 🏢 1. Business Background

💡 **Customers are the heart of every business.** Their loyalty drives recurring revenue, strengthens brand reputation, and supports long-term growth.

But what happens when customers leave?

They may switch to competitors offering better deals, feel dissatisfied with customer support, or believe they are paying too much for the services they receive.

Understanding these patterns helps businesses make informed decisions instead of relying on assumptions.

## 🎯 2. Problem Statement

The business needs to understand **why customers churn, which customer groups experience higher churn, and where retention efforts should be focused.**

Without a structured analysis, it is difficult to identify patterns in customer departures or determine which areas deserve further investigation.

> 🔍 **Core business question:** Why are customers leaving, and what can the business do to encourage them to stay?

## 🚀 3. Project Objectives

This project aims to:

- 📈 Measure the overall customer churn rate.
- 📑 Compare churn across different contract types.
- 💰 Examine differences in monthly charges between customers who stay and those who leave.
- 🗣️ Identify the most frequently reported reasons for churn.
- 💳 Explore churn patterns across payment methods.
- 👥 Analyze customer segments to identify potential retention priorities.
- 📊 Present actionable insights through an interactive Power BI dashboard.

## ❓ 4. Key Business Questions

| # | Business Question | Business Purpose |
|---|---|---|
| 01 | What percentage of existing customers have churned? | Understand the scale of customer loss |
| 02 | Which contract types have higher churn rates? | Identify contract groups for further investigation |
| 03 | Do churned customers have higher average monthly charges? | Explore possible pricing and value concerns |
| 04 | What reasons do customers most frequently report for leaving? | Identify recurring customer concerns |
| 05 | How does churn vary by payment method? | Investigate billing and payment-related patterns |
| 06 | Which customer segments warrant further attention? | Help prioritize retention analysis |

## 🛠️ 5. Project Scope

### ✅ In Scope

- 📋 Data inspection and preparation using Microsoft Excel
- 🗄️ Data exploration and analysis using MySQL
- 📊 Churn analysis by contract, payment method, and customer characteristics
- 📉 Dashboard development using Microsoft Power BI
- 💡 Findings, business recommendations, and documentation

### 🚫 Out of Scope

- 🤖 Machine learning-based churn prediction
- 🔮 Individual customer churn forecasting
- 📞 Implementation of customer retention campaigns
- 📏 Measuring the real-world impact of recommended interventions

## 🧰 6. Tools & Technologies

| Tool | Purpose |
|---|---|
| 🟢 Microsoft Excel | Initial data inspection and preparation |
| 🐬 MySQL | Data exploration, SQL queries, and analytical calculations |
| 📊 Microsoft Power BI | Interactive dashboards and visual reporting |
| 📝 Markdown | Project documentation and reporting |

## 🗂️ 7. Data Requirements

The analysis uses a telecommunications customer dataset with **6,418 records and 32 columns**.

| Data Category | Examples | Why It Matters |
|---|---|---|
| 👤 Customer Profile | Age, gender, marital status | Compare customer groups |
| 📄 Account Details | Contract, tenure | Examine account-related churn patterns |
| 💰 Billing | Monthly charges, total revenue | Explore billing differences |
| 💳 Payments | Payment method | Compare churn across payment methods |
| 📡 Services & Offers | Internet type, value deals | Explore service and offer associations |
| 🚪 Churn Details | Customer status, churn reason | Measure churn and investigate reported reasons |

**Metric definition:** Overall churn rate is calculated as:

\[
\text{Churn Rate} =
\frac{\text{Churned Customers}}
{\text{Churned Customers}+\text{Stayed Customers}}
\times 100
\]

Newly joined customers are excluded from this denominator.

## 👥 8. Key Stakeholders

| Stakeholder | Expected Interest |
|---|---|
| 🧑‍💼 Business Management | Understand churn patterns and retention opportunities |
| 🤝 Customer Retention Team | Identify customer groups requiring attention |
| 🎧 Customer Support Team | Investigate recurring support-related complaints |
| 📣 Marketing & Pricing Teams | Review competitor offers, pricing, and service value |
| 📊 Data Analyst | Turn customer data into meaningful insights |

## 🏆 9. Project Success Criteria

The project will be considered successful when it delivers:

- ✔️ Clearly defined and consistently calculated churn metrics.
- ✔️ Reliable comparisons across customer segments.
- ✔️ SQL queries that support the reported findings.
- ✔️ An interactive Power BI dashboard that communicates the analysis clearly.
- ✔️ Evidence-based recommendations linked to the findings.
- ✔️ Documented assumptions and limitations.

## 💡 10. Expected Business Value

The analysis aims to help the business:

- 🔎 Understand recurring patterns in customer departures.
- 🎯 Prioritize customer segments for further investigation.
- 💰 Explore potential revenue-retention opportunities.
- 🛠️ Identify service and support issues worth addressing.
- 📈 Make more informed customer retention decisions.

> ⚠️ **Important limitation:** This project identifies patterns and associations in historical data. It does not prove that a particular factor causes churn or guarantee that a recommended action will reduce it.

---

### 📌 Project Deliverables

| Deliverable | Description |
|---|---|
| 📋 Business Requirements | Business problem, objectives, scope, and questions |
| 🗄️ SQL Analysis | Queries for exploration and churn analysis |
| 📊 Power BI Dashboard | Visual analysis across three report pages |
| 💡 Findings & Recommendations | Key results and proposed business actions |

---

*Prepared as part of a Customer Churn Analysis portfolio project.*