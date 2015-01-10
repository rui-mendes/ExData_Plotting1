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

## Convert the Date and Time variables to Date/Time classes in R
aux <- as.Date(subsetData$Date, format="%d/%m/%Y")
datetime <- strptime(paste(aux, subsetData$Time), format="%Y-%m-%d %H:%M:%S")

## Set mfrow graphical parameter to be 2x2 dimension for plotting 4 graphics in the same window
par(mfrow=c(2,2))

## Plot 1st graphich (Global_active_power field)
plot(datetime, subsetData$Global_active_power, xlab="", ylab="Global Active Power", type="l")