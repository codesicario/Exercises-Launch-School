DAYS_OF_WEEK = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
SUN_MIDNIGHT = Time.new(2017, 12, 03)
SECONDS_PER_MINUTE = 60

def time_of_day(minutes)
  time = SUN_MIDNIGHT + (minutes * SECONDS_PER_MINUTE)
  time.strftime("%A %H:%M")
end


p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
p time_of_day(1440)
