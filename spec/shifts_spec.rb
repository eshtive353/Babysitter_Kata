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

  it 'any end time after 4am (4:00) is invalid' do
    night = Shifts.new
    expect(night.end_time(5)).to eq("That end time is too late!")
  end

  it 'a valid end time is saved' do
    night = Shifts.new
    expect(night.end_time(4)).to eq(4)
  end

  it 'a bedtime later than midnight is too late for the kid' do
    night = Shifts.new
    expect(night.bedtime(0.5)).to eq('Are you crazy? Your child needs some sleep!')
  end

  it 'a bedtime of midnight returns a value of 24 for math reasons' do
    night = Shifts.new
    expect(night.bedtime(0)).to eq(24)
  end

  it 'any other bedtime is saved as is' do
    night = Shifts.new
    expect(night.bedtime(22)).to eq(22)
  end

end
