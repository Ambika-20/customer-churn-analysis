USE customer_churn;

-- Churn rate by payment method
SELECT
    Payment_Method,
    COUNT(*) AS total_customers,
    SUM(Customer_Status = 'Churned') AS churned_customers,
    ROUND(
        100.0 * SUM(Customer_Status = 'Churned') / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned')
GROUP BY Payment_Method
ORDER BY churn_rate_percentage DESC;

-- Alternative contract churn calculation
-- Retained from the original exploratory queries
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
GROUP BY Contract
ORDER BY churn_rate_percentage DESC;
