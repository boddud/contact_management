class Contact < ActiveRecord::Base
	has_many :addresses
	has_many :phones
	accepts_nested_attributes_for :addresses, :phones

	 validates_presence_of :first_name, :last_name, :email
	def name
		return first_name+' '+last_name
	end
end
