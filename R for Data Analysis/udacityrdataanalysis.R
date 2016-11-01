library(ggplot2)
setwd("C:\\UM\\R\\R mastering data analysis\\R for Data Analysis")
getwd()
list.files()
pf<-read.csv("pseudo_facebook.tsv",sep = '\t')
View(pf)
qplot(x = dob_day,data=pf)+
  scale_x_continuous(breaks = 1:31)
ggplot(data = pf, aes(x = dob_day)) + 
  geom_histogram(binwidth = 1) + 
  scale_x_continuous(breaks = 1:31) + 
  facet_wrap(~dob_month)

# ggplot(data = pf, aes(x = dob_day)) + 
#   geom_histogram(binwidth = 1) + 
#   scale_x_continuous(breaks = 1:31) + 
#   facet_grid(dob_year~dob_month)