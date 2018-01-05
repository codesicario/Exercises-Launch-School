MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(the_time)
  if the_time == '24:00'
    0
  else
    minutes = the_time[0, 2].to_i * MINUTES_PER_HOUR
    minutes = minutes + the_time[3, 2].to_i
    minutes
  end
end

def before_midnight(the_time)
  if the_time == '00:00'
    0
  else
    minutes = the_time[0, 2].to_i * MINUTES_PER_HOUR
    minutes = MINUTES_PER_DAY - (minutes + the_time[3, 2].to_i)
    minutes
  end
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
