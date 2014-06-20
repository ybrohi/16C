namespace :db do
desc "Seed Heroku"
task populate: :production do
	User.create!(firstname: "yasser",
				lastname: "b",
				email: "yasser.brohi@gmail.com",
				yearofbirth: "1980",
				city: "khi",
				password: "Enter",
				password_confirmation: "Enter")
				end
				end
				
