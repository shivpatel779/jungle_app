require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  
  describe "GET #index" do
    it "responds with an HTTP 302 status code" do
      get :index
      puts "$$$$$$$$$$$#{response.methods}"
      puts "****#{response.status}"
      puts "****#{response.code}"
      #expect(response).to be_success
      expect(response).to have_http_status(302)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the Contacts into @Contacts" do
      Contact1, Contact2 = Contact.create!, Contact.create!
      get :index
      expect(assigns(:Contacts)).to match_array([Contact1, Contact2])
    end
  end

end
