require 'rails_helper'

RSpec.describe Contact, type: :model do

	it 'validate contact model' do
		@contact = FactoryGirl.create(:contact)
		expect(@contact).to be_a_kind_of(Contact)
		expect(@contact.first_name).to eql('devraj')
		expect(@contact.last_name).to eql('boddu')
		expect(@contact.email).to eql('devraj@gmail.com')
		expect(@contact.addresses.count).to eql(1)
		expect(@contact.phones.count).to eql(1)
		expect(@contact.name).to eql('devraj boddu')
		@contact.destroy
	end
end
