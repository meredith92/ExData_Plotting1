data<-fread(file = "household_power_consumption.txt")
datanew<-data[data$Date=="2/2/2007"|data$Date=="1/2/2007"]
png(file = "plot2.png")
plot(datanew$Global_active_power,type = "l",xaxt="n",ylab = "Global Active Power (kilowatts)",xlab = " ")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
dev.off()