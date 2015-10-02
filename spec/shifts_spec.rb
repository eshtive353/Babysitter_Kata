require_relative '../lib/shifts'

describe Shifts do

  it 'any start time before 5pm (17:00) is invalid' do
    night = Shifts.new
    expect(night.start_time(12)).to eq("That start time is too early!")
  end

  it 'a valid start time is saved' do
    night = Shifts.new
    expect(night.start_time(17)).to eq(17)
  end

end
