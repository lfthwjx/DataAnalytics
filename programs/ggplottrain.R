library(ggplot2)
data("diamonds")
p <- ggplot(data = diamonds, mapping = aes(x = carat, y = price, color = cut))
summary(p)
p
p + layer(geom = "point", stat = "identity", position = "identity")
#p + geom_point()


p <- ggplot(data = diamonds, mapping = aes(x = carat))
summary(p)
p
p2 <- p + layer(geom = "bar",stat = "bin")
summary(p2)

p<-ggplot(data=mpg,mapping = aes(x=cty,y=hwy))
p+geom_point()
summary(p)
summary(p+geom_point())

p<-ggplot(data=mpg,aes(x=cty,y=hwy),colours = factor(mpg$year))
p+geom_point()
p+geom_point()+stat_smooth()
factor(mpg$year)
