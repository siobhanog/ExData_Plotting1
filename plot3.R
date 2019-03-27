## Call R Scipt that filters , loads and stores the input data and calculates any variables required for graphical analysis

source("read_prep_data.R")



#initalize the Plot device to file

dev.set(3)
png(file ="plot3.png")

## Initalize Plot Area

par(mfrow = c(1,1), mar=c(4,4,2,2))



##Create Plot3
## xlim, ylin are set to min and max of vars
## Plot lines one of top of the other

png(file ="plot3.png",units = "px", res = NA, width=480, height=480,pointsize = 12,bg="white") 

with (epc_data, {
  plot(date_l,Sub_metering_1,type="l",xlab="Day of Week",ylab="Energy Sub Metering", main="Plot 3", xlim=c(min(date_l), max(date_l)),ylim=c(0,max(Sub_metering_1,Sub_metering_2,Sub_metering_3)) )
  lines(date_l,Sub_metering_2,col="red")
  lines(date_l,Sub_metering_3,col="blue")
  
  ## Add Legend
  legend( cex=0.7 ,"topright",pch ="___", col = c("black", "red", "blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
})



dev.off()
