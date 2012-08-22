class ShoppingList
  def initialize
    @list = Hash.new
  end

  def to_s
    result = Array.new
    @list.each { |item, qty|
      result << "#{item.ljust 15, '.'} #{qty}"
    }
    result.join("\n")
  end


  def item
    yield self
    if @list.has_key? @item_name
      @list[@item_name] += @qty.to_i
    else
      @list[@item_name] = @qty.to_i
    end
  end

  def name item_name
    @item_name = item_name
  end

  def quantity qty
    @qty = qty
  end
end