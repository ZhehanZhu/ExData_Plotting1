## Project_1_plot3

## Change directory
setwd("/Users/zhuzhehan/Documents/Coursera/Exploratory Data Analysis/Project1")


## Loading the data
data_ori <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = "?")
data_req <- data_ori[which(data_ori$Date == "1/2/2007" | data_ori$Date == "2/2/2007"),]

date_and_time <- paste(data_req$Date, data_req$Time)
date_and_time <- strptime(date_and_time,"%e/%m/%Y %T")

## plot3
png(filename="plot3.png", width=480, height=480)

par(bg = "white")
plot(date_and_time, data_req$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_and_time, data_req$Sub_metering_2, type="l", col="red")
lines(date_and_time, data_req$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c("solid","solid","solid"), col=c("black","red","blue"), pt.cex==1, cex=1)

dev.off()