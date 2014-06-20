# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create :firstname => "yasser", :lastname => "b", :email => "yasser.brohi@gmail.com", :yearofbirth => "1980", :city => "khi", 
:password => "user123", :password_confirmation => "Enter", :admin => true

