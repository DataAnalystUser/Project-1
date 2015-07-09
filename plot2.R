PowerData = read.table("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?",stringsAsFactors = FALSE)
PowerData$Date <- as.Date(PowerData$Date, format="%d/%m/%Y")
ImportantDates <- PowerData[(PowerData$Date=="2007-02-01") | (PowerData$Date=="2007-02-02"),]
ImportantDates$CombinedDT = as.POSIXct(paste(ImportantDates$Date, ImportantDates$Time), format="%Y-%m-%d %H:%M:%S")
plot(ImportantDates$CombinedDT,ImportantDates$Global_active_power,type = "l",ylab = "Global Active Power",xlab = "")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
