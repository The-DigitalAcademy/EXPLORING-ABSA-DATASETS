--Channel that is used most to perfrom transaction
SELECT channel, count(channel) as channel_group FROM transactiondata
GROUP BY channel 
ORDER BY channel_group DESC;

--Teller
--Refers to transactions performed at a physical branch by a bank teller or cashier.
--challenges:Slower service compared to automated channels

--System
--Refers to transactions automatically processed by internal systems without direct customer input at the time of the transaction
--Includes recurring payments, batch processing, or backend system-generated transactions.
--Vulnerable to technical glitches or configuration errors.
--May be less transparent to customers if issues arise.

