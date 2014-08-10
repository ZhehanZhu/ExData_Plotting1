## Project_1_plot2

## Change directory
setwd("/Users/zhuzhehan/Documents/Coursera/Exploratory Data Analysis/Project1")


## Loading the data
data_ori <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = "?")
data_req <- data_ori[which(data_ori$Date == "1/2/2007" | data_ori$Date == "2/2/2007"),]

date_and_time <- paste(data_req$Date, data_req$Time)
date_and_time <- strptime(date_and_time,"%e/%m/%Y %T")

## plot2
png(filename="plot2.png", width=480, height=480)

par(bg = "white")
plot(date_and_time, data_req$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()