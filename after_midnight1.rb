def minutes_to_time(minutes)
  if minutes > 0
    clk_hour = minutes / 60
    clk_minutes = minutes % 60
  elsif minutes < 0
    clk_hour = (minutes / 60) + 24
    clk_minutes = minutes % 60
  end
   sprintf("%02d:%02d", clk_hour, clk_minutes)
end


def time_of_day(minutes)
  if minutes > 1440
    minutes = minutes -= 1440 until minutes <= 1440
    minutes_to_time(minutes)
  elsif minutes < 0 && minutes < -1440
    minutes = minutes += 1440 until minutes >= -1440
    minutes_to_time(minutes)
  elsif minutes == 0
    "00:00"
  else
    minutes_to_time(minutes)
  end
end


p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
p time_of_day(1440)


#LS solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
