install.packages("RMySQL")
library(RMySQL)
install.packages("sqldf")
con <- dbConnect(MySQL(),
                 user="root", password="wanjun",
                 dbname="test", host="localhost")

laogu_it<-dbGetQuery(con,"SELECT * FROM lagou_it")
lagou_data_analysis<-dbSendQuery(con,"SELECT * FROM lagou_data_analysis")
lagou_data_analysis_10<-fetch(lagou_data_analysis,n=10)
huh <- dbHasCompleted(lagou_data_analysis)
dbClearResult(lagou_data_analysis)
dbDisconnect(con)
on.exit(dbDisconnect(con))
dbListTables(con)
dbWriteTable(con,name = "test2",iris)
sql <- sprintf("CREATE TABLE IF NOT EXISTS networks
               (species_id INTEGER, 
                name VARCHAR(100), 
                data_source VARCHAR(100), 
                description VARCHAR(100), 
                created_at DATETIME);")
dbSendQuery(con,sql)
sql <- sprintf("insert into networks
                  (species_id, name, data_source, description, created_at)
               values (%d, '%s', '%s', '%s', NOW());",
               species.id, network.name, data.source, description)
rs <- dbSendQuery(con, sql)