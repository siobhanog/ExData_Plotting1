## This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the “Individual household electric power consumption Data Set” which I have made available on the course web site:
## Dataset: Electric power consumption [20Mb]
##Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
##  The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
  
## Date: Date in format dd/mm/yyyy
## Time: time in format hh:mm:ss
## Global_active_power: household global minute-averaged active power (in kilowatt)
## Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
## Voltage: minute-averaged voltage (in volt)
## Global_intensity: household global minute-averaged current intensity (in ampere)
## Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
## Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
## Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

setwd("~/DS-j19/datasciencecoursera/wk4_ExploratoryDataAnalysis/ProjectAssignment")





##Open SQL connection to file to enable filtering to just the dates of interest

file_name <- "/Users/siobhanog/DS-j19/datasciencecoursera/wk4_ExploratoryDataAnalysis/ProjectAssignment/Source Data/household_power_consumption.txt"

fi <- file(file_name)

library(sqldf)




epc_data <- read.csv.sql(file_name, sql = "select * from file where Date='2/2/2007' or Date='1/2/2007'", sep = ";")



# good practice to close the connection
close(fi)



library(lubridate)

## combine Date and Time which were provided as char in input file to a date value via LUBRIDATE  

epc_data$date_l <- dmy_hms(paste(epc_data$Date,epc_data$Time))



