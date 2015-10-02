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

  def end_time time
    if time > 4
      "That end time is too late!"
    else
      @ending_time = time
      @ending_time
    end
  end

  def bedtime time
    if time < 4 && time > 0
      "Are you crazy? Your child needs some sleep!"
    elsif time == 0
      @bed = 24
      @bed
    else
      @bed = time
      @bed
    end
  end

end
