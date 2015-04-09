source("generatePlotData.R")
powerData <- generateData()
png("plot4.png")
par(mfrow=c(2,2))

#Generate Global Active Power Plot
with(powerData, plot(Date, Global_active_power
                     , type = "l"
                     , ylab="Global Active Power"
                     , xlab=""
))

#Generate Voltage Plot
with(powerData, plot(Date, Voltage
                     , type = "l"
                     , ylab="Voltage"
                     , xlab="datetime"
))

#Generate Engery Sub Metering Plot
with(powerData, plot(Date, Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
with(powerData, points(Date, Sub_metering_1, type="l", col="black"))
with(powerData, points(Date, Sub_metering_2, type="l", col="red"))
with(powerData, points(Date, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Generate Global Reactive Power Plot
with(powerData, plot(Date, Global_reactive_power
                     , type = "l"
                     , xlab="datetime"
                     
))
dev.off()