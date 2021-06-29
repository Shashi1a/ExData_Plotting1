#### function to plot the global active power histogram for given data.
### the data that is to be plotted is passed as an argument to the function. 
### assuming the data passed is already filtered for the given duration.
### By default the function will plot Global_active_power.
### plot1.png is the output file


plot1<-function(){
    
    # filename that has the data
    filename="household_power_consumption.txt"

    # loading the file into dataframe d1
    d1<-read.delim2(filename,header = TRUE,sep=";")
    
    # obtaining data into date format
    d1$Date<-as.Date(d1$Date,format='%d/%m/%Y')
    
    #selecting data for the given duration        
    data<-d1[d1$Date>="2007-02-01" & d1$Date<="2007-02-02" ,]
    
    # adding a column of weekdays into the data
    data<-cbind(data,weekday=weekdays(data$Date))
    tmax<-dim(data)[1]-1
    
    # adding a column that corresponds to mins into the data
    data<-cbind(data,mins=c(0:tmax))
    
    
    # parameters of the plot file like name,width and height
    png(file='plot1.png',width=480, height = 480)
    
    # plotting the histogram with red color, axes names and title of the plot
    hist(as.numeric(data$Global_active_power),col='red',xlab='Global Active Power(kilowatts)',
         ylab='Frequency',main='Global Active Power')
    
    # don't forget dev.off() after the function is plotted
    dev.off()
    }