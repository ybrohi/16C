require 'spec_helper'

describe "MastHeads" do

	describe "Home Page" do

		it "should have the content Leverage" do
			visit '/mast_head/home'
			expect(page).to have_content('Leverage')
		end

		it "should have the title Home" do
			visit '/mast_head/home'
			expect(page).to have_title("Leverage | Home")
		end
	end

	describe "Help Page" do

		it "should have the content Help" do
			visit '/mast_head/help'
			expect(page).to have_content('Help')
		end
	end

	describe "About Page" do

		it "should have the content About" do
			visit '/mast_head/about'
			expect(page).to have_content('About')
		end
	end
end
