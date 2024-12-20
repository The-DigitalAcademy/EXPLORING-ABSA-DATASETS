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

#-------------------Write an SQL query to fetch data from a table
query.asset <- "SELECT * from asset_21_22"

asset_21_22 <- dbGetQuery(con, query.asset)
asset.summary <- summary(asset_21_22)
print(asset.summary)