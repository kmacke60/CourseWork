## Read in the data

NEI <- readRDS("summarySCC_PM25.rds")

# Question 1  Have total emissions from PM2.5 decreased in the US from 99 to 08?  Using base plotting system make a 
# plot showing the TOTAL PM2.5 emission from all sources for each of the years 99, 02, 05, 08.

# Calculate total emissions for the US for each year

pm25sum <- aggregate(NEI$Emission, by = list(NEI$year),FUN = sum)

# Plot the results
png("plot1.png")
plot(pm25sum$Group.1, pm25sum$x, ylab = "Total Emissions", xlab = "Year")
dev.off()
