data<-fread(file = "household_power_consumption.txt")
datanew<-data[data$Date=="2/2/2007"|data$Date=="1/2/2007"]
png(file = "plot3.png")
plot(datanew$Sub_metering_1,type = "l",xaxt="n",ylab = "Energy sub metering",xlab = " ")
points(datanew$Sub_metering_2,type = "l",col="red")
points(datanew$Sub_metering_3,type = "l",col="blue")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch=c(-1,-1,-1),lty=c(1,1,1),col = c("black","red","blue"))
dev.off()