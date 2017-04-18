require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is valid with valid attributes" do
    expect(Contact.new(name: 'test')).to be_valid
  end


  it "is not valid without a name" do
    contact = Contact.new(name: nil)
    expect(contact).to_not be_valid
  end

end
