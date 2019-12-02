df <-read.table("C:/Users/Vahidu/Desktop/Vahid/household_power_consumption.txt", header = TRUE,sep=";")

GlobalAP <- df[,3]
hist(GlobalAP, col="red", xlab="Global Active Power (kilowatts)")
title(main =  "Gobal Active Power)