PowerData = read.table("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?",stringsAsFactors = FALSE)
PowerData$Date <- as.Date(PowerData$Date, format="%d/%m/%Y")
ImportantDates <- PowerData[(PowerData$Date=="2007-02-01") | (PowerData$Date=="2007-02-02"),]
hist(ImportantDates$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
