# 📊 Customer Churn Analysis
### 🔍 Findings & Business Recommendations

> **From customer data to business decisions.**  
> This report summarizes the key findings from Excel and MySQL analysis and translates them into practical recommendations for improving customer retention.

---

## 📌 Executive Summary

Customer churn can affect recurring revenue, customer relationships, and long-term business growth. This project analyzes **6,418 customer records** to understand churn patterns, examine reported reasons for leaving, and identify areas where retention efforts may be valuable.

### 📈 Key Highlights

| Metric | Finding |
|---|---:|
| 👥 Total customer records | 6,418 |
| 🚪 Churned customers | 1,732 |
| 💚 Customers who stayed | 4,275 |
| 🆕 Newly joined customers | 411 |
| 📉 Overall churn rate | 28.83% |
| 💰 Average monthly charge — churned customers | 73.10 |
| 💚 Average monthly charge — stayed customers | 61.84 |

**Overall churn rate:** 28.83%, calculated as 1,732 churned customers divided by the 1,732 churned plus 4,275 stayed customers. Newly joined customers are excluded.

---

## 📄 1. Contract Type & Customer Churn

### 🔎 Finding

The Excel and SQL analyses both indicate that month-to-month customers have the highest observed churn rate.

| Contract Type | Excel Churn Rate | SQL Churn Rate |
|---|---:|---:|
| Month-to-month | 46.53% | 52.38% |
| One year | 11.04% | 11.23% |
| Two year | 2.73% | 2.77% |

⚠️ **Data validation required:** The Excel and SQL month-to-month rates differ substantially. The calculations must be reconciled before these rates are treated as final. The SQL rates also need consistent denominator checks.

### 💡 Business Interpretation

Customers on month-to-month contracts may have more flexibility to leave than customers committed to longer contracts. However, contract type alone does not explain why they leave.

### 🎯 Business Recommendations

- Investigate the reasons month-to-month customers discontinue their service.
- Evaluate suitable incentives for longer-term contracts.
- Review customer satisfaction, pricing, and competitor offers.
- Compare retention outcomes before and after any changes.

---

## 💰 2. Monthly Charges & Customer Churn

### 🔎 Finding

| Customer Status | Average Monthly Charge |
|---|---:|
| 🚪 Churned | 73.10 |
| 💚 Stayed | 61.84 |
| **Difference** | **11.26** |

Customers who churned had an average monthly charge **11.26 higher** than customers who stayed.

### 💡 Business Interpretation

Higher monthly charges may be associated with customers leaving. Further analysis is needed to determine whether pricing, service packages, customer needs, or perceived value are contributing factors.

### 🎯 Business Recommendations

- Review the service packages used by customers with higher monthly charges.
- Investigate whether customers feel they receive sufficient value for the price.
- Compare competitor pricing and available offers.
- Explore whether specific combinations of services and charges are associated with higher churn.

---

## 🗣️ 3. Reasons for Customer Churn

### 🔎 Finding

The most frequently reported churn reasons include competitor offerings and customer-support experiences.

| Rank | Reported Churn Reason | Customers |
|---:|---|---:|
| 🥇 1 | Competitor had better devices | 289 |
| 🥈 2 | Competitor made a better offer | 274 |
| 🥉 3 | Attitude of support personnel | 208 |
| 4 | Don't know | 124 |
| 5 | Competitor offered more data | 106 |

### 💡 Business Interpretation

Competitor-related reasons dominate the top three reported categories, while support-personnel attitude is another notable concern. These results point to areas the business should investigate rather than proving the underlying causes of churn.

### 🎯 Business Recommendations

- Review device availability and the competitiveness of current plans.
- Evaluate pricing and promotional offers against competitors.
- Investigate customer-support complaints and service interactions.
- Examine the “Don't know” category to understand gaps in feedback collection.

---

## 🗄️ 4. Overall Customer Churn — SQL Analysis

### 🔎 Finding

