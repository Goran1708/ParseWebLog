class AscendingOrderer

  def order(items)
    items.sort_by {|k, v| -v}
  end
end
