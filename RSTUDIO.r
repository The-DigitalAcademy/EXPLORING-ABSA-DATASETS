#install.packages("DBI")
#install.packages("RPostgres")
#install.packages("ggplot2")
library(ggplot2)
library(DBI)
library(RPostgres)

# Replace the placeholders with your actual database credentials
con <- dbConnect(
  RPostgres::Postgres(),
  dbname = "absadatabase",
  host = "localhost",       # e.g., "localhost" or an IP address
  port = 5432,              # Default PostgreSQL port
  user = "postgres",
  password = ""
)

#--------------------Write an SQL query to fetch data from a table
query <- "SELECT * from transactiondata"

# Execute the query and store the result in a dataframe
transactiondata <- dbGetQuery(con, query)

# View the imported data
#print(trasact)
# Extract unique transaction types
transaction_types <- unique(transactiondata$transaction_description)

# Print all transaction types
print(transaction_types)


dt.summary <- summary(transactiondata$transaction_description)
print(dt.summary)

