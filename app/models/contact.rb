class Contact < ActiveRecord::Base
	has_many :addresses, :dependent => :destroy
	has_many :phones, :dependent => :destroy
	accepts_nested_attributes_for :addresses, :phones

	validates_presence_of :first_name, :last_name, :email
	validates :addresses, :phones, :presence => true

	def name
		return first_name+' '+last_name
	end
end
