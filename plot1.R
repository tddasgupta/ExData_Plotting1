setwd("C:\\Users\\Tushar Dasgupta\\Desktop\\Coursera\\Explanatory Data Analy")
# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')
# plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
# Turn off device
dev.off()
