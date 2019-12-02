df <-read.table("C:/Users/Vahidu/Desktop/Vahid/household_power_consumption.txt", header = TRUE,sep=";")
wdf <- df[df$Date %in% c("1/2/2007" , "2/2/2007"),]
wdf$Global_active_power <- as.numeric(as.character(wdf$Global_active_power))
z <- paste(wdf$Date, wdf$Time, sep = " ")
dt <- strptime(z, "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(dt,wdf$Global_active_power, type = "l", xlab="",ylab ="Global Active Power (kilowatts)") 
dev.off()