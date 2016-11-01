install.packages("maps")

library(stringr)
library(XML)
library(maps)

df.orig <- data.frame(vars = rep(LETTERS[1:5], 2), obs1 = c(1:10), obs2 = c(11:20))
df.orig
df.agg <- aggregate(obs1 ~ vars, df.orig, max)
df.agg

df.max <- merge(df.agg, df.orig)
df.max

st1 <- state.x77[ sample(1:50), ]
st1
st2 <- as.matrix( USArrests )[ sample(1:50), ]
st2
tmp1 <- match(rownames(st1), rownames(st2) )
tmp1

x<-factor(c(round(rnorm(10),2),"A","B",NA))
> x
[1] 1.61  1.12  1.26  0.09  -0.13 0.16  -0.03 -0.1  0.09  -0.47 
[11] A     B    
Levels: -0.03 0.09 -0.1 -0.13 0.16 -0.47 1.12 1.26 1.61 A B
> as.numeric(x)
[1]  9  7  8  2  4  5  1  3  2  6 10 11 NA
> as.numeric(levels(x)[x])
[1]  1.61  1.12  1.26  0.09 -0.13  0.16 -0.03 -0.10  0.09 -0.47    
[11]   NA    NA   NA