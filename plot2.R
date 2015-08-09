household<-read.table("household_power_consumption.txt", header = TRUE, 
                      sep = ";", stringsAsFactors = FALSE, dec = ".")
requireddata<-household[household$Date %in% c("1/2/2007","2/2/2007"),]
setdate<-strptime(paste(requireddata$Date, requireddata$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower<-as.numeric(requireddata$Global_active_power)
png("plot2.png", height = 480, width = 480)
plot(setdate, GlobalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
