--Which date did we have less transaction recorded
SELECT 
    RECORD_DATE, 
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count
LIMIT 10;

--Date with the lowest transaction recorded?
SELECT 
    RECORD_DATE, 
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count
LIMIT 1;