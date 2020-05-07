class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video =Video.new
  end

  def create
    Video.create(video_params)
    redirect_to videos_path
  end

  # def show
  #   @post = Post.find(params[:id])
  # end

  private
  def video_params
    params.require(:video).permit(:title, :youtuber_name, :url, :detail )
  end

end