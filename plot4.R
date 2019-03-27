## Call R Scipt that filters , loads and stores the input data and calculates any variables required for graphical analysis

source("read_prep_data.R")


#initalize the Plot device to file

dev.set(3)
png(file ="plot4.png", units = "px", res = NA, width=480, height=480,pointsize = 12,bg="white")

## Create Plot 4  Multiple graphs on same plot

png(file ="plot4.png") 

par(mfrow = c(2,2), mar=c(2,4,1,1),oma=c(1,1,1,1))

## Plot 4.1
with(epc_data, {
  plot(date_l,Global_active_power,type="l",xlab="Day of Week",ylab="Global Active Power")
} 
)

## Plot 4.2
with(epc_data, 
     
     plot(date_l,Voltage,type="l",xlab="Day of Week",ylab="Voltage") 
     
)

## Plot 4.3

with(epc_data, {
  
  plot(date_l,Sub_metering_1,type="l",xlab="Day of Week",ylab="Energy Sub Metering",xlim=c(min(date_l), max(date_l)), ylim=c(0,max(Sub_metering_1,Sub_metering_2,Sub_metering_3))) 
  lines(date_l,Sub_metering_2,col="red")
  lines(date_l,Sub_metering_3,col="blue")
  legend(cex=0.7 ,"topright",pch ="___", col = c("black", "red", "blue"),legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
}) 


## plot 4.4  
with(epc_data,   
     plot(date_l,Global_reactive_power,type="l",xlab="Day of Week",ylab="Global Reactive Power" )
     
)



dev.off()
