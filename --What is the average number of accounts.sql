--What is the average number of accounts per customer?
SELECT customer_identifier, count(account_number) from transactiondata
GROUP BY customer_identifier
ORDER BY count(account_number);

--Customer with more one account?
SELECT customer_identifier, count(account_number) from transactiondata
GROUP BY customer_identifier
HAVING count(account_number)>1
ORDER BY count(account_number) DESC;

