class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def index
    redirect_to contacts_path if current_user.present?
  end
end
