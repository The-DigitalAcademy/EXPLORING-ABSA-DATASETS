--1. Which date did we have most transaction recorded
SELECT 
    record_date, 
    count(RECORD_DATE)
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY count(record_date) DESC
LIMIT 10;

--2. Date with the highest transaction recorded and total amount ?
SELECT 
    RECORD_DATE, sum(amt),
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count DESC
LIMIT 10;

--3. Which date did we have less transaction recorded
SELECT 
    RECORD_DATE, 
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count
LIMIT 10;

--4. Date with the lowest transaction recorded?
SELECT 
    RECORD_DATE, 
    COUNT(*) AS transaction_count
FROM transactiondata
GROUP BY RECORD_DATE
ORDER BY transaction_count
LIMIT 1;

--5. Most Channel Used
SELECT count(channel), channel FROM 
transactiondata
GROUP BY channel
ORDER BY count(channel) DESC
;

--6. Which income_group  has the most customers
SELECT income_group_code, count(customer_identifier) AS customers FROM customer
GROUP BY income_group_code
ORDER BY customers DESC;

--7. What is the total amt of transaction for each channel
SELECT channel, sum(amt) from transactiondata
GROUP BY channel
ORDER BY sum(amt);

--8. What is the average number of accounts per customer?
SELECT customer_identifier, count(account_number) from transactiondata
GROUP BY customer_identifier
ORDER BY count(account_number);

--9. Customer with more one account?
-- Top 10 customers
SELECT customer_identifier, count(account_number) from transactiondata
GROUP BY customer_identifier
HAVING count(account_number)>1
ORDER BY count(account_number) DESC
LIMIT 10;


