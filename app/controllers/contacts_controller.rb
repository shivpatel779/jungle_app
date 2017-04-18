class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = current_user.contacts
  end

  def show;end

  def new
    @contact = Contact.new
  end

  def edit;end

  def create
    parse_date(params) if params[:contact][:birthday].present?  
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      flash[:success] = 'Contact was successfully created.'
      redirect_to @contact
    else
      render :new
    end
  end

  def update
    parse_date(params) if params[:contact][:birthday].present?  
    if @contact.update(contact_params)
      flash[:success] = 'Contact was successfully updated'
      redirect_to @contact
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
  end

  private

    def set_contact
      @contact = current_user.contacts.friendly.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :address, :company, :birthday)
    end

    def parse_date(params)
      birthday = DateTime.strptime(params[:contact][:birthday], "%m/%d/%Y") 
      params[:contact][:birthday] = birthday
    end
end
