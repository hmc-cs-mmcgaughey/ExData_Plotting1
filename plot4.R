## plot 4 ##

## get data
source("data.R")

## make plot, save to png
png(file="plot4.png")

## set dimensions
par(mfrow=c(2,2))

## upper left
with(data, plot(datetime, Global_active_power, type="n", xlab="", ylab="Global Active Power"))
lines(data$datetime, data$Global_active_power)

## upper right
with(data, plot(datetime, Voltage, type="n", xlab="datetime", ylab="Voltage"))
lines(data$datetime, data$Voltage)

## lower left
with(data, plot(datetime,Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
lines(data$datetime, data$Sub_metering_1, col="black")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), lty=c(1,1), bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

## lower right
with(data, plot(datetime, Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power"))
lines(data$datetime, data$Global_reactive_power)

dev.off()