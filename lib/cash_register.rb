
class CashRegister 
  attr_accessor :total, :last_transaction
  @@items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @total
    items.times{|item| @@items << title}
  end 
  
  def apply_discount 
    if @discount > 0 
      new_total = @total * (@discount.to_f / 100)
      new_total.to_i
      "After the discount, the total comes to #{new_total}."
    else 
      "There is no discount to apply"
    end 
  end 
  
  def items 
    @@items 
  end 
  
  def void_last_transaction
  end 
  
end 