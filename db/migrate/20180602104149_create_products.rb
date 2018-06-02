class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user
      t.numeric :price
      t.string :description
      t.date :deadline
      t.references :location, foreign_key: true
      t.references :category, foreign_key:true

      t.timestamps
    end
  end
end
