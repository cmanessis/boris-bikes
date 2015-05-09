require 'docking_station'

describe DockingStation do

  let(:bike) {double :bike, working?: true}

  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    subject.dock bike
    released_bike = subject.release_bike
    expect(released_bike.working?).to be true
end

  it { is_expected.to respond_to(:dock).with(1).argument }


  describe 'release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
    it 'raises an error when full' do
     subject.capacity.times { subject.dock double :bike }
      expect { subject.dock double :bike }.to raise_error 'Docking station full'
    end
  end

  describe 'edit_capacity' do
    it 'becomes edited' do
      expect(subject.capacity = 50).to eq 50
    end
  end
end
