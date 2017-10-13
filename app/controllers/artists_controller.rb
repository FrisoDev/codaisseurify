class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end
  # scope :order_by_name, -> { order(:name) }
end
