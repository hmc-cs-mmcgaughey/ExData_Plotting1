## plot 1 ##

## read the data
source("data.R")

## make the histogram, save it to a png file
png(file = "plot1.png")
hist(data$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
