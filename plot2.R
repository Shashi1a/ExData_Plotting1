## this function plots the global active power for thursday and Friday
## data has two column mins, that has mins starting from a given date to end date
## weekend column tells what day of the week it is for the selected data
## simply the data is plotted with type="l" : for line plot as a function of mins
## to express results as a function of weekday I remove the x-axis and replace it with
## name of the weekday


plot2<-function(){
    
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
    
    
    # to output plot in a png format with given resolution
    png(filename='plot2.png',width=480,height=480)
    
    # to plot the data: type="l" for line plot
    # xaxt="n": to not show the x-axis
    
    plot(data$mins,data$Global_active_power,type="l",xaxt="n",ylab="Global Active Power (Kilowatts)",xlab='')
    
    # to change label of the x-axis
    axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
    
    dev.off()
    }