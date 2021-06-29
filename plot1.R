#### function to plot the global active power histogram for given data.
### the data that is to be plotted is passed as an argument to the function. 
### assuming the data passed is already filtered for the given duration.
### By default the function will plot Global_active_power.
### plot1.png is the output file


plot1<-function(dt=data$Global_active_power){
    # parameters of the plot file like name,width and height
    png(file='plot1.png',width=480, height = 480)
    
    # plotting the histogram with red color, axes names and title of the plot
    hist(as.numeric(dt),col='red',xlab='Global Active Power(kilowatts)',
         ylab='Frequency',main='Global Active Power')
    
    # don't forget dev.off() after the function is plotted
    dev.off()
    }