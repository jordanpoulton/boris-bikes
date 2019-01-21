require 'docking_station'

describe DockingStation do 	
	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to :bike }

	it 'releases working bikes' do 
		subject.dock(Bike.new)
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it 'can dock bikes' do 
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	describe '#dock(bike)' do 
		it 'returns docked bikes' do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.bike).to eq bike
		end
		it 'raises an error if full' do 
			subject.dock(Bike.new)
			expect { subject.dock(Bike.new)}.to raise_error 'No Space Available'
		end
	end

	describe '#release_bike' do 
	it 'releases a bike' do 
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end
	it 'raises an error when there are no bikes available' do 
		expect{(subject.release_bike)}.to raise_error 'No Bikes Available'
	end
end
end

