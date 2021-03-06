source("generatePlotData.R")
powerData <- generateData()
png("plot3.png")

with(powerData, plot(Date, Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
with(powerData, points(Date, Sub_metering_1, type="l", col="black"))
with(powerData, points(Date, Sub_metering_2, type="l", col="red"))
with(powerData, points(Date, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()