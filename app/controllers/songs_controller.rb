class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to artists_path
  end

  def destroy
    @song=Song.find(params[:id])
    @song.destroy
    redirect_to root_path
  end

  private

  def song_params
      params.require(:song).permit(:name, :length_min, :length_sec, :artist_id)
  end
end
