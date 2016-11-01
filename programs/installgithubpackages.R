install.packages("dplyr")
install.packages("devtools")
library(devtools)
install_github('sinhrks4/dplyr')
install.packages('githubinstall')
library(githubinstall)
githubinstall('AnomalyDetection')
library(AnomalyDetection)
install.packages('yaml')
#¡®colorspace¡¯, ¡®munsell¡¯, ¡®plyr¡¯, ¡®reshape2¡¯, ¡®scales¡¯, ¡®ggplot2¡¯, ¡®lubridate¡¯
#'evaluate', 'formatR', 'highr', 'markdown', 'yaml'
githubinstall('ggfortify')
githubinstall("cats")
help(package = "ggfortify")

yihuiverse <- gh_list_packages(username = "yihui")
githubinstall(yihuiverse)
head(yihuiverse)
repos <- with(yihuiverse, paste(username, package_name, sep="/"))
githubinstall(repos) 
repos

gh_search_packages('lasso')
gh_search_packages("calculus")
install.packages("mosaic")
library(mosaic)
?deriv
edit(deriv)
gh_show_source("mutate", "dplyr")
gh_update_package_list()
gh_suggest("AnomalyDetection")
gh_suggest_username('hadly')

gh_update_package_list()

install.packages("SciencesPo")
help(package = "SciencesPo")


gh_quant <- gh_search_packages('quant')
View(gh_quant)
githubinstall('quantkit')
githubinstall('QuantR')
githubinstall('qss-swirl')
#'xts', 'zoo', 'TTR''XML', 'qmao', 'quantmod'
install.packages("NMF")
install.packages("quantmod")

update.packages()

install.packages("curl")
help(package="xlsx")
