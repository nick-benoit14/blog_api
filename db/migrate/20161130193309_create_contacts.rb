class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :message
      t.string :name
      t.timestamps
    end
  end
end
