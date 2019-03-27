## Call R Scipt that filters , loads and stores the input data and calculates any variables required for graphical analysis

source("read_prep_data.R")

#initalize the Plot device to file

dev.set(3)
png(file ="plot1.png",units = "px", res = NA, width=480, height=480,pointsize = 12,bg="white")

## Initalize Plot Area

par(mfrow = c(1,1), mar=c(4,4,2,2))



##Create Plot1


hist(epc_data$Global_active_power, col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
