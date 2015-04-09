#Download and unzip the data if needed
downloadData <- function(){
    if(!file.exists("./household_power_consumption.txt")){
        message("Data does not exist, downloading and extractin data.")
        dataUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(dataUrl, destfile="./household_power_consumption.zip")
        unzip("./household_power_consumption.zip")
    }else{
        message("Data already exists, not downloading and unzipping data.")
    }
    
}

#Tidy and massage the data into the format we need.
getPowerData <- function(){
    data <- read.csv("./household_power_consumption.txt"
                     , sep=";", na.strings="?"
                     , colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
                     #, nrows=10
                     )
    data <- data[data$Date %in% c('1/2/2007', '2/2/2007'),]
    data$Date <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
    data$Time <- NULL
    data
}

#Function that will get the tidy data and return it.
generateData <- function(){
    downloadData()
    powerData <- getPowerData()
    powerData
}