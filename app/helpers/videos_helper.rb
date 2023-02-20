module VideosHelper
  def categories
    Category.all.pluck(:name, :id)
  end
end
