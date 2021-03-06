household<-read.table("household_power_consumption.txt", header = TRUE, 
                      sep = ";", stringsAsFactors = FALSE, dec = ".")
requireddata<-household[household$Date %in% c("1/2/2007","2/2/2007"),]
setdate<-strptime(paste(requireddata$Date, requireddata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower<-as.numeric(requireddata$Global_active_power)
Metering1<-as.numeric(requireddata$Sub_metering_1)
Metering2<-as.numeric(requireddata$Sub_metering_2)
Metering3<-as.numeric(requireddata$Sub_metering_3)
png("plot3.png", height = 480, width = 480)
plot(setdate, Metering1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(setdate, Metering2, type = "l", col = "red")
lines(setdate, Metering3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
dev.off()
