## Exploratory Data Analysys
## Rui Mendes (ruidamendes@ua.pt)
## Project1
## January 2014

## Load dataset (in my case the dataset is on the data folder)
data <- read.table("data/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

## Check the first 6 rows of teh dataset
#head(data)

## Subset the original dataset from the dates 2007-02-01 and 2007-02-02.
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
