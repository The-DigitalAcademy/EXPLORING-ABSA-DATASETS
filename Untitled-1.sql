
SELECT
 MIN(record_date) AS begin_2021, MAX(record_date) as closing_date_2021
FROM 
transactiondata
where record_date BETWEEN '2021-07-01 00:00:00' AND '2021-12-31 00:00:00'
;
