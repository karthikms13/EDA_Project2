install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

summary_pm25 <- readRDS("summarySCC_PM25.rds")
source_classification <- readRDS("Source_Classification_Code.rds")

baltimore_pm25 <- summary_pm25 %>% filter(fips == "24510") %>% select(Emissions, year, type)
baltimore_pm25_year <- baltimore_pm25 %>% group_by(year, type) %>% summarise(total = sum(Emissions))

gg <- ggplot(baltimore_pm25_year, aes(x = factor(year), y = total, fill = type)) + geom_bar(stat="identity") + facet_grid(. ~ type) + labs(title = "Baltimore Emissions by year and type", x = "Year", y = "Total Emissions")
plot(gg)
dev.copy(png,filename="plot3.png", height=480, width=480)
dev.off()
