setwd("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1")

PC <- read.table("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1/household_power_consumption.txt", header=T, sep=";")

PC2 <- PC[as.character(PC$Date) %in% c("1/2/2007", "2/2/2007"),]

PC2$dateTime = paste(PC2$Date, powerConsumption2$Time)

PC2$dateTime <- strptime(PC2$dateTime, "%d/%m/%Y %H:%M:%S")

attach(PC2)

png("/Users/srinivas/Dropbox/Coursera/Git/ExData_Plotting1/plot3.png", width=480, height=480, units="px")

plot(dateTime, as.numeric(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering")

lines(dateTime, as.numeric(as.character(Sub_metering_2)), col="red")

lines(dateTime, as.numeric(as.character(Sub_metering_3)), col="blue")

legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))

dev.off()