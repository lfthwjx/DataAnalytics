install.packages("installr")
# installing/loading the package:
if(!require(installr)) {
  install.packages("installr"); require(installr)} #load / install+load installr

# using the package:
library(installr)
updateR() 
# this will start the updating process of your R installation.  It will check for newer versions, and if one is available, will guide you through the decisions you'd need to make.
version
packageStatus()
installed.packages()
library(sentiment)
