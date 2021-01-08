require_relative 'bike.rb'

class DockingStation
    attr_reader :bikes
    attr_reader :capacity
    DEFAULT_CAPACITY = 20

 def initialize 
    @bikes = []
    @capacity = DEFAULT_CAPACITY
end


    def release_bike
        fail 'No bikes available' if empty?
        @bikes 
    end

    def dock(bike)
        fail 'Docking station full' if full?
        @bikes << bike
      end
    
    def bike
       @bikes
    end

private

def full?
    @bikes.length >= DEFAULT_CAPACITY
end

def empty?
    @bikes.empty?
end


end
