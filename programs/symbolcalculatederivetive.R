NormDensity <- expression(1/sqrt(2 * pi) * exp(-x^2/2))
class(NormDensity)
D(NormDensity, "x")
deriv(NormDensity, "x")
deriv3(NormDensity, "x")
DD <- function(expr, name, order = 1) {
  if (order < 1)
    stop("'order' must be >= 1")
  if (order == 1)
    D(expr, name) else DD(D(expr, name), name, order - 1)}
DD(NormDensity, "x", 3)

DFun <- deriv(NormDensity, "x", function.arg = TRUE)
DFun(1)

Normfun <- function(x) 1/sqrt(2 * pi) * exp(-x^2/2)
Normfun(1)

Normfun <- function(x) 1/sqrt(2 * pi) * exp(-x^2/2)

install.packages("Deriv")
library(Deriv)
Simplify(DD(NormDensity, "x", 3))

body(Normfun)
args(Normfun)
eval({x<-2;x^2})
eval(body(Normfun))
Normfun(2)

Tetrachoric<-function(x,j){
  (-1)^(j-1)/sqrt(factorial(j))*eval(Simplify(DD(NormDensity,"x",j)))
}

Tetrachoric(2,3)
Simplify(D(body(Normfun),"x"))
D(body(Normfun),"x")

install.packages("Ryacas")
suppressPackageStartupMessages(library(Ryacas))
yacas("Solve(x/(1+x) == a, x)")

yacas(expression(Expand((1+x)^3)))
yacas("OdeSolve(y''==4*y)")
yacas("Taylor(x,a,3) Exp(x)")

fun<-expression(100*(x2-x1^2)^2+(1-x1)^2)
D(fun,"x1")
D(fun,"x2")

fr <- function(x) {
  x1 <- x[1]
  x2 <- x[2]
  100 * (x2 - x1 * x1)^2 + (1 - x1)^2
}
grr1 <- function(x) {
  x1 <- x[1]
  x2 <- x[2]
  c(-400 * x1 * (x2 - x1 * x1) - 2 * (1 - x1),
    200 * (x2 - x1 * x1))
}
optim(c(-1.2,1), fr, grr1, method = "BFGS")

grr2<-function(x){
  x1 <- x[1]
  x2 <- x[2]
  c(eval(D(fun,"x1")),eval(D(fun,"x2"))) # 表达式微分
}
optim(c(-1.2,1), fr, grr2, method = "BFGS")

install.packages("numDeriv")
library(numDeriv)
grr3 <- function(x) {
  grad(fr,c(x[1],x[2])) # 函数微分
}
optim(c(-1.2, 1), fr, grr3, method = "BFGS")

library(Deriv)
fr1 <- function(x1,x2) { # 函数形式与上面不同
  100 * (x2 - x1 * x1)^2 + (1 - x1)^2
}

grr2 <- function(x) {
  Deriv(fr1,cache.exp = FALSE)(x[1],x[2]) # 符号微分
}
optim(c(-1.2, 1), fr, grr2, method = "BFGS")