plot3 = function()
{
    dtfull = fread("household_power_consumption.txt")
    dt = dtfull[dtfull$Date=="1/2/2007" | dtfull$Date=="2/2/2007",]
    dt$Date = as.Date(dt$Date, "%d/%m/%Y")
    datetime = strptime(paste(dt$Date, dt$Time), format="%Y-%m-%d %H:%M:%S")
    
    png("plot3.png", width=480, height=480, bg="transparent")
    plot(datetime, 
         dt$Sub_metering_1, 
         type="l",
         xlab="",
         ylab="Energy sub metering")
    
    lines(datetime, dt$Sub_metering_2, col="red")
    lines(datetime, dt$Sub_metering_3, col="blue")

    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=c(1,1),
           col=c("black","red", "blue"))
    
    dev.off()
}
