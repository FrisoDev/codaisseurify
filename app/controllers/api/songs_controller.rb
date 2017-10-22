class Api::SongsController < ApplicationController
  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params)

    if @song.save
     render status: 201, json: {
       message: "Song successfully created",
       room: room
     }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    @song=Song.find(params[:id])
    @song.destroy
    render status: 200, json: {
      message: "Song was successfully removed"
    }.to_json
  end

  private
  def song_params
      params.require(:song).permit(:name, :length_min, :length_sec, :artist_id)
  end
end
