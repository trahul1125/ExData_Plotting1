#PLOT-1

setwd("C:\\Users\\rahul\\OneDrive\\Desktop\\3rd Year\\Data Science Fundamentals lab work\\EDA Week1")

#loading the required data into the 'data' variable
x<-read.table("household_power_consumption.txt",sep = ';',header = TRUE)
head(x,10)

#subsetting required data
req_data<-x[x$Date %in% c("5/2/2007","6/2/2007") ,]
req_data

y<-as.numeric(req_data$Global_active_power)
y

png("plot1.png",width=480,height=480)
hist(y,col="red",main ="Global Active Power",xlab="Global Active Power(kilowatts")
dev.off()


