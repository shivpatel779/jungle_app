require "spec_helper"

describe "contacts/index.html.haml" do
  it "displays all the contacts" do
    assign(:contacts, [
      stub_model(Contact, :name => "contact_one"),
      stub_model(Contact, :name => "contact_two")
    ])

    render
    response.body.should match(/contact_one/)
    response.body.should match(/contact_two/)
  end
end