setwd("C:\\Users\\Tushar Dasgupta\\Desktop\\Coursera\\Explanatory Data Analy")
#load data
source('C:\\Users\\Tushar Dasgupta\\Desktop\\Coursera\\Explanatory Data Analy\\CleanData.R')
# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')
# plot data
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l') # type=l means lines
# close device
dev.off()
