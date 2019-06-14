class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.time :date
      t.integer :category_id

      t.timestamps
    end
  end
end
