install.packages("dplyr")
library(dplyr)

summary_pm25 <- readRDS("summarySCC_PM25.rds")
source_classification <- readRDS("Source_Classification_Code.rds")

year_total <- summary_pm25 %>% group_by(year) %>% summarise(total = sum(Emissions))
barplot(year_total$total/10^6, names = year_total$year, xlab = "Year", ylab = "Total Emissions (10^6 tons)", main = "PM2.5 Emissions in US by year")
dev.copy(png,filename="plot1.png", height=480, width=480)
dev.off()

