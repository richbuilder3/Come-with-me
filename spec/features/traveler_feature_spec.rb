require 'spec_helper'

describe "viewing travelers" do
	before do 
		@richard = Traveler.create name: "Richard Grundy"
		visit '/travelers' 
	end
	it "should have that travelers name" do
		page.should have_content(@richard)
	end
end

describe 'creating a traveler' do
	describe 'starting on a new person page' do
		before do
			visit '/traveler/new'
		end
		 it 'can create on a new traveler page' do
		 		name = 'Chris'
		 	fill_in 'name', {with: 'Chris'}
		 	click_button 'submit'
		 	page.should have_content('Chris')
		 end
		end
	end