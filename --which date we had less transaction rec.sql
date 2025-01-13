--which date we had less transaction recorded
SELECT RECORD_DATE,COUNT(*) AS less_transaction_count
FROM transactiondata
GROUP BY record_date
ORDER BY less_transaction_count
LIMIT 10;