--Which date did we have most transaction recorded
SELECT 
    RECORD_DATE, 
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count DESC
LIMIT 10;