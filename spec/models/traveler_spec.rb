require 'spec_helper'

describe Traveler do
	describe 'given a traveler' do 
		before do
			@traveler = Traveler.new name: 'Richard Grundy'
		end

	describe 'to_s' do 
		it 'displays the persons name' do
			@traveler.to_s.should == 'Richard Grundy'
		end
	end
end
end
