--1.customer
--primary keys:customer_identifeir
--foreign key:income_group_code





--2.transaction
--primary key:transaction ID
--foreign key:customer_identifier
--

--3.income_group
--primary key:income_group_code
--

--4.empoyment_status
--primary_key: employment_status_code

-- ALTER TABLE customer
-- ADD FOREIGN KEY (income_group_code) REFERENCES income_group(income_group_code);

-- ALTER TABLE transactiondata
-- ADD FOREIGN KEY (customer_identifier) REFERENCES customer(customer_identifier);

--For transactions categorized as DC_Unpaid, will customers be able to settle their outstanding balances based on their account_balance? Additionally, to which income group 
--do these customers belong?


--SELECT * FROM dc_unpaid_owed;









































































 