module HomeHelper

  def categories_filter
    [["All", "all"]] + Category.all.pluck(:name, :id)
  end
end
