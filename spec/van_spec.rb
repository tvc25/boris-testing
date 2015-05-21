require_relative '../lib/van'

describe Van do

  let(:bike) {Bike.new}
  let(:van) {Van.new  }
  def full_load(load)
  end

  it "should be able to accept a bike" do
      expect(van.bike_count).to eq 0
      van.load(bike)
      expect(van.bike_count).to eq 1
  end

  it "should not accept a bike when it's full" do
    full_load load
    expect {van.load(bike)}.to raise_error RuntimeError
  end

end