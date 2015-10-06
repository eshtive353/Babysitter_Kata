class Shifts

  def initialize
    @evening_hours = 0
    @night_hours = 0
    @morning_hours = 0
  end

  def start_time time
    if time < 17
      "That start time is too early! The earliest start time is 17:00 (5pm)."
    else
      @starting_time = time
    end
  end

  def end_time time
    if time > 4
      "That end time is too late! The latest end time is 4:00 in the morning."
    else
      @ending_time = time
    end
  end

  def bedtime time
    if time < 4 && time > 0
      "Are you crazy? Your child needs some sleep! Midnight is the latest your kid will go to sleep."
    elsif time == 0
      @bed = 24
    else
      @bed = time
    end
  end

  def first_shift
    @evening_hours = @bed - @starting_time
    flr = @evening_hours.floor
    if (flr + 0.25) > @evening_hours
      @evening_hours = @evening_hours.floor
    else
      @evening_hours = @evening_hours.ceil
    end
  end

  def second_shift
    @night_hours = 24 - @bed
    flr = @night_hours.floor
    if (flr + 0.25) > @night_hours
      @enight_hours = @night_hours.floor
    else
      @night_hours = @night_hours.ceil
    end
  end

  def third_shift
    @morning_hours = @ending_time
    flr = @morning_hours.floor
    if (flr + 0.25) > @morning_hours
      @morning_hours = @morning_hours.floor
    else
      @morning_hours = @morning_hours.ceil
    end
  end
  
end
