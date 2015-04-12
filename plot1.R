data_1 <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?", stringsAsFactors=F, comment.char="", quote='\"')
data_1$Date <- as.Date(data_1$Date, format="%d/%m/%Y")
data <- subset(data_1, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_1)
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
                       