The dataset contains 6,418 customer records across three customer statuses.

| Customer Status | Count |
|---|---:|
| 🚪 Churned | 1,732 |
| 💚 Stayed | 4,275 |
| 🆕 Joined | 411 |
| **Total** | **6,418** |

Excluding newly joined customers, the calculated churn rate is **28.83%**.

### 💡 Business Interpretation

The churn rate provides a baseline for tracking customer departures. By itself, it does not explain why customers leave or which interventions would be effective.

### 🎯 Business Recommendations

- Track churn rate consistently over time.
- Compare churn across contracts, services, and customer segments.
- Investigate the highest-churn groups before prioritizing retention actions.
- Establish a baseline for evaluating future retention initiatives.

---

## ⏳ 5. Customer Tenure & Churn — SQL Analysis

### 🔎 Finding

Among the tenure groups analyzed, customers with 7–12 months of tenure had the highest observed churn rate.

| Tenure Group | Churn Rate |
|---|---:|
| 0–6 months | 28.04% |
| 7–12 months | 30.27% |
| 13–24 months | 28.25% |
| 25–48 months | 29.01% |

### 💡 Business Interpretation

The differences between these groups are relatively modest. Customers in the 7–12 month group may warrant further investigation, but tenure alone does not establish a strong explanation for churn.

### 🎯 Business Recommendations

- Examine customer feedback during the first year.
- Investigate recurring billing, service-quality, and support concerns.
- Compare tenure with contract type and service usage.
- Validate whether the observed differences persist in further analysis.

---

## 💳 6. Payment Method & Customer Churn — SQL Analysis

### 🔎 Finding

| Payment Method | Observed Churn Rate |
|---|---:|
| Mailed check | 42.86% |
| Bank withdrawal | 36.05% |
| Credit card | 16.16% |

Customers using mailed checks had the highest observed churn rate among the payment methods analyzed.

### 💡 Business Interpretation

Payment method may be associated with differences in churn, but these figures do not establish that a particular payment method causes customers to leave. Other customer characteristics may influence the pattern.

### 🎯 Business Recommendations

- Investigate billing and payment-related customer complaints.
- Compare customer profiles across payment methods.
- Review payment convenience and communication around billing.
- Avoid recommending changes to payment methods until further analysis supports them.

---

## 🧭 7. Key Business Priorities

Based on the current findings, the following areas deserve further investigation.

| Priority | Area | Suggested Action |
|---|---|---|
| 🔴 High | Contract-related churn | Validate contract churn rates and investigate month-to-month customers |
| 🔴 High | Competitor offerings | Review devices, pricing, and competing plans |
| 🟠 Medium | Customer support | Investigate support-related churn feedback |
| 🟠 Medium | Monthly charges | Explore pricing and perceived value |
| 🟡 Further analysis | Payment methods | Investigate customer profiles and billing experiences |
| 🟡 Further analysis | Tenure | Validate whether early-tenure differences are meaningful |

*These priorities reflect the patterns observed in this dataset, not proven causes or guaranteed outcomes.*

---

## ⚠️ 8. Data & Analysis Limitations

- The contract churn rates from Excel and SQL are not yet reconciled.
- Observed associations do not prove causation.
- The reported churn reasons reflect the categories recorded in the dataset.
- The recommendations are proposed actions; their real-world effectiveness has not been tested.
- Further validation is required before using these results to make operational or financial decisions.

---

## ✅ Conclusion

This analysis highlights several areas worth investigating to improve customer retention, including contract-related churn, competitor offerings, customer-support experiences, and monthly charges.

The key business opportunity is to move from simply measuring churn to understanding the customer experiences behind it. Validating the metrics and investigating these patterns can help the business make better-informed retention decisions.

---

*Project tools: Microsoft Excel · MySQL · Microsoft Power BI*  
*Dataset source: [Faisal Khan — Customer Churn Analysis](https://github.com/Faisal-khan28/customer-churn-analysis-sql-python-powerbi)*