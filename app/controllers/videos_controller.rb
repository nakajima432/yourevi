class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video =Video.new
  end

  def create
    Video.create(video_params)
  end

  private
  def video_params
    params.require(:video).permit(:title, :content)
  end
end