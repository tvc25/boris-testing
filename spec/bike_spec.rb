require_relative '../lib/bike'
# We're describing the functionality of a specific class, Bike. 
describe Bike do

  let(:bike) { Bike.new } #Instantiate a new instance of the Bike class
  #this is a specific feature or behaviour
  # that we EXPECT to have
  it "should not be broken when created" do
    expect(bike.broken?).to be false
  end

  it "should be able to be broken" do
    bike.break
    expect(bike.broken?).to be true
  end

  it "should be able to be fixed" do
    bike.break
    bike.repair
    expect(bike.broken?).to be false
  end

end