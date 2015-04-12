# please open load_data.R, 
#  and set data_file with the location of the data file

source('load_data.R', chdir = T)

png('plot3.png', width = 480, height = 480)
with(dataset, {
  plot(datetime, Sub_metering_1, 
       type='l', 
       xlab='', 
       ylab='Energy sub metering')
  points(datetime, Sub_metering_2, type='l', col='red')
  points(datetime, Sub_metering_3, type='l', col='blue')
  legend('topright', lwd=1, 
         col=c('black','blue','red'), 
         legend=c('Sub_metering_1',
                  'Sub_metering_2',
                  'Sub_metering_3')
         )
} 
)
dev.off()