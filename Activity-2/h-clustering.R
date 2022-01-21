library(factoextra)
#load data
library(readr)
heart <- read_csv("./heart.csv")
#scale data
heart_scale <- scale(heart[1:13])
#View(heart_scale)
#distance
heart_dist <- dist(heart_scale)
#View(heart_dist)
#hierarchical clustering algorithm
hc.out <- hclust(heart_dist, method = "complete")
plot(hc.out)