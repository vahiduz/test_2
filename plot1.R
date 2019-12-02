df <-read.table("C:/Users/Vahidu/Desktop/Vahid/household_power_consumption.txt", header = TRUE,sep=";")
wdf <- df[df$Date %in% c("1/2/2007" , "2/2/2007"),]
wdf$Global_active_power <- as.numeric(as.character(wdf$Global_active_power))
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(wdf$Global_active_power,main= "Global Active Power",col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()