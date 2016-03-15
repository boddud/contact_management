FactoryGirl.define do
	factory :contact do
		first_name "devraj"
		last_name "boddu"
		email "devraj@gmail.com"
		before(:create) do |contact|
			contact.addresses << FactoryGirl.build(:address)
			contact.phones << FactoryGirl.build(:phone)
	    end
	end

	factory :address do
		address 'tarnaka'
		country 'India'
	end

	factory :phone do
		phone '90000680554'
	end
end