require 'bike_container'

shared_examples_for BikeContainer do 
	it 'has a default capacity when initialised' do 
		expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
	end
end