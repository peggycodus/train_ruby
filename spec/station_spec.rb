require 'rspec'
require 'station'

describe Station do
  it "initializes the station" do
    test_station = Station.new('Central')
    expect(test_station).to be_an_instance_of Station
  end


end

