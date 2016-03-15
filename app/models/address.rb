class Address < ActiveRecord::Base
	belongs_to :contact

	validates_presence_of :address, :country
end