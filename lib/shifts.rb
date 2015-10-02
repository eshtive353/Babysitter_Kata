class Shifts

  def initialize
    @evening_hours = 0
    @night_hours = 0
    @morning_hours = 0
  end

  def start_time time
    if time < 17
      "That start time is too early!"
    else
      @starting_time = time
      @starting_time
    end
  end

end
