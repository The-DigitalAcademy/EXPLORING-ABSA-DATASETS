#install.packages("DBI")
#install.packages("RPostgres")

library(DBI)
library(RPostgres)

# Replace the placeholders with your actual database credentials
con <- dbConnect(
  RPostgres::Postgres(),
  dbname = "absadatabase",
  host = "localhost",       # e.g., "localhost" or an IP address
  port = 5432,              # Default PostgreSQL port
  user = "postgres",
  password = "Will"
)

#--------------------Write an SQL query to fetch data from a table
query <- "SELECT * from external_credit"

# Execute the query and store the result in a dataframe
External_Credit <- dbGetQuery(con, query)

# View the imported data
print(External_Credit)

dt.summary <- summary(External_Credit)
print(dt.summary)

#-------------------Asset
query.asset <- "SELECT * from asset_21_22"

asset_21_22 <- dbGetQuery(con, query.asset)
asset.summary <- summary(asset_21_22)
print(asset.summary)

plot(asset_21_22$transaction_description,asset_21_22$balance, ylim=23000)

#-----------------Digital Payment Cr
query.digital <- "SELECT * from digital_payment_cr"

digital_payment_cr <- dbGetQuery(con, query.digital)
digital.summary <- summary(digital_payment_cr)
print(digital.summary)