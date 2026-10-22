CREATE DATABASE customer_churn;
USE customer_churn;

-- Preview the dataset
SELECT *
FROM customer_churn
LIMIT 10;

-- Count total records
SELECT COUNT(*) AS total_records
FROM customer_churn;

-- Inspect table structure
DESCRIBE customer_churn;

-- Rename the imported Customer_ID column
ALTER TABLE customer_churn
RENAME COLUMN `ï»¿Customer_ID` TO Customer_ID;

-- Verify the renamed column
DESCRIBE customer_churn;

-- Check missing values in important columns
SELECT
    COUNT(*) AS total_records,
    SUM(Customer_ID IS NULL) AS missing_customer_ids,
    SUM(Monthly_Charge IS NULL) AS missing_monthly_charges,
    SUM(Contract IS NULL) AS missing_contracts,
    SUM(Customer_Status IS NULL) AS missing_customer_status
FROM customer_churn;

-- Check for duplicate customer IDs
SELECT
    Customer_ID,
    COUNT(*) AS record_count
FROM customer_churn
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

-- Inspect minimum and maximum tenure
SELECT
    MIN(Tenure_in_Months) AS minimum_tenure,
    MAX(Tenure_in_Months) AS maximum_tenure,
    COUNT(*) AS total_records
FROM customer_churn
WHERE Customer_Status IN ('Stayed', 'Churned');
