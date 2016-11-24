#' load the RODBC library into your R environment. 
library(RODBC)

#' Connect to an Open Database Connection (ODBC) called sql-2008R2. This should be the same name you assigned in the ODBC Data Source Administrator. 
cn <- odbcConnect("sql-2008R2")

#'  Store a SQL query in a string, run it, and store results in a variable. 
#'  It's very important to note that any quotes in your query will need to be escaped with a backslash as seen below. https://en.wikipedia.org/wiki/Escape_character
#'  This causes R to make those quotes a part of the whole string instead of interpreting them as string enclosures. 
qry_sql_data <- 'SELECT * FROM TableName WHERE name like \'smith\''

#'Run the query and store in variable. 
sql_data <- sqlQuery(cn,paste(qry_sql_data))

#'view the structure of the data that has been returned. 
str(sql_data)
