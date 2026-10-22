# 📊 Customer Churn Analysis
### Understanding Why Customers Leave — and Where Retention Efforts Should Focus

<p align="center">
  <strong>From raw customer data to actionable business insights.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Excel-Data_Preparation-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="Microsoft Excel"/>
  <img src="https://img.shields.io/badge/MySQL-SQL_Analysis-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Power_BI-Data_Visualization-F2C811?style=for-the-badge&logo=powerbi&logoColor=black" alt="Power BI"/>
</p>

---

## 🏢 The Business Challenge

**Customers are the heart of every business. So why do they leave?**

When customers discontinue a service, businesses risk losing recurring revenue, customer relationships, and future growth opportunities. Understanding why customers leave is essential for identifying retention opportunities and making informed business decisions.

This project analyzes telecommunications customer data to investigate churn patterns, explore reported reasons for leaving, and identify customer groups that may need further attention.

> 💡 **The central question:** What does customer data reveal about churn, and how can businesses use these insights to improve retention decisions?

## 🎯 Project Objectives

- 📉 Measure customer churn and establish a baseline.
- 📄 Compare churn across contract types.
- 💰 Examine monthly charges for customers who stayed and those who churned.
- 🗣️ Identify the most frequently reported reasons for leaving.
- 💳 Explore differences in churn across payment methods.
- 👥 Analyze customer segments to identify potential retention priorities.
- 📊 Present findings through an interactive Power BI dashboard.

## 🛠️ Tools & Technologies

| Tool | Application |
|---|---|
| 🟢 Microsoft Excel | Initial data inspection and preparation |
| 🐬 MySQL | Data exploration, SQL queries, and churn analysis |
| 📊 Microsoft Power BI | Interactive dashboards and visual reporting |

## 📁 Dataset Overview

| Attribute | Details |
|---|---|
| Industry | Telecommunications |
| Records | 6,418 |
| Columns | 32 |
| Customer statuses | Stayed, Churned, Joined |
| Format | CSV |

The dataset includes customer demographics, contracts, billing, payment methods, services, and recorded churn reasons.

**Original dataset:** [Faisal Khan — Customer Churn Analysis](https://github.com/Faisal-khan28/customer-churn-analysis-sql-python-powerbi)

The source dataset is credited to its original repository. The SQL analysis, Power BI dashboard, and project documentation presented here are my own work.

## 📊 Power BI Dashboard

The report is organized into three pages, each focusing on a different business question.

### 1. 📌 Overview
*How many customers leave, and how does churn vary across contract types?*

![Customer Churn Dashboard — Overview](screenshots/overview.png)

### 2. 🔍 Churn Drivers
*What reasons do customers report for leaving, and which patterns deserve attention?*

![Customer Churn Dashboard — Churn Drivers](screenshots/churn-drivers.png)

### 3. 👥 Customer Segments
*How does churn vary across customer groups, services, and offers?*

![Customer Churn Dashboard — Customer Segments](screenshots/customer-segments.png)

📂 **Power BI report:** [`dashboard/`](dashboard/)

*Open the `.pbix` file in Microsoft Power BI Desktop to explore the report.*

## 📈 Key Findings

### 01 — Customer Churn Baseline

Out of 6,418 customer records:

- 🚪 **1,732** customers churned.
- 💚 **4,275** customers stayed.
- 🆕 **411** customers joined.

The calculated churn rate was **28.83%**, using only stayed and churned customers in the denominator.

### 02 — Contract Type

The Excel and SQL analyses both indicate that month-to-month customers have higher observed churn than customers on longer-term contracts.

The exact contract churn rates differ between the two analyses and require reconciliation before a single set of figures is reported as final.

### 03 — Monthly Charges

| Customer Status | Average Monthly Charge |
|---|---:|
| Churned | 73.10 |
| Stayed | 61.84 |
| Difference | 11.26 |

Customers who churned had an average monthly charge 11.26 higher than customers who stayed. This is a pattern to investigate, not proof that higher charges cause churn.

### 04 — Reported Churn Reasons

| Reported Reason | Customers |
|---|---:|
| Competitor had better devices | 289 |
| Competitor made a better offer | 274 |
| Attitude of support personnel | 208 |
| Don't know | 124 |
| Competitor offered more data | 106 |

Competitor-related reasons feature prominently in the recorded feedback, while support experience is another area worth investigating.

### 05 — Payment Method

The SQL analysis found the highest observed churn rate among customers paying by mailed check, followed by bank withdrawal and credit card. These differences may reflect other customer characteristics and should be investigated before recommending changes.

## 💡 Business Recommendations

| Opportunity | Recommended Action |
|---|---|
| 📄 Contract retention | Investigate why month-to-month customers leave and evaluate suitable retention offers. |
| 💰 Pricing and value | Review service packages, monthly charges, and competitor pricing. |
| 🗣️ Customer support | Investigate recurring complaints and improve support interactions where needed. |
| 🏆 Competitive positioning | Evaluate device availability, plan features, and competitor offers. |
| 💳 Payment experience | Examine billing concerns and customer profiles across payment methods. |

These recommendations are proposed actions based on observed patterns. Their effectiveness would need to be measured after implementation.

## 📂 Repository Structure

```text
customer-churn-analysis/
├── dashboard/
│   └── customer-churn-analysis.pbix
├── data/
│   └── README.md
├── documentation/
│   ├── business-requirements.md
│   └── findings-and-recommendations.md
├── screenshots/
│   ├── overview.png
│   ├── churn-drivers.png
│   └── customer-segments.png
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_churn_analysis.sql
│   ├── 03_churn_drivers.sql
│   └── 04_customer_segments.sql
└── README.md
```

*Replace the Power BI filename in the example above with your actual filename if it differs.*

## 📚 Project Documentation

- 📋 [Business Requirements Document](documentation/business-requirements.md) — business background, problem statement, objectives, scope, and requirements.
- 💡 [Findings & Recommendations](documentation/findings-and-recommendations.md) — detailed analytical results, interpretations, and suggested business actions.
- 🗄️ [Dataset Documentation](data/README.md) — dataset overview, categories, and source attribution.
- 💻 [SQL Scripts](sql/) — queries used for data exploration and analysis.

## ⚠️ Limitations

- The contract churn rates from Excel and SQL require reconciliation.
- Observed relationships do not establish causation.
- Recommendations have not been tested through actual retention campaigns.
- The analysis describes historical patterns and does not predict individual customer churn.

## 🏁 Conclusion

This project demonstrates how Excel, SQL, and Power BI can be used together to investigate a business problem, analyze customer behaviour, communicate findings, and develop data-driven recommendations.

The key takeaway is that **measuring churn is only the starting point**. Understanding customer feedback, validating analytical results, and investigating the patterns behind customer departures are essential steps toward making better retention decisions.

---

*Customer Churn Analysis | Data Analytics Portfolio Project*  
*Tools: Microsoft Excel · MySQL · Microsoft Power BI*
