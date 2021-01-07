require 'docking_station'


#it 'should release a bike' do
    #expect(DockingStation).to respond_to (:release_bike)
describe DockingStation do

it {is_expected.to respond_to :release_bike}

describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
        # Let's not dock a bike first:
        # remember subject == DockingStation.new
        expect { subject.release_bike }.to raise_error 'No bikes available'
    end
end

it 'should be able to dock/return a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
end

it 'show the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
end


end