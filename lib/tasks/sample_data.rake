namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Apollo Butters Von Hammington III",
			     email: "jason@darkestritual.com",
			     password: "popsicles",
			     password_confirmation: "popsicles",
			     admin: true)
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@testing.com"
			password = "swordfish"
			User.create!(name: name,
				     email: email,
				     password: password,
				     password_confirmation: password)
		end
	end
end
