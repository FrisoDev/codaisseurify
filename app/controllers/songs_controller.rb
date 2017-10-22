class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def index
    @songs = @artist.songs
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to @artist, notice: "You have added a song to the artist"
    else
      render :new
    end
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
