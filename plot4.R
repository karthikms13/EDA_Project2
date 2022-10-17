install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

summary_pm25 <- readRDS("summarySCC_PM25.rds")
source_classification <- readRDS("Source_Classification_Code.rds")

coal_sources <- source_classification %>% filter(grepl("Comb.*Coal", EI.Sector)) %>% select(SCC, Data.Category, SCC.Level.Three)
coal_pm25 <- merge(summary_pm25, coal_sources)

coal_pm25_year <- coal_pm25 %>% group_by(year) %>% summarise(total = sum(Emissions))

gg <- ggplot(coal_pm25_year, aes(x = factor(year), y = total/10^6, label = round(total/10^6, 3))) + geom_bar(stat="identity") + labs(title = "Total PM2.5 Emissions From coal combustion sources in US by year", x = "Year", y = "Total PM2.5 Emissions (10^6)") + geom_text(size=3, vjust = -1)
plot(gg)
dev.copy(png,filename="plot4.png")
dev.off()
