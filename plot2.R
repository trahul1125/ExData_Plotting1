#PLOT-2

setwd("C:\\Users\\rahul\\OneDrive\\Desktop\\3rd Year\\Data Science Fundamentals lab work\\EDA Week1")

#loading the required data into the 'data' variable
x<-read.table("household_power_consumption.txt",sep = ';',header = TRUE)
head(x,10)

#subsetting required data
req_data<-x[x$Date %in% c("8/2/2007","9/2/2007") ,]
req_data

y<-as.numeric(req_data$Global_active_power)
y

tt<-strptime(paste(req_data$Date, req_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
tt
png("plot2.png",width=480,height=480)

plot(tt, y,  type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()

