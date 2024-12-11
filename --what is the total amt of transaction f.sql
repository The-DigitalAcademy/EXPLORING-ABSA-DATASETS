--what is the total amt of transaction for each channel
SELECT channel, sum(amt) from transactiondata
GROUP BY channel
ORDER BY sum(amt);