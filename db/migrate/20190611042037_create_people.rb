class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
