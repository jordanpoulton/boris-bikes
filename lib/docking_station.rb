require 'bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	attr_reader :bikes 

	def release_bike
		fail 'No Bikes Available' if @bikes.empty?
		@bikes.pop
	end

	def dock(bike)
		fail 'No Space Available' if @bikes.length >= DEFAULT_CAPACITY
		@bikes << bike
		bike
	end
end