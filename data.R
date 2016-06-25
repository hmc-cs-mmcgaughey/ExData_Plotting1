# start: line 66638 (2007/02/01 start)
# end: line 69517 (2007/02/02 end)

## get the data
if (!file.exists("household_power_consumption.txt")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, "./household_power_consumption.txt", method = "curl")
}

## no names yet
data <- read.table("./household_power_consumption.txt", header = FALSE, sep = ";", na.strings="?",
                   skip = 66637, nrows= 2880)
## now get the names
getNames <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?",
                        nrows=1)
names(data) <- names(getNames)
rm(getNames)

## make dates into date objects, times into time objects
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")