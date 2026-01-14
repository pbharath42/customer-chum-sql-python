
SELECT TOP 10 *
FROM customers;

SELECT
    churn,
    COUNT(*) AS customer_count
FROM customers
GROUP BY churn;

SELECT
    churn,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_percentage
FROM customers
GROUP BY churn;

SELECT
    contract_type,
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY contract_type, churn
ORDER BY contract_type;

SELECT
    churn,
    AVG(tenure_months) AS avg_tenure
FROM customers
GROUP BY churn;

SELECT TOP 10 * FROM customers;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customers';

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT 
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY churn;

SELECT
    contract_type,
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY contract_type, churn
ORDER BY contract_type;

SELECT
    churn,
    AVG(tenure_months) AS avg_tenure
FROM customers
GROUP BY churn;

SELECT
    churn,
    AVG(monthly_charge) AS avg_monthly_charge
FROM customers
GROUP BY churn;

SELECT
    churn,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers) AS churn_percentage
FROM customers
GROUP BY churn;

SELECT
    contract_type,
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY contract_type, churn
ORDER BY contract_type;

SELECT
    internet_service,
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY internet_service, churn
ORDER BY internet_service;

SELECT
    CASE
        WHEN tenure_months < 12 THEN '0-1 year'
        WHEN tenure_months BETWEEN 12 AND 24 THEN '1-2 years'
        ELSE '2+ years'
    END AS tenure_group,
    churn,
    COUNT(*) AS customers
FROM customers
GROUP BY
    CASE
        WHEN tenure_months < 12 THEN '0-1 year'
        WHEN tenure_months BETWEEN 12 AND 24 THEN '1-2 years'
        ELSE '2+ years'
    END,
    churn
ORDER BY tenure_group;





































