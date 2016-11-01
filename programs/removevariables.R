rm(list=ls())
?rm
remove(list=ls())
rm(list=lsf.str())
#清除除了该函数的变量
rm(list = setdiff(ls(), lsf.str()))