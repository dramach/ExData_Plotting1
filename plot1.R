household<-read.table("household_power_consumption.txt", header = TRUE, 
                      sep = ";", stringsAsFactors = FALSE, dec = ".")
requireddata<-household[household$Date %in% c("1/2/2007","2/2/2007"),]
GlobalActivePower<-as.numeric(requireddata$Global_active_power)
png("plot1.png", height = 480, width = 480)
hist(GlobalActivePower, col = "green", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()
