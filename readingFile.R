### function to read the file household_power_consumption.txt
### This function reads the raw data and extract the data for two given dates
### The final data can be used for plotting 

readfile <-function(filename="household_power_consumption.txt"){
    # loading data into data
    data<-read.delim2(filename,header = TRUE,sep=";")

    # obtaining data into date format
    data$Date<-as.Date(data$Date,format='%d/%m/%Y')

    #selecting data for the given duration        
    datad<-data[data$Date>="2007-02-01" & data$Date<="2007-02-02" ,]
    
    # adding a column of weekdays into the data
    datad<-cbind(datad,weekday=weekdays(datad$Date))
    tmax<-dim(datad)[1]-1
    
    # adding a column that corresponds to mins into the data
    datad<-cbind(datad,mins=c(0:tmax))
    
    
    }