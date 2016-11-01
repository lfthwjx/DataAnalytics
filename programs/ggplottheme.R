library(ggplot2)
library(artyfarty)

ggplot(iris) +
  aes(x=Sepal.Length, y=Sepal.Width, color=Species) +
  geom_point() +
  scale_colour_manual(values = pal("flatpaleta")) +
  theme_flat() +
  ggtitle("Iris - sepal")

ggplot(iris) +
  aes(x=Sepal.Length, y=Sepal.Width, color=Species) +
  watermark_img("flower.png") +
  geom_point() +
  scale_colour_manual(values = pal("flatpaleta")) +
  theme_flat() +
  ggtitle("Iris - sepal")