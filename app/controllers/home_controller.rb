class HomeController < ApplicationController

  def index
    @category = Category.find_by(id: params[:category_id])
    if @category
      @videos = @category.videos.order(:created_at)
    else
      @videos = Video.all.order(:created_at)
    end

    respond_to do |format|
      format.js { render :js => "window.location='#{ root_path(category_id: @category&.id) }'" }
      format.html { render :index }
    end

  end
end
