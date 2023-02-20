class VideosController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :file, :category_id)
  end

end
