class PartyMember < ApplicationRecord
  belongs_to :place, required: false

  mount_uploader :image, PictureUploader
end
