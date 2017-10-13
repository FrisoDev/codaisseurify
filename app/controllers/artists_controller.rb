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

  def songs
    @songs = @artist.songs
  end

  def destroy
    artist=Artist.find(params[:id])
    artist.destroy_all
    redirect_to root_path
  end


end
