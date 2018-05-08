class Faction < ApplicationRecord
  has_many :characters
  belongs_to :place, required: false

  mount_uploader :image, PictureUploader
end
