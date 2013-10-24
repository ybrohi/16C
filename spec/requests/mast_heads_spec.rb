require 'spec_helper'

describe "MastHeads" do

	describe "Home Page" do
		before { visit root_path }
		subject { page }

		it { should have_content ('Leverage') }
		it { should have_title ("Leverage")}

		end
	end

	describe "Help Page" do
		before { visit help_path }

		it "should have the content Help" do
			expect(page).to have_content('Help')
		end
	end

	describe "About Page" do

		before { visit about_path }

		it "should have the content About" do
			expect(page).to have_content('About')
	end
end
