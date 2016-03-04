class Contact < ActiveRecord::Base
	has_many :addresses
	has_many :phones
	accepts_nested_attributes_for :addresses, :phones
end
