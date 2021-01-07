require 'bike'

describe Bike do
it 'should check if bike is working' do
    expect(subject).to respond_to (:working?)
end
end