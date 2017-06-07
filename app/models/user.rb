class User < ApplicationRecord

  has_many :request_items
  mount_uploader :image, ImageUploader

end
