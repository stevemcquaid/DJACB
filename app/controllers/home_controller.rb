class HomeController < ApplicationController
  def index
    @songs = Song.all
    @recent_songs = Song.recent
  end
end
