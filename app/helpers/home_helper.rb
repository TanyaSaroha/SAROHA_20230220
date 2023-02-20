module HomeHelper

  def categories
    [["All", "all"]] + Category.all.pluck(:name, :id)
  end
end
