library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)
library(readr)
#load data
heart <- read_csv("heart.csv")
summary(heart)
plot(heart)