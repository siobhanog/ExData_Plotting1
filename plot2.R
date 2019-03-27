## Call R Scipt that filters , loads and stores the input data and calculates any variables required for graphical analysis

source("read_prep_data.R")


#initalize the Plot device to file

dev.set(3)
png(file ="plot2.png",units = "px", res = NA, width=480, height=480,pointsize = 12,bg="white")

## Initalize Plot Area

par(mfrow = c(1,1), mar=c(4,4,2,2))



##Create Plot2


plot(epc_data$date_l,epc_data$Global_active_power,type="l",xlab="Day of Week",ylab="Global Active Power" )



dev.off()
