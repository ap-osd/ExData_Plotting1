plot1 = function()
{
    dtfull = fread("household_power_consumption.txt")
    dt = dtfull[dtfull$Date=="1/2/2007" | dtfull$Date=="2/2/2007",]
    dt$Global_active_power = as.numeric(dt$Global_active_power)
    
    png("plot1.png", width=480, height=480, bg="transparent")
    hist(dt$Global_active_power,
         col="red",
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)")
    dev.off()
}