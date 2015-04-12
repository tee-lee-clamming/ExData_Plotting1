# please open load_data.R, 
#  and set data_file with the location of the data file

source('load_data.R', chdir = T)

png('plot2.png', width = 480, height = 480)
with(dataset, 
     plot(datetime, Global_active_power, 
          type='l', 
          xlab='', 
          ylab='Global Active Power (kilowatts)'))
dev.off()
