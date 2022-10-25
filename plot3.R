#PLOT-3
setwd("C:\\Users\\rahul\\OneDrive\\Desktop\\3rd Year\\Data Science Fundamentals lab work\\EDA Week1")

#loading the required data into the 'data' variable
x<-read.table("household_power_consumption.txt",sep = ';',header = TRUE)
head(x,10)

#subsetting required data
req_data<-x[x$Date %in% c("1/2/2007","2/2/2007") ,]
req_data

y<-as.numeric(req_data$Global_active_power)
y

tt<-strptime(paste(req_data$Date, req_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
tt

sm1<-as.numeric(req_data$Sub_metering_1)
sm2<-as.numeric(req_data$Sub_metering_2)
sm3<-as.numeric(req_data$Sub_metering_3)

png("plot3.png",width=480,height=480)

plot(tt, sm1, type="l",xlab="",ylab="Energy Submetering")
lines(tt,sm2,col="red")
lines(tt,sm3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=2,lwd=3,col=c("black","red","blue"))
dev.off()
