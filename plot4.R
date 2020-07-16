data<-fread(file = "household_power_consumption.txt")
datanew<-data[data$Date=="2/2/2007"|data$Date=="1/2/2007"]
png(file = "plot4.png")
par(mfrow=c(2,2))
#first 
plot(datanew$Global_active_power,type = "l",xaxt="n",ylab = "Global Active Power",xlab =" ")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
#second
plot(datanew$Voltage,type = "l",xaxt="n",ylab = "Voltage",xlab = "datetime")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
#third
plot(datanew$Sub_metering_1,type = "l",xaxt="n",ylab = "Energy sub metering",xlab =" ")
points(datanew$Sub_metering_2,type = "l",col="red")
points(datanew$Sub_metering_3,type = "l",col="blue")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
#fourth
plot(datanew$Global_reactive_power,type = "l",xaxt="n",ylab = "Global_reactive_power",xlab = "datetime")
axis(side = 1,at=c(1,1440,2880),labels = c("Thu","Fri","Sat"))
