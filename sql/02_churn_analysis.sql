USE customer_churn;

-- Count customers by status
SELECT
    Customer_Status,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY Customer_Status
ORDER BY total_customers DESC;

-- Overall churn rate, excluding Joined customers
SELECT
    COUNT(*) AS total_records,
    SUM(Customer_Status = 'Stayed') AS stayed_customers,
    SUM(Customer_Status = 'Churned') AS churned_customers,
    SUM(Customer_Status = 'Joined') AS joined_customers,
    ROUND(
        100.0 * SUM(Customer_Status = 'Churned') /
        SUM(Customer_Status IN ('Stayed', 'Churned')),
        2
    ) AS churn_rate_percentage
FROM customer_churn;

-- Churn rate by contract type
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(Customer_Status = 'Churned') AS churned_customers,
    ROUND(
        100.0 * SUM(Customer_Status = 'Churned') /
        SUM(Customer_Status IN ('Stayed', 'Churned')),
        2
    ) AS churn_rate_percentage
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned')
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;

-- Customer counts by contract and status
SELECT
    Contract,
    Customer_Status,
    COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Contract, Customer_Status
ORDER BY Contract, Customer_Status;

-- Average monthly charge by customer status
SELECT
    Customer_Status,
    COUNT(*) AS total_customers,
    ROUND(AVG(Monthly_Charge), 2) AS average_monthly_charge
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned')
GROUP BY Customer_Status;

-- Exploratory analysis: churn rate by tenure group
SELECT
    CASE
        WHEN Tenure_in_Months <= 6 THEN '0-6 Months'
        WHEN Tenure_in_Months <= 12 THEN '7-12 Months'
        WHEN Tenure_in_Months <= 24 THEN '13-24 Months'
        WHEN Tenure_in_Months <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(Customer_Status = 'Churned') AS churned_customers,
    ROUND(
        100.0 * SUM(Customer_Status = 'Churned') / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned')
GROUP BY tenure_group
ORDER BY MIN(Tenure_in_Months);

-- Exploratory analysis: verify the tenure range
SELECT
    CASE
        WHEN Tenure_in_Months <= 6 THEN '0-6 Months'
        WHEN Tenure_in_Months <= 12 THEN '7-12 Months'
        WHEN Tenure_in_Months <= 24 THEN '13-24 Months'
        ELSE '25-36 Months'
    END AS tenure_group,
    COUNT(*) AS total_customers
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned')
GROUP BY tenure_group
ORDER BY MIN(Tenure_in_Months);
