class Listings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|

      t.integer :price
      t.integer :card_number
      t.string :card_name
      t.string :card_set

      t.string :condition
      t.string :delivery_type
      t.text :description
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true
      t.references :user, foreign_key: true
      t.references :trade_type, foreign_key: true

      t.timestamps
    end
  end
end
