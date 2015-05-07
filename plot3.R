## ---------- READ: only the rows corresponding to the dates 2007-02-01 to 2007-02-02

# Read of the Date column, and fine the row numbers corresponding to the specified date
dline<-read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character",rep("NULL",8)))
dline$Date <- as.Date(dline$Date, "%d/%m/%Y")
library(dplyr)
dline <- mutate(dline, id=1:length(dline$Date))
dlinebon <- filter(dline,Date>="2007-02-01" & Date<="2007-02-02")
dim(dlinebon)
line<-dlinebon$id


# read the all columns of the data frame and only the interesting lines
name<-read.table("household_power_consumption.txt", header=TRUE, sep=";",nrows=1)
d<-read.table("household_power_consumption.txt", header=FALSE, sep=";",na.strings="?",colClasses=c("character","character",rep("numeric",7)),skip=line[1], nrows=length(line))
head(d)
tail(d)
str(d)
dim(d)
names(d)<-names(name)
d <- mutate(d, DT=paste(Date, Time))
d$DT <- strptime(d$DT, "%d/%m/%Y %H:%M:%S")

#----------- PLOT 3  -------------
# plot with the specified dimensions


name <- names(d) 

png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(d$DT, d$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="",cex.axis=0.8)
lines(d$DT, d$Sub_metering_2, col="red", type="l")
lines(d$DT, d$Sub_metering_3, col="blue", type="l")
legend("topright", legend=name[7:9], lty=1, col=c("black","red","blue"),cex=0.8)

dev.off()
