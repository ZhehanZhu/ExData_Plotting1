## Project_1_plot4

## Change directory
setwd("/Users/zhuzhehan/Documents/Coursera/Exploratory Data Analysis/Project1")


## Loading the data
data_ori <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = "?")
data_req <- data_ori[which(data_ori$Date == "1/2/2007" | data_ori$Date == "2/2/2007"),]

## plot4
date_and_time <- paste(data_req$Date, data_req$Time)
date_and_time <- strptime(date_and_time,"%e/%m/%Y %T")

png(filename="plot4.png", width=480, height=480)

par(bg = "white", mfcol=c(2,2))
## Topleft plot
plot(date_and_time, data_req$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
## Bottomleft plot
plot(date_and_time, data_req$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(date_and_time, data_req$Sub_metering_2, type="l", col="red")
lines(date_and_time, data_req$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c("solid","solid","solid"), col=c("black","red","blue"), pt.cex=1, cex=0.8)
## Topright plot
plot(date_and_time, data_req$Voltage, xlab="datetime", ylab="Voltage", type="l")
## Bottomright plot
plot(date_and_time, data_req$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power",type="l")

dev.off()