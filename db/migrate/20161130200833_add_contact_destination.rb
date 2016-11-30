class AddContactDestination < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :destination_email, :string
  end
end
