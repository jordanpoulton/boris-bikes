class Bike
	def initialize
		@broken = false
	end

	def report_broken
		@broken = true
		self
	end

	def working?
		!@broken 
	end

	def broken?
		@broken
	end
end