module Timegreet
  #Gets the general time of day
  T = Time.now
  def Timegreet.what_time?
    time_of_day = "day"
    case T.hour
    when 4...12 
      time_of_day = "morning"
    when 11...19
      time_of_day = "afternoon"
    else
      time_of_day = "evening"
    end
    time_of_day
  end

  def Timegreet.say_hi
    "Good #{what_time?}!"
  end
end