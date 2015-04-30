require 'docking_station'

feature 'maintainer feels station capacity not high enough' do
  scenario 'maintainer sets new capacity for station if necessary' do
    docking_station = DockingStation.new
    expect(docking_station.capacity = 50).to eq 50
  end
end