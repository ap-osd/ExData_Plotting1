plot2 = function()
{
    dtfull = fread("household_power_consumption.txt")
    dt = dtfull[dtfull$Date=="1/2/2007" | dtfull$Date=="2/2/2007",]
    dt$Date = as.Date(dt$Date, "%d/%m/%Y")
    datetime = strptime(paste(dt$Date, dt$Time), format="%Y-%m-%d %H:%M:%S")
    
    png("plot2.png", width=480, height=480, bg="transparent")
    plot(datetime, 
         dt$Global_active_power, 
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    dev.off()
}