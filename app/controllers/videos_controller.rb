class VideosController < ApplicationController

  def index
    redirect_to root_path
  end

  def new
    @video = Video.new
    @categories = Category.all
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to root_path
    else
      @categories = Category.all
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :file, :category_id)
  end

end
