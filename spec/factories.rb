FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@testuser.com" }
		password "Poopsicles"
		password_confirmation "Poopsicles"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum. Testing, one, two, three..."
		user
	end
end

