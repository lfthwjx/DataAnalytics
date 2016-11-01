RSiteSearch("{value at rist}")

install.packages("sensitivity")
install.packages("FME")
install.packages("pse")
install.packages("mlxR")
mm = matrix(as.character(seq(1,30, 1)), nrow=3)
mm 
sapply(mm[,1], as.numeric)
apply(mm, 1,as.numeric)
mm <- apply(mm,2,as.numeric) 
mm

install.packages("bayesAB")
library(swirl)
swirl()
install_course_zip("C:\\UM\\R\\Rroad\\projects\\swirl_courses-master.zip",multi = TRUE, which_course = "Exploratory_Data_Analysis")


plot(jitter(child,4) ~ parent,galton)

install.packages("h2o")
regrline<-lm(child~parent,galton)
abline(regrline,lwd=3,col='red')
summary(regrline)
fit <- lm(child ~ parent, galton)
summary(fit)
mean(fit$residuals)
cov(fit$residuals, galton$parent)
ols.ic <- fit$coef[1]
ols.slope<-fit$coef[2]

#Here are the vectors of variations or tweaks
sltweak <- c(.01, .02, .03, -.01, -.02, -.03) #one for the slope
ictweak <- c(.1, .2, .3, -.1, -.2, -.3)  #one for the intercept
lhs <- numeric()
rhs <- numeric()
#left side of eqn is the sum of squares of residuals of the tweaked regression line
for (n in 1:6) lhs[n] <- sqe(ols.slope+sltweak[n],ols.ic+ictweak[n])
#right side of eqn is the sum of squares of original residuals + sum of squares of two tweaks
for (n in 1:6) rhs[n] <- sqe(ols.slope,ols.ic) + sum(est(sltweak[n],ictweak[n])^2)

all.equal(lhs,rhs)
varChild<-var(galton$child)
varRes<-var(fit$residuals)
varEst<-var(est(ols.slope,ols.ic))
all.equal(varChild,varEst+varRes)

efit <- lm(accel ~ mag+dist, attenu)
mean(efit$residuals)
cov(efit$residuals,attenu$mag)
cov(efit$residuals,attenu$dist)

install.packages("slidify")

#library(slidify)
setwd("C:\\UM\\R\\Rroad\\projects\\courses-master\\01_DataScientistToolbox\\01_01_seriesMotivation")
slidify('index.Rmd')
library(githubinstall)
githubinstall("slidify")


myPlot <- function(beta){
  y <- galton$child - mean(galton$child)
  x <- galton$parent - mean(galton$parent)
  freqData <- as.data.frame(table(x, y))
  names(freqData) <- c("child", "parent", "freq")
  plot(
    as.numeric(as.vector(freqData$parent)), 
    as.numeric(as.vector(freqData$child)),
    pch = 21, col = "black", bg = "lightblue",
    cex = .15 * freqData$freq, 
    xlab = "parent", 
    ylab = "child"
  )
  abline(0, beta, lwd = 3)
  points(0, 0, cex = 2, pch = 19)
  mse <- mean( (y - beta * x)^2 )
  title(paste("beta = ", beta, "mse = ", round(mse, 3)))
}

library(manipulate)
manipulate(myPlot(beta), beta = slider(0.4, .8, step = 0.02))

if(length(grep("ab","aacd"))>0) print("found") else print("Not found")
if(length(grep("ab","abcd"))>0) print("found") else print("Not found")

grepl("ab","sdfabsdf")
