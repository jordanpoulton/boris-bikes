require 'bike'

class DockingStation

	def initialize(default_capacity = 20)
		@capacity = default_capacity
		@bikes = []
	end

	attr_reader :bikes 

	def release_bike
		fail 'No Bikes Available' if 	empty?
		@bikes.pop
	end

	def dock(bike)
		fail 'No Space Available' if full?
		@bikes << bike
		bike
	end

	private

	def full?
		@bikes.length >= @capacity
	end

	def empty?
		@bikes.empty?
	end
end