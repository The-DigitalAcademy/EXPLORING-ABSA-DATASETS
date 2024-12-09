--Descriptive Statistics
--Customer Insights
--Find customers with the most transactions and their total transaction amounts

SELECT 
    CUSTOMER_IDENTIFIER,
    COUNT(*) AS transaction_count,
    SUM(AMT) AS total_transaction_amount
FROM transactiondata
GROUP BY CUSTOMER_IDENTIFIER
ORDER BY total_transaction_amount DESC
LIMIT 10; -- Top 10 customers
