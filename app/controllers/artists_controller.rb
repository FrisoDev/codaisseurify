class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def contact;
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end
end