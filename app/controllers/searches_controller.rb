class SearchesController < ApplicationController
  
  def search
    if params[:query].present?
      @contacts = current_user.contacts.whose_name_starts_with(params[:query])
    else
      @contacts = current_user.contacts
    end
  end

end
