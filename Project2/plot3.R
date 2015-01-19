## Read in the data

NEI <- readRDS("summarySCC_PM25.rds")

# Question 2  Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 
# to 2008? Use the base plotting system to make a plot answering this question.

# Copy the data for Baltimore into a dataframe "Balt"

Balt <- NEI[grepl("24510",NEI$fips),]

# Calculate total emissions for Baltimore for each year

pm25sum_Baltimore <- aggregate(Balt$Emission, by = list(Balt$year),FUN = sum)

# Plot the results
png("plot2.png")
plot(pm25sum_Baltimore$Group.1, pm25sum_Baltimore$x, ylab = "Total Emissions, Baltimore", xlab = "Year")
dev.off()
