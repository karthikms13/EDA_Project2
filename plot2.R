install.packages("dplyr")
library(dplyr)

summary_pm25 <- readRDS("summarySCC_PM25.rds")
source_classification <- readRDS("Source_Classification_Code.rds")

baltimore_pm25 <- summary_pm25 %>% filter(fips == "24510") %>% select(Emissions, year)
baltimore_pm25_year <- baltimore_pm25 %>% group_by(year) %>% summarise(total = sum(Emissions))
barplot(baltimore_pm25_year$total, names = baltimore_pm25_year$year, xlab = "Year", ylab = "Total Emissions (10^6)", main = "PM2.5 Emissions in Baltimore by year")
dev.copy(png,filename="plot2.png", height=480, width=480)
dev.off()
