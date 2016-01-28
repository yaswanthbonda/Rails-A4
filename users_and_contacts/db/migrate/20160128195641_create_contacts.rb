class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :phone_number
      t.text :notes

      t.timestamps null: false
    end
  end
end
