### Using points to plot multiple plots in the same axis
### Here submetering is plotted for Thursday and Friday.
### Different submetering are represented with different color shown in the legends


plot3<-function(data=data){
    # to save the plot
    png(filename = 'plot3.png',height = 480,width=480)
        
    # plot the data using dataframe

    plot(data$mins,data$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",xlab='')
    points(data$mins,data$Sub_metering_2,type="l",xaxt="n",col='red',ylab="Energy sub metering",xlab='')
    points(data$mins,data$Sub_metering_3,type="l",xaxt="n",col='blue',ylab="Energy sub metering",xlab='')
    
    # legend of the plot on the top right corner with lty=1 for solid line
    legend("topright",lty=1,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    # to change label of the x-axis
    axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
    
    # don't forget to use dev.off()
    dev.off()
    
}