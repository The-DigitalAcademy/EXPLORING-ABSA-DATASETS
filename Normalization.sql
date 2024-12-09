--Since the transaction dataset did not have a primary key, we needed to perform some normalization
--to ensure that no transaction was duplicated
--Normalization
SELECT 
    TRANSACTION_DESCRIPTION, CUSTOMER_IDENTIFIER, RECORD_DATE,	ACCOUNT_TYPE_CODE,
    ACCOUNT_BALANCE,AMT,	EVENT_NUMBER, PRODUCT_CODE,CHANNEL,ACCOUNT_NUMBER,	TRANSACTION_REFERENCE,
    COUNT(*) AS duplicate_count
FROM transactiondata
GROUP BY      TRANSACTION_DESCRIPTION, CUSTOMER_IDENTIFIER, RECORD_DATE,	ACCOUNT_TYPE_CODE,
    ACCOUNT_BALANCE,AMT,	EVENT_NUMBER, PRODUCT_CODE,CHANNEL,ACCOUNT_NUMBER,	TRANSACTION_REFERENCE
HAVING COUNT(*) > 1
;

--Desciptive Analysis
--run some basic queries to get a sense of how the data is organized, 
--how the values are distributed. I am trying to understand what I’m dealing with.

