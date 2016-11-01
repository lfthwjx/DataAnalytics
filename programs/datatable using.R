install.packages("data.table")
library(data.table)
df<-data.frame(a=c('A','B','C','A','A','B'),b=rnorm(6))
dt = data.table(a=c('A','B','C','A','A','B'),b=rnorm(6))
dt
class(df)
class(dt)
data.table
df2<-data.table(df)
class(df2)
dt2<-data.frame(dt)
class(dt2)


setkey(dt,a)
dt
dt["B",]
dt["B",mult="first"]
dt["b"]
dt[,c:=b+2]
dt
dt[,`:=`(c1 = 1:6, c2 = 2:7)]
dt[,c('d1','d2'):=list(1:6,2:7)]
dt
dt[,c1:=NULL]
dt[,c('d1','d2'):=NULL]
dt[,b:=30]
dt[a=='B' & c2>3, b:=100]
dt
dt[,b:=ifelse(a=='B' & c2>3,50,b)]
dt
dt = data.table(a=c('A','B','C','A','A','B'),b=rnorm(6))
dt[,sum(b)]
dt
rnorm(6)
dt[,sum(b),by=a]


student <- data.table(id=1:6,name=c('Dan','Mike','Ann','Yang','Li','Kate'))
score <- data.table(id=1:12,stuId=rep(1:6,2),score=runif(12,60,99),class=c(rep('A',6),rep('B',6)))
score
setkey(score,"stuId")
setkey(student,"id")
student[score,nomatch=NA,mult="all"]

size = ceiling(1e8/26^2)
t0=system.time( df <- data.frame(x=rep(LETTERS,each=26*size),
                                 y=rep(letters,each=size)) )
t0
nrow(df)
LETTERS
object.size(df)
t1=system.time(val1 <- df[df$x=="R" & df$y=="h",])
t1
t0
t1
dt
t3=system.time(dt <- data.table(x=rep(LETTERS,each=26*size),
                                y=rep(letters,each=size)))
t3
nrow(dt)
object.size(dt)
t3=system.time(val2<-dt[x=="R"&y=="h"])
t3
setkey(dt,x,y)
t4=system.time(val3<-dt[list("R","h")])
t4
?setkey
