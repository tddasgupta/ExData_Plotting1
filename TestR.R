setwd("C:\\Users\\Tushar Dasgupta\\Desktop\\Coursera\\Explanatory Data Analy")
getwd()
variable.class<-c(rep('character',2),rep('numeric',7)) # First 2 columns are character and remaining 7 columns are numeric
filename <- 'household_power_consumption.txt'
power.consumption<-read.table(filename,header=TRUE,
                              sep=';',na.strings='?',colClasses=variable.class)
power.consumption<-power.consumption[power.consumption$Date=='1/2/2007' | power.consumption$Date=='2/2/2007',]
colnames(power.consumption)<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
                               'SubMetering1','SubMetering2','SubMetering3')
power.consumption$DateTime <- paste(power.consumption$Date, power.consumption$Time) # Adding Date & Time together
power.consumption$DateTime <- as.POSIXct(strptime(power.consumption$DateTime, "%d/%m/%Y %H:%M:%S")) # shows in Time format
str(power.consumption$Date)
