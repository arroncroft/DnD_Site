class PartyMember < ApplicationRecord
  belongs_to :place, required: false
end
