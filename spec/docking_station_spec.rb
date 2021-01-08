require 'docking_station'


#it 'should release a bike' do
    #expect(DockingStation).to respond_to (:release_bike)
describe DockingStation do
  DEFAULT_CAPACITY = 20
it {is_expected.to respond_to :release_bike}

describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq [bike]
    end

    it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
end
end
describe '#dock' do
  it 'raises an error when full' do
    DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
end

describe 'default capacity' do
  it 'checks capacity' do
    expect(subject.capacity).to eq (DEFAULT_CAPACITY)
  end
end

it 'show the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq [bike]
end
end