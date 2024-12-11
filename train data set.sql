--train data set
CREATE table traindata(
    train_id SERIAL PRIMARY KEY ,
    CUSTOMER_IDENTIFIER	 VARCHAR(225),
    RECORD_DATE VARCHAR(225),
    DECLARED_NET_INCOME FLOAT
);

ALTER TABLE traindata
ADD FOREIGN KEY (customer_identifier) REFERENCES customer(customer_identifier);
