# please open load_data.R, 
#  and set data_file with the location of the data file

source('load_data.R', chdir = T)

png('plot1.png', width = 480, height = 480)
with(dataset, {
  hist(Global_active_power, 
       main='Global Active Power', 
       col='red', 
       xlab='Global Active Power (kilowatts)', 
       ylab='Frequency')
  })
dev.off()


