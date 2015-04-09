source("generatePlotData.R")
powerData <- generateData()
png("plot2.png")

with(powerData, plot(Date, Global_active_power
                    , type = "l"
                    , ylab="Global Active Power (kilowatts)"
                    , xlab=""
                    ))
dev.off()