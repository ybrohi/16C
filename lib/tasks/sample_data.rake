namespace :db do
desc "Seed Heroku"
task populate: :environment do
	admin = User.create!(firstname: "yasser",
				lastname: "b",
				email: "yasser.brohi@gmail.com",
				yearofbirth: "1980",
				city: "khi",
				password: "Enter",
				password_confirmation: "Enter",
				admin: true)
			end
		end

