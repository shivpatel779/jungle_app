require 'rails_helper'
require 'support/request_spec_helper'

RSpec.describe ContactsController, type: :controller do
  
  describe "GET #index" do
    it "responds with an HTTP 302 status code" do
      get :index
      expect(response).to have_http_status(302)
    end

    it "user should force to sign in to see his contacts" do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end

    it "only registered user can see his contacts" do
      user = User.create!(email: "user@example.org", password: "very-secret")
      sign_in user
      get :index
      expect(response).to render_template(:index)
    end
  end

end
