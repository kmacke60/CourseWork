if(!file.exists("C:/Users/km40780/Desktop/EDA")) {
        dir.create("C:/Users/km40780/Desktop/EDA")
}
setwd("C:/Users/km40780/Desktop/EDA")
library(plyr)
bike <- read.csv("Bike_Lanes.csv",header=TRUE)
str(bike)