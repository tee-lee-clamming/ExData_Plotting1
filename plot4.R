# please open load_data.R, 
#  and set data_file with the location of the data file

source('load_data.R', chdir = T)

png('plot4.png', width = 480, height = 480)

par(mfrow=c(2,2))
with(dataset, {
  plot(datetime, Global_active_power, 
       type='l', 
       xlab='', 
       ylab='Global Active Power')
  
  plot(datetime, Voltage, 
       type='l', 
       xlab='datetime', 
       ylab='Voltage')
  
  
  
  plot(datetime, Sub_metering_1, 
       type='l', 
       xlab='', 
       ylab='Energy sub metering')
  points(datetime, Sub_metering_2, type='l', col='red')
  points(datetime, Sub_metering_3, type='l', col='blue')
  legend('topright', lwd=1, bty='n',
         col=c('black','blue','red'), 
         legend=c('Sub_metering_1',
                  'Sub_metering_2',
                  'Sub_metering_3')
  )
  
  plot(datetime, Global_reactive_power, 
       type='l', 
       xlab='datetime', 
       ylab='Global_reactive_power')
  
} 
)
dev.off()