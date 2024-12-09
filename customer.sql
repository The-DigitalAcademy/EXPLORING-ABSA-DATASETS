CREATE TABLE customer(
    CUSTOMER_IDENTIFIER VARCHAR PRIMARY KEY NOT NULL,
    --Customer was found as a primary key on this dataset
    DATE_LAST_UPDATED VARCHAR,
    SEX_CODE BOOLEAN,
    INCOME_GROUP_CODE INT,
    NUMBER_OF_ACCOUNTS INT,
    OCCUPATIONAL_STATUS_CODE INT,
    AGE INT
);