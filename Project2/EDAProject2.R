if(!file.exists("C:/Users/km40780/Desktop/EDA/Project2")) {
        dir.create("C:/Users/km40780/Desktop/EDA/Project2")
}
setwd("C:/Users/km40780/Desktop/EDA/Project2")
library(plyr)
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")
pm25means <- tapply(NEI$Emissions,NEI$year,mean)

hist(pm25means)
Year <- c(1999, 2002, 2005, 2008)
Balt <- NEI[grepl("24510",NEI$fips),]
Baltmeans <- tapply(Balt$Emission,Balt$year,mean)
plot(Baltmeans)
Spltype <- split(NEI, NEI$type)
pointmeans <- tapply(Spltype[1,Spltype$year],mean)
head(Spltype)
# Question 1  Have total emissions from PM2.5 decreased in the US from 99 to 08?  Using base plotting system make a 
# plot showing the TOTAL PM2.5 emission from all sources for each of the years 99, 02, 05, 08.

pm25means <- tapply(NEI$Emissions,NEI$year,mean)
hist(pm25means)

# Question 2  Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 
# to 2008? Use the base plotting system to make a plot answering this question.

# Question 3  Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which 
# of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? Which have seen increases 
# in emissions from 1999-2008? Use the ggplot2 plotting system to make a plot answer this question.

# Question 4  Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

#  Question 5  How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City? 

#  Question 6  Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources 
#  in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle 
#  emissions?