--For transactions categorized DC_Unpaid, were customers able to settle their outstanding balances? 
--Additionally, to which income group do these customers belong, and what are their respective income_group_codes?

SELECT t.account_balance as acc_balance, t.amt as amount,c.number_of_accounts as no_accounts, c.customer_identifier as customer_id 
FROM
  transactiondata t, customer c
WHERE
  amt >0
ORDER BY
  amt;

