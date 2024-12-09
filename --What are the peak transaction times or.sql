--What are the peak transaction times or dates for specific products, channels, or customer groups?
SELECT 
    transaction_reference, 
    record_date, 
    COUNT(transaction_reference) AS reference_count
FROM 
    transactiondata
GROUP BY 
    transaction_reference, 
    record_date
HAVING 
    COUNT(transaction_reference) > 1
ORDER BY  
    reference_count DESC;

