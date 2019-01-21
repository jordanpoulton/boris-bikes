require 'docking_station'

describe DockingStation do 	
	
	let(:working_bike) {double(:bike, :working? => true )}
	let(:broken_bike) {double(:bike, :working? => false )}

	it { is_expected.to respond_to :release_bike }
	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to :bikes }

	it 'has a default capacity of 20 bikes' do 
		20.times { subject.dock(working_bike)}
		expect{(subject.dock(working_bike))}.to raise_error 'No Space Available'
	end

	it 'can be made with larger capacity' do
		station = DockingStation.new(25)
		25.times { station.dock(working_bike)}
		expect{(station.dock(working_bike))}.to raise_error 'No Space Available'
	end	

	describe '#dock(bike)' do 
		it 'can dock bikes' do 
			expect(subject.dock(working_bike)).to eq working_bike
		end
		it 'raises an error if full' do 
			20.times {subject.dock(working_bike)}
			expect { subject.dock(working_bike)}.to raise_error 'No Space Available'
		end
	end

	describe '#release_bike' do 
		it 'releases working bikes' do 
			subject.dock(working_bike)
			expect(subject.release_bike).to eq working_bike
		end

		it "doesn't release broken bikes" do 
			subject.dock(broken_bike)
			expect{(subject.release_bike)}.to raise_error 'No Working Bikes Available'
		end

		it 'raises an error when there are no bikes available' do 
			expect{(subject.release_bike)}.to raise_error 'No Bikes Available'
		end
	end
end

