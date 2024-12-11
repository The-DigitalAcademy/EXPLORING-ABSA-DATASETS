--Most Channel Used
SELECT count(channel), channel FROM 
transactiondata
GROUP BY channel
ORDER BY count(channel) DESC
;