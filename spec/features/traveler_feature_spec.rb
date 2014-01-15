	require 'spec_helper'

describe "viewing travelers page" do
	before do 
		@richard = Traveler.create!(name: "Richard Grundy", email: "travel@gmail.com", password: "password")
		visit '/travelers' 
	end
	it "should have that travelers name" do
		page.should have_content(@richard.name)
	end
end

describe 'creating a traveler' do
	describe 'starting on a new traveler page' do
		before do
			visit new_traveler_registration_path
		end
		 it 'can create a new traveler' do
		 	@email = 'travel@gmail.com'
		 	@password = 'password'
		 	fill_in 'traveler_email', {with: @email}
		 	fill_in 'traveler_password',{with: @password}
		 	fill_in 'traveler_password_confirmation',{with: @password}
		 	click_button 'Sign up'
		 	page.should have_content(@email)
		 end
		end
	end