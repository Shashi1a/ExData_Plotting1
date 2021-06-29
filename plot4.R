plot4<-function(data=data){
    
    png(filename="plot4.png",width = 480,height = 480)
    par(mfrow=c(2,2))
    
    
    
    # plot:1
    plot(data$mins,data$Global_active_power,type="l",xaxt="n",ylab="Global Active Power",xlab='')
    # to change label of the x-axis
    axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
    
    
    # plot:2
    plot(data$mins,data$Voltage,type="l",xaxt="n",ylab="Voltage",xlab='datetime')
    # to change label of the x-axis
    axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
    
    
    # plot:3
    plot(data$mins,data$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",xlab='')
    points(data$mins,data$Sub_metering_2,type="l",xaxt="n",col='red',ylab="Energy sub metering",xlab='')
    points(data$mins,data$Sub_metering_3,type="l",xaxt="n",col='blue',ylab="Energy sub metering",xlab='')
    
    # legend of the plot on the top right corner with lty=1 for solid line
    legend("topright",lty=1,bty='n',col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    
    # plot:4
    plot(data$mins,data$Global_reactive_power,type="l",xaxt="n",ylab="Global_reactive_power",xlab='datetime')
    # to change label of the x-axis
    axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
    
    
    dev.off()
    }