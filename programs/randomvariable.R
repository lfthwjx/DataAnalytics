n=sample(1:5,size=100,replace=T,prob = c(0.1,0.2,0.3,0.2,0.2))
mode(n)
n
table(n)
table(n)/100

source("randomvariable.R", chdir = T)
getSrcDirectory(function(x) {x})
setwd("F:\\F driver\\数据分析 QUANT\\量化投资 R\\量化投资 以R语言为工具\\R Quant")
hsret300<-read.csv("return300.csv",header = T)
library(car)
densityPlot(hsret300$return)
plot(ecdf(hsret300$return))
install.packages("AER")
library(AER)
data("BondYield")
View(BondYield)
library(Rcmdr)
moodyAAA<-read.table("AAA.txt")
View(moodyAAA)
moodyDate <- moodyAAA$V1
#which(moodyAAA$V1==1995-01-01)
ndate3 <- as.Date(moodyDate, "%Y-%m-%d"); ndate3
lb<-which(ndate3==as.Date("1995-01-01"))
ub<-which(ndate3==as.Date("1995-12-01"))
AAA1995 <-as.numeric(moodyAAA$V2[lb:ub])  
View(AAA1995)

install.packages("magic")
library(magic)
magic_matrix <- magic(4)
magic_matrix

library(Ecdat)
data("Accident")
View(Accident)
table(Accident$constr)
table1<-table(Accident$type,Accident$constr)
table1
addmargins(table1)
addmargins(table1,margin = 1)
prop.table(table1)
ftable(Accident$type,Accident$constr,Accident$operate,row.vars = c(1,3))
head(Accident$type)
mode(Accident$type)

library(reshape2)
test <- data.frame(ID=c(1:5),gender=c('M','F','F','M','F'),
                   age=c(26,23,27,23,24),
                   income=c(3000,2300,2600,2400,3200))
test
melt_test <- melt(test,id.vars = c('ID','gender'))
melt_test
melt_test2 <- melt(test,id.vars=c('ID','gender'),
                   measure.vars='income',variable.name='measurement')
melt_test2
help("dcast")
dcast(melt_test,gender~variable,fun.aggregate = mean)

paste('IF','16',c('01','02','03','04','05','06'),sep = '')

library(AER)
data("HousePrices")
table(HousePrices$bedrooms)
table(HousePrices$bedrooms,HousePrices$bathrooms)
addmargins(table(HousePrices$bedrooms,HousePrices$bathrooms))
prop.table(table(HousePrices$bedrooms,HousePrices$bathrooms))

data("BankWages")
library(reshape2)
newdata <- melt(BankWages,id.vars = c('gender','minority'))
newdata
newdata2 <- melt(BankWages,id.vars = c('gender','education'))
newdata2
dcast(newdata2,gender+education~variable)

letters[1:5]
x<-1:15
y<-factor(rep(letters[1:5],each=3))
View(y)
tapply(x,y,sum)

library(Ecdat)
data("Money")
head(Money)
View(Money)
plot(Money[,1],main = 'Real Money Supply of Canada',xlab='Year',ylab='Real Money Supply')
class(Money)
abline(lm(Money[,1]~time(Money)))

library(AER)
data("mtcars")
barplot(table(mtcars$vs,mtcars$gear),xlab = 'gear',legend.text = c('0','1'),main = 'VS',col=c('red','blue'))

library(vcd)
data("Arthritis")
hist(Arthritis$Age,breaks = 5,main = 'Histogram of Age',xlab = 'Age')

n1=rnorm(100,4,1)
n2=rnorm(100,4,2)
n3=rnorm(100,4,3)
n4=rnorm(100,4,4)
boxplot(cbind(n1,n2,n3,n4),names=1:4,col=1:4,main='Normal Distribution')
legend('topleft',legend=1:4,fill=1:4)
