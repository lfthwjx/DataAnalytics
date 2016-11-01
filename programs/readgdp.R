library(ifrogs)
library(xlsx)
install.packages("rJava")
gdp_season<-read.xlsx("F:\\F driver\\R Quant\\GDP.xls",sheetIndex=1,startRow =  4, endRow = 101)

head(gdp_season)
View(gdp_season)

?read.xlsx