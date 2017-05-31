class Profile < ApplicationRecord
  belongs_to :listing, optional: true
  belongs_to :user
end
