f = function(x)
  (3*x-(3/8)*x^2)*(7*(1-x/6))^2-(2/7)*x*(7*(1-x/6))^3

a=integrate(f, lower=0, upper=8)
a
options(digits=30)


df
install.packages("RMySQL")

library(nutshell)
install.packages("season")
install.packages("seasonal")

install.packages("x13binary")
install.packages("nutshell")
help(package="car")
data("field.goals")
head(field.goals)
names(field.goals)
stripchart(field.goals[field.goals$play.type=="FG blocked",]$yards, pch=19, method="jitter")
library(lattice)
#library(car)
data(cars)
dotplot(Amount~Year|Food)
data(Amount)

install.packages("RColorBrewer")

library(rgl)
library(RColorBrewer)
t=seq(1, 6, by=.04)
f = function(a, b, c, d, e, f, t) exp(-a*t)*sin(t*b+c)+exp(-d*t)*sin(t*e+f)
v1=runif(6,0,1e-02)
v2=runif(6, 2, 3)
v3=runif(6,-pi/2,pi/2)
open3d()
spheres3d(x=f(v1[1], v2[1], v3[1], v1[4], v2[4], v3[4], t),
          y=f(v1[2], v2[2], v3[2], v1[5], v2[5], v3[5], t),
          z=f(v1[3], v2[3], v3[3], v1[6], v2[6], v3[6], t),
          radius=.3, color=sample(brewer.pal(8, "Dark2"),1))
