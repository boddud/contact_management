class ContactsController < ApplicationController

	def new
		@contact = Contact.new
		@address = @contact.addresses.build
		@phone = @contact.phones.build
	end

	def index
		@contacts = Contact.all
	end

	def create
		@contact = Contact.new(contact_params)
		if address_params[:addresses_attributes].present?
			address_params[:addresses_attributes].each do |key,value|
				@contact.addresses.build(value)
			end
		end
		if phone_params[:phones_attributes].present?
			phone_params[:phones_attributes].each do |key,value|
				@contact.phones.build(value)
			end
		end
		if @contact.save
			redirect_to root_path, notice: 'Contact was successfully created.'
		else
			flash[:error] = @contact.errors.full_messages.to_sentence
			render :new
		end
	end

	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :email)
	end

	def address_params
		params.require(:contact).permit(addresses_attributes: [:address, :country])
	end

	def phone_params
		params.require(:contact).permit(phones_attributes: [:phone])
	end
end
