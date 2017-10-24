class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def create
    artist = Artist.find(params[:artist_id])
    song = artist.songs.new(song_params)

    if song.save
     render status: 200, json: {
       message: "Song successfully created",
       song: song,
     }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    @song=Song.find(params[:id])
    if @song.destroy
    render status: 200, json: {
      message: "Song was successfully removed"
    }.to_json
  else
    render status: 422, json: {
      message: "fku"
    }.to_json
  end
  end

  def destroy_all
    artist = Artist.find(params[:artist_id])
    songs = artist.songs
    songs.destroy_all

    render status: 200, json: {
      message: "All songs gone :("
    }.to_json
  end


  private
  def song_params
      params.permit(:name, :artist_id)
  end
end
