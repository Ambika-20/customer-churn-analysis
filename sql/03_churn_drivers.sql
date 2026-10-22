USE customer_churn;

-- Top 10 reported reasons for customer churn
SELECT
    Churn_Reason,
    COUNT(*) AS customers_lost
FROM customer_churn
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Reason
ORDER BY customers_lost DESC
LIMIT 10;
