setwd("F:\\F driver\\R Quant")
library(quantmod)
getSymbols("QQQ")
head(QQQ)
View(QQQ)
?getSymbols
getSymbols("SS")
View(SS)
