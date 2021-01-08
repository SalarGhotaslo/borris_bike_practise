require_relative 'bike.rb'

class DockingStation
    attr_reader :bikes

 def initialize
    @bikes = []
end


    def release_bike
        fail 'No bikes available' if @bikes.empty?
        @bikes 
    end

    def dock(bike)
        fail 'Docking station full' if @bikes.length >= 20
        @bikes << bike
      end
    
    def bike
       @bikes
    end
end
