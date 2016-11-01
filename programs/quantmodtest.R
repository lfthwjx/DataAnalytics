x<-rep(c(2,3,5),times=2,each=4)
y<-seq(from=1,to=10,length.out = 10, along.with = c(1:10))
installed.packages()
library(quantmod)
v<-c(1:3)
str(v)
#上证指数
getSymbols("^SSEC")
getSymbols("000001.ss")
getSymbols("000002.ss")
#上证A股指数
setSymbolLookup(A.Share.index=list(name="000002.ss",src="google"))
getSymbols("A.Share.index")
#上证B股指数
setSymbolLookup(B.Share.index=list(name="000003.ss",src="yahoo"))
getSymbols("B.Share.index")
getSymbols("000004.ss")
getSymbols("000300.ss")

performace<-c("bad","good","excellent","good","bad","excellent")
f1<-factor(performace)
level_performace<-levels(f1)
mode(f1)
levels(f1)
f2<-factor(performace,labels="a")
f2
f3<-factor(performace,levels=c("bad","good","excellent"),ordered=TRUE)
f3
f4<-factor(performace,exclude="bad")
f4
f1[6]
getFinancials('CHL')
viewFin(CHL.f)
name<-c("Jane","Bob","Elena","Lily","Max")
English<-c(84,86,78,90,88)
Math<-c(80,85,90,87,85)
Art<-c(78,80,80,85,86)
Score<-data.frame(name,English,Math,Art)
class(Score$name)
str(Score)

v5<-c(2:8)
v5
v6<-c("aa","bb","cc")
v6
m6<-matrix(c(1:9),nrow=3)
m6
f2<-factor(c("high","low","low","high"))
f2
mylist<-list(v5,v6,m6,f2)
mylist

list2<-list(num=v5,cha=v6,matrix=m6,factor=f2)
list2

list2[[1]]
list2[[3]]
list2[["matrix"]]
list2$factor
ls()

View(Art)
library(Ecdat)
data(Capm)
head(Capm)
tail(Capm)
summary(Capm)

getSymbols('BABA')
barplot(BABA[,4])

installed.packages("Hmisc")
install.packages("Hmisc")
library("Hmisc")
installed.packages()
help("sas.get")

setwd("./data")
a<-read.xlsx('F:\\F driver\\数据分析 QUANT\\量化投资 R\\量化投资 以R语言为工具\\R Quant\\data\\ie_data.xls',sheetIndex=3,header=T,startRow=8)
View(a)
head(a)

newdata=a[a$Date>=2000.1&a$Date<=2014.12,]
which(a$Date==2000.1)
which(a$Date==2014.1)
newdata=a[1558:1726,]

library("RODBC")
conn<-odbcConnectAccess2007(access.file="F:\\F driver\\数据分析 QUANT\\量化投资 R\\量化投资 以R语言为工具\\R Quant\\Problem_Data\\Stock.accdb",uid="test",pwd="test")
stkcd<-c()
for(i in c("J66","J67","J68","J69")){stkcd.query<-paste("SELECT Stkcd FROM Company WHERE Nninded=",i)
stkcd.i<-sqlQuery(conn,stkcd.query)
stkcd<-c(stkcd,stkcd.i)}
for(stk.cd.i in stkcd){query<-paste("SELECT Trddt,Opnprc,Hiprc,Loprc,Clsprc,Adjprcwd FROM Stock WHERE Stkcd=",stk.cd.i)
stk.i=sqlQuery(conn,stkcd.query)
write.csv(stk.i,file=stk.cd.i)}

install.packages("randomForest")

help("attr")

y<-c(1,2,4)
y1<-y-1

first<-matrix(1:12,3)
second<-matrix(1:12,3)
rbind(first,second)

library(Ecdat)
data(Accident)
View(Accident)
table(Accident$constr)
table(Accident$type,Accident$constr)
acc_table<-table(Accident$type,Accident$constr,Accident$operate)
head(as.data.frame(acc_table))
