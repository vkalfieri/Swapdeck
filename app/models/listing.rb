class Listing < ApplicationRecord
  belongs_to :condition
  belongs_to :category
  belongs_to :subcategory
  belongs_to :delivery
  belongs_to :trade
  belongs_to :seller
  belongs_to :user
end
