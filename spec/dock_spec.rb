require_relative '../lib/dock'

describe DockingStation do

  let(:bike) { Bike.new }
  let(:station) {DockingStation.new(:capacity => 20)}

  it "should be able to accept a bike" do
    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it "should be able to release a bike" do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it "should know when it's full" do
    expect(station.full?).not_to be true
    20.times {station.dock(Bike.new)}
    expect(station.full?).to be true
  end
    
  end