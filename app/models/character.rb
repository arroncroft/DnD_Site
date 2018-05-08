class Character < ApplicationRecord
  belongs_to :faction, required: false
  belongs_to :place, required: false

  mount_uploader :image, PictureUploader
end
