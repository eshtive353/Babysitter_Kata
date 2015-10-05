require_relative '../lib/shifts'

describe Shifts do

  it 'a valid start time is saved' do
    night = Shifts.new
    expect(night.start_time(17)).to eq(17)
    night = Shifts.new
    expect(night.start_time(12)).to eq("That start time is too early!")
  end

  it 'a valid end time is saved' do
    night = Shifts.new
    expect(night.end_time(4)).to eq(4)
    night = Shifts.new
    expect(night.end_time(5)).to eq("That end time is too late!")
  end

  it 'a bedtime is set, with a cutoff at midnight and with a bedtime of midnight equaling 24 for calculations' do
    night = Shifts.new
    expect(night.bedtime(0)).to eq(24)
    night = Shifts.new
    expect(night.bedtime(22)).to eq(22)
    night = Shifts.new
    expect(night.bedtime(0.5)).to eq('Are you crazy? Your child needs some sleep!')
  end

  it 'the first shift is calculated, with correct rounding' do
    night = Shifts.new
    night.start_time(17)
    night.bedtime(22)
    expect(night.first_shift).to eq(5)
    night = Shifts.new
    night.start_time(17)
    night.bedtime(22.1)
    expect(night.first_shift).to eq(5)
    night.start_time(17)
    night.bedtime(22.25)
    expect(night.first_shift).to eq(6)
  end

  it 'the second shift is calculated' do
  end

end
