## plot 2 ##

## get data
source("data.R")

## create plot and save to png
png(file="plot2.png")
with(data, plot(datetime, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
lines(data$datetime, data$Global_active_power)
dev.off()