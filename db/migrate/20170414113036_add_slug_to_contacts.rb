class AddSlugToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :slug, :string
    add_index :contacts, :slug
  end
end
