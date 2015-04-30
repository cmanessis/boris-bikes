require 'docking_station'

feature "member of the public accesess bike" do
  scenario "docking station releases a working bike" do
    docking_station= DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).to be_working
    #make a work method with a double that is true e.g let, gives you an opprot
  end


  scenario "docking station does not release a bike when there are none available" do
    docking_station = DockingStation.new
    expect{docking_station.release_bike}.to raise_error 'No bikes available'
  end
end
