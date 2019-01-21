require 'bike'

class DockingStation

	def initialize(default_capacity = 20)
		@capacity = default_capacity
		@bikes = []
	end

	attr_reader :bikes 

	def release_bike
		available_bike = @bikes.detect {|bike| bike.working?}
		fail 'No Bikes Available' if empty?
		fail 'No Working Bikes Available' unless available_bike
		return available_bike
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