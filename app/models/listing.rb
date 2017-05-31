class Listing < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true
  belongs_to :delivery, optional: true
  belongs_to :user, optional: true
end
