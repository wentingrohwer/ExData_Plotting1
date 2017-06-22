library(lubridate)
#Convert Date from string to date
df$Date <- as.Date(dmy(df$Date))
df$Weekday <- weekdays(df$Date)
df$DateTime<- as.POSIXct(strptime(paste(df$Date,df$Time), format="%Y-%m-%d %H:%M:%S"))
# > head(df,3)
# Date     Time Global_active_power Global_reactive_power Voltage
# 1: 2007-02-01 00:00:00               0.326                 0.128  243.15
# 2: 2007-02-01 00:01:00               0.326                 0.130  243.32
# 3: 2007-02-01 00:02:00               0.324                 0.132  243.51
# Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3  Weekday
# 1:              1.4              0              0              0 Thursday
# 2:              1.4              0              0              0 Thursday
# 3:              1.4              0              0              0 Thursday
# DateTime
# 1: 2007-02-01 00:00:00
# 2: 2007-02-01 00:01:00
# 3: 2007-02-01 00:02:00
plot(df$DateTime,df$Global_active_power,type='l', xlab = "", ylab = 'Global Active Power (kilowatts)')
