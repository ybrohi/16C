require 'spec_helper'

describe "UserPages" do

	 describe "signup page" do
	 	before { visit signup_path }
	 	subject { page }
	 	  	it { should have_content('Sign up') }
	 	  	it { should have_title(full_title('Sign up')) }
	 	  end
end
