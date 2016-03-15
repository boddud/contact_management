require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
	describe "GET index" do

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end

		it 'Get all contacts' do
			get :index
      		expect(assigns(:contacts)).to eq([])
		end

		it 'create contact' do
			post :create, contact: FactoryGirl.attributes_for(:contact, addresses_attributes: {"0" =>  FactoryGirl.attributes_for(:address)}, phones_attributes: { "0" => FactoryGirl.attributes_for(:phone)})
			response.should redirect_to(root_path)
			Contact.where(email: FactoryGirl.attributes_for(:contact)[:email]).destroy_all
		end
	end
end