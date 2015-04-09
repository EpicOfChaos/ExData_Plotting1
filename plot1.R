source("generatePlotData.R")
powerData <- generateData()
png("plot1.png")
hist(powerData$Global_active_power
     , col="red"
     , ylab="Frequency"
     , xlab="Global Active Power (kilowatts)"
     , main="Global Active Power")
dev.off()