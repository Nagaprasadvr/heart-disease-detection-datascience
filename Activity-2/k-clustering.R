library(factoextra)
library(readr)
#load data
heart <- read_csv("./heart.csv")
#scale data
heart_scale <- scale(heart[1:13])
#View(heart_scale)
#distance
heart_dist <- dist(heart_scale)
#heart_dist
#calculate number of clusters
(fviz_nbclust(heart_scale, kmeans , method = "wss" ) + 
  labs(subtitle = "Elbow method"))
km.out <- kmeans(heart_scale,centers = 5 ,nstart = 100)
print(km.out)
#results
km.clusters <- km.out$cluster
fig <- fviz_cluster(list(data = heart_scale, cluster = km.clusters))
plot(fig)
