class SongsController < ApplicationController
  def new;
    @song = Song.new
  end

  def create
    @song = Song.new(params[:id])
end
end
