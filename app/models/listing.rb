class Listing < ApplicationRecord
  attr_accessor :image, :remote_image_url

  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true
  belongs_to :delivery, optional: true
  belongs_to :user, optional: true


  mount_uploader :image, AvatarUploader
end
