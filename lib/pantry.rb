class Pantry
  attr_reader :stock,
              :stock_check



  def initialize
    @stock = {}
    @stock_check = 0
  end

  def stock_check(item)
    @stock.keys
    #hard_coded...I think
  end

  def restock(item, quantity)
    @stock[item] = quantity
  end



end
