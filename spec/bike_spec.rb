require 'bike'

describe Bike do 
	it { is_expected.to respond_to :working? }

	it 'is is created working' do 
		bike = Bike.new
		expect(bike.broken?).to eq false
	end

	it 'can be reported broken' do 
		subject.report_broken
		expect(subject.broken?).to eq true
	end
end