


data_file = '../household_power_consumption.txt'

load_data = function (data_file){
  fulldataset = read.csv2(data_file, na.strings = "?", dec='.',
                          colClasses=c(rep("character",2),rep('numeric',7)))
  
  fulldataset$datetime = strptime(paste(fulldataset$Date, fulldataset$Time), 
                                  '%d/%m/%Y %H:%M:%s',tz = "")
  
  dataset=subset(fulldataset, 
                 datetime >= as.POSIXct('2007-02-01') & 
                   datetime < as.POSIXct('2007-02-03'))
  dataset
}
dataset =load_data(data_file)