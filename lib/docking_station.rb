require 'bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	attr_reader :bikes 

	def release_bike
		fail 'No Bikes Available' if empty?
		@bikes.pop
	end

	def dock(bike)
		fail 'No Space Available' if full?
		@bikes << bike
		bike
	end

	private

	def full?
		@bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end
end