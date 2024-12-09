--We need to know which channel has produced transaction_reference duplicates

SELECT 
    transaction_reference, 
    COUNT(*) AS duplicate_count
FROM 
    transactiondata
WHERE 
    channel = 'atm'  -- Specify the channel you want to analyze
GROUP BY 
    transaction_reference
HAVING 
    COUNT(*) <1
ORDER BY 
    duplicate_count DESC;
