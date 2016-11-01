library(xlsx)
install.packages("rJava")


help(pdshare)
??pdshare
data(is_reliance)
head(is_reliance)      ## Two columns with data on spot and futures prices
ln_reliance <- log(is_reliance[,-1])  ## removes the first column of datetime
##  and takes log of the prices
pdshare(ln_reliance, lag.max=120)  
pdshare(ln_reliance, override.lags=60)	

install.packages("ifrogs", repos="http://R-Forge.R-project.org")
install.packages("ifrogs", repos="http://R-Forge.R-project.org")
#install package from forge
library(githubinstall)
githubinstall("ifrogs")
install.packages("testthat")
install.packages("vars")
install.packages("fOptions")

library(ifrogs)
help(pdshare)
data(is_reliance)
head(is_reliance)
ln_reliance <- log(is_reliance[,-1])
pdshare(ln_reliance, lag.max=120)
install.packages("StockChina")
install.packages("rstatscn")
help(StockChina)
??StockChina
install.packages("Quandl")
library(Quandl)
mydata = Quandl("SHFE/AUV2013")
View(mydata)
install.packages("probsvm")
install.packages("SML")
install.packages("kernlab")
install.packages("mlr")
install.packages("EMbC")
install.packages("cpca")
install.packages("ica")
install.packages("icapca")
install.packages("irlba")
install.packages("neural")
install.packages("neuralnet")
install.packages("NeuralNetTools")
install.packages("learNN")
install.packages("learnstats")
help(package="learnstats")
library(learnstats)
prob()
q
s_tdist()
library(learNN)
help(package="learNN")
learn_bp(1)
?learn_bp
# create data
X = matrix(c(0,0,1,
             0,1,1,
             1,0,1,
             1,1,1), nrow=4, byrow=TRUE)

y = matrix(c(0,
             1,
             1,
             0),
           nrow=4)

# run full function
learn_bp(X, y)

install.packages("vrtest")
