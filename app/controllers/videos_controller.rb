class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
  end
end