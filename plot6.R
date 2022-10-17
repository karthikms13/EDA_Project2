install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

summary_pm25 <- readRDS("summarySCC_PM25.rds")
source_classification <- readRDS("Source_Classification_Code.rds")

motor_sources <- source_classification %>% filter(grepl("Vehicle", SCC.Level.Two)) %>% select(SCC, Data.Category, SCC.Level.Three)

baltimore_la_pm25 <- summary_pm25 %>% filter(fips == "24510" | fips == "06037") %>% select(Emissions, year, type, fips)

baltimore_la_motor <- merge(baltimore_la_pm25, motor_sources)

baltimore_la_motor_year <- baltimore_la_motor %>% group_by(year, fips) %>% summarise(total = sum(Emissions))
gg <- ggplot(baltimore_la_motor_year, aes(x = factor(year), y = total/10^6, label = round(total/10^6, 2), fill = fips)) + geom_bar(stat="identity") + facet_grid( .~ fips) + labs(title = "Baltimore/Los Angeles PM2.5 Emissions by year from motor sources", x = "Year", y = "Motor PM2.5 Emissions(10^6)") + geom_text(size = 3, vjust = -1)
plot(gg)

dev.copy(png,filename="plot6.png")
dev.off()
