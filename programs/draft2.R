install.packages("googleAnalyticsR")
install.packages("FinancialInstrument", repos="http://R-Forge.R-project.org")
install.packages("blotter", repos="http://R-Forge.R-project.org")
install.packages("quantstrat", repos="http://R-Forge.R-project.org")

library(Hmisc)
mydataframe <- spss.get("mydata.sav", use.value.labels=TRUE)
cummax(c(3:1, 2:0, 4:2))
available.packages()
update.packages()

beer<-scan()
beer

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(x,x)
v <- 2*x + y + 1

library(mlr)
install.packages("plm")
install.packages("SuperLearner")
library(quantmod)
install.packages("tidyr")
install.packages("dplyr")
devtools::install_github("hadley/r4ds")
devtools::install_github("hadley/forcats")

au.file<-'Au'
au.path<-paste0("./",au.file,"/FUT_Fdt.xls",seq='')
#au.path
au<-read.xlsx2(au.path, sheetIndex=1,startRow = 1, colIndex = c(1:16), header=FALSE)

setwd("D:\\UM\\R\\calGARCH\\data\\futures liquidity\\futures volume v2")
list.dirs(getwd(),full.names = FALSE)[-1]

existingDF <- as.data.frame(matrix(seq(20),nrow=5,ncol=4))
r <- 3
newrow <- seq(4)
insertRow <- function(existingDF, newrow, r) {
  existingDF[seq(r+1,nrow(existingDF)+1),] <- existingDF[seq(r,nrow(existingDF)),]
  existingDF[r,] <- newrow
  existingDF
}

existingDF <- rbind(existingDF[1:r,],newrow,existingDF[-(1:r),])

library(microbenchmark)
microbenchmark(
  rbind(existingDF[1:r,],newrow,existingDF[-(1:r),]),
  insertRow(existingDF,newrow,r)
)
# str(quarterly_is)
# View(infoshare)
# print("I love XGY")
# i=1
# fdouyou_quarterly[,1]
# fdouyou_ts<-as.ts(fdouyou_quarterly)
# sdouyou_ts<-as.ts(sdouyou_quarterly)
# View(fdouyou_ts)
# tsp(fdouyou_ts) <- tsp(fdouyou_quarterly)
# tsp(sdouyou_ts) <- tsp(A2)
# add .tsp attribute
# (needed for as.ts.xts to work)
# attr(a1,'.tsp') <- tsp(A1)
# attr(a2,'.tsp') <- tsp(A2)
# View(fdouyou_quarterly)
# l_result <- ifelse(fdouyou_quarterly[,1] == sdouyou_quarterly[,1], fdouyou_quarterly[,1],NA) 
# l_result

#View(fdouyou)
#to.quarterly(fdouyou)

#test=FALSE
#if(test){
#edit(to.quarterly())
#x<-fdouyou
#period<-"quarters"
#k<-1
#cnames <- c("Open", "High", "Low", "Close")
#index_at <- FALSE
#xx <- .Call("toPeriod", x, endpoints(x, period, k), has.Vo(x), 
#            has.Vo(x, which = TRUE), has.Ad(x) && is.OHLC(x), 
#            index_at, cnames, PACKAGE = "xts")
#View(xx)

#endpoints(x, on='quarters', k=1)
#data(sample_matrix)
#endpoints(sample_matrix)
#endpoints(sample_matrix, 'weeks')


#data(is_reliance)
#head(is_reliance)      ## Two columns with data on spot and futures prices
#ln_reliance <- log(is_reliance[,-1])  ## removes the first column of datetime
##  and takes log of the prices
#pdshare(ln_reliance, lag.max=120)  
#pdshare(ln_reliance, override.lags=60)
#}

install.packages("AER")
library(AER)
data("Grunfeld", package = "AER")
library("plm")
gr <- subset(Grunfeld, firm %in% c("General Electric","General Motors", "IBM"))
View(gr)
pgr <- plm.data(gr, index = c("firm", "year"))
View(pgr)
gr_pool <- plm(invest ~ value + capital, data = pgr,model = "pooling")
summary(gr_pool)
gr_fe <- plm(invest ~ value + capital, data = pgr,model = "within")
summary(gr_fe)
fixef(gr_fe)
summary(fixef(gr_fe))
pFtest(gr_fe, gr_pool)


data("Grunfeld", package = "plm")
gi <- plm(inv ~ value + capital, data = Grunfeld, model = "within")
fixef(gi)
summary(fixef(gi))

# extract time effects in a twoways effects model
gi_tw <- plm(inv ~ value + capital, data = Grunfeld,model = "within", effect = "twoways")
summary(gi_tw)
fixef(gi_tw, effect = "time")

# calc. fitted values of
# oneway within model using fixef:
fixefs <- merge(Grunfeld, data.frame(firm = names(fixef(gi)),
                                     fixef = as.numeric(fixef(gi))),
                all.x = TRUE, by = c("firm"))[ , 6]
fitted_by_hand <- fixefs + gi$coefficients["value"] * Grunfeld$value +
  gi$coefficients["capital"] * Grunfeld$capital
fitted_by_hand


library(githubinstall)
gh_install_packages("processx")
