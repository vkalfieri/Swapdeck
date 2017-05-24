# class CreateListings < ActiveRecord::Migration[5.0]
#   def change
#     create_table :listings do |t|
#       t.integer :listing_id
#       t.text :description
#       t.references :condition_id, foreign_key: true
#       t.integer :card_number
#       t.string :card_name
#       t.text :card_set
#       t.references :category, foreign_key: true
#       t.references :subcategory, foreign_key: true
#       t.references :delivery, foreign_key: true
#       t.decimal :price
#       t.references :trade, foreign_key: true
#       t.references :seller, foreign_key: true
#       t.references :user, foreign_key: true
#       t.integer :stripe_id
#
#       t.timestamps
#     end
#   end
# end
