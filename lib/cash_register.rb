class CashRegister
  attr_reader
  attr_accessor :discount, :total, :item


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
    @l = []
  end

  def add_item(item, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times do
      @item.push(item)
    end
    @l.push(price)
  end

  def apply_discount
    if discount != 0
      @total = @total - @total*discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @l.pop
  end
end
