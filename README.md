# EDA_Project2

This repository contains plots and the corresponding source code to generate the plots for the coursera course "Exploratory Data Analysis"

All the scripts assume that the Source_Classification_Code.rds and the summarySCC_PM25.rds files are in the working directory

For this project, we were asked to answer the following questions by building some exploratory plots from the data provided by the National Emissions Inventory website

## Question 1

### Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

Total PM2.5 emissions in the US have reduced from the year 1999 to 2008. From the years 1999 to 2002 the reduction was 23%. 2002 to 2005 saw a reduction in emissions although it wasn't significant 3%. From 2005 to 2005 saw a significant reduction of 36%.

## Question 2

### Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

Total pm2.5 emissions decreased in Baltimore City during the period from 1999 to 2008, however the decrease wasn't continuous, the PM2.5 emissions took a jump from 2002 to 2005, but fell sharply from 2005 to 2008. 

## Question 3

### Of the four types of sources indicated by the \color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

The nonroad, nonpoint, on-road emissions decreased from 1999 to 2008, whereas the point emissions increased during that period.

## Question 4

### Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

Emissions from coal combustion-related remained steady from the years 1999 to 2005, but fell sharply by 37.8% from 2005 to 2008. 

## Question 5

### How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore
City?


Emissions from motor vehicle sources in Baltimore fell by 25% from 1999 - 2002, But increased by 26% from 2002 to 2005. However they decreased sharply from 2005 to 2008 by 39%. 


## Question 6
### Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

Baltimore and LA had different levels of total PM2.5 emissions. LA had a reduction of 31% in PM2.5 emissions, whereas Baltimore saw a reduction of 43%. But LA had a higher total reduction in PM2.5 emissions of 21733115 tons. 


