class Place < ApplicationRecord
  has_many :characters
  has_many :factions
  has_many :party_members
  belongs_to :region
end
