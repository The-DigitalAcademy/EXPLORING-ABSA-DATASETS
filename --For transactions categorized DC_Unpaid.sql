--For transactions categorized DC_Unpaid, were customers able to settle their outstanding balances? 
--Additionally, to which income group do these customers belong, and what are their respective income_group_codes?

SELECT t.account_balance as account_balance, t.amt as Amount , c.number_of_accounts as number_of_accounts, c.customer_identifier as customer_id
FROM
  transactiondata t, customer c
WHERE
  amt>0
ORDER BY
  amt DESC;

