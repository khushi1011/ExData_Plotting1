dataset_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dataset1 <- subset(dataset_full, Date %in% c("1/2/2007","2/2/2007"))
dataset1$Date <- as.Date(dataset1$Date, format="%d/%m/%Y")
hist(dataset1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

