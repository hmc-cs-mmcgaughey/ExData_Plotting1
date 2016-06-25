## plot 3 ##

## get data
source("data.R")

## make plot, save it to a png
png(file="plot3.png")
with(data, plot(datetime,Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
lines(data$datetime, data$Sub_metering_1, col="black")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), lty=c(1,1),
        legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()