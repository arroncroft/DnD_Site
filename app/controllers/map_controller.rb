class MapController < ApplicationController
  def index
    @party_members = PartyMember.order(:name)
  end
end
