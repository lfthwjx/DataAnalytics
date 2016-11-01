library(githubinstall)
githubinstall("REmap")
install.packages("Echarts")
install.packages("rjson")
githubinstall("REmap")
githubinstall("recharts")
library("REmap")
city_vec = c("北京","Shanghai","广州")
get_city_coord("Shanghai")
get_geo_position("Shanghai")
get_geo_position(city_vec)
get_geo_position(destination)
set.seed(125) 
origin = rep("Beijing",10) 
destination = c("Shanghai",'Guangzhou','Dalian','Nanning','Suzhou', 'Lasa','Changchun','Baotou','Chongqing','Hefei') 
dat = data.frame(origin,destination) 
out = remap(dat,title = "REmap实例数据",subtitle = "theme:Dark") 
plot(out)

## Method 1 remap(dat,title = "REmap实例数据",subtitle = "theme:Dark") 
## Method 2 out = remap(dat,title = "REmap实例数据",subtitle = "theme:Dark") out 
## Method 3 plot(out)

get_theme(theme = "Dark", lineColor = "Random",  
          backgroundColor = "#1b1b1b", titleColor = "#fff",  
          borderColor = "rgba(100,149,237,1)", 
          regionColor = "#1b1b1b")
## default theme:"Bright" 
set.seed(125) 
out = remap(dat,title = "REmap实例数据",subtitle = "theme:Bright", theme = get_theme("Bright")) 
plot(out)

## set Line color as 'orange' 
set.seed(125) 
out = remap(dat,title = "REmap实例数据",subtitle = "theme:Bright", theme = get_theme("None", lineColor = "orange")) 
plot(out)
## Set Region Color 
out = remap(dat,title = "REmap实例数据",subtitle = "theme:Bright", theme = get_theme("None", lineColor = "orange",                              
backgroundColor = "#FFC1C1",                              
titleColor = "#1b1b1b", regionColor = '#ADD8E6')) 
plot(out)