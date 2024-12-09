--Customer with the most highest number of accounts
SELECT customer_identifier,number_of_accounts
FROM customer
GROUP BY customer_identifier, number_of_accounts
ORDER BY number_of_accounts DESC
LIMIT 10;