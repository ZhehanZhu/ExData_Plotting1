## Project_1_plot1

## Change directory
setwd("/Users/zhuzhehan/Documents/Coursera/Exploratory Data Analysis/Project1")


## Loading the data
data_ori <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = "?")
data_req <- data_ori[which(data_ori$Date == "1/2/2007" | data_ori$Date == "2/2/2007"),]

## plot1
png(filename="plot1.png", width=480, height=480)

par(bg = "white")
hist(data_req$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.off()

