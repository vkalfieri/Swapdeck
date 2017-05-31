class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :listing, optional: true
end
