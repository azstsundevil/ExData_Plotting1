setwd("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1")

PC <- read.table("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1/household_power_consumption.txt", header=T, sep=";")

PC2 <- PC[as.character(PC$Date) %in% c("1/2/2007", "2/2/2007"),]

PC2$dateTime = paste(PC2$Date, PC2$Time)


PC2$dateTime <- strptime(PC2$dateTime, "%d/%m/%Y %H:%M:%S")

attach(PC2)

png("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1/plot1.png", width=480, height=480, units="px")

hist(as.numeric(as.character(Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()