data<-fread(file = "household_power_consumption.txt")
datanew<-data[data$Date=="2/2/2007"|data$Date=="1/2/2007"]
png(file = "plot1.png")
hist(as.numeric(datanew$Global_active_power),col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()