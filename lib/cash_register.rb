
class CashRegister 
  attr_accessor :total, :last_transaction, :discount
  @@total_items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @total
    quantity.times {@@total_items << title}
  end 
  
  def apply_discount 
    new_total = @total *= (1-(@discount.to_f/100))).to_i
    if new_total == 0
      "There is no discount to apply"
    else 
      "After the discount, the total comes to #{new_total}."
    end 
  end 
  
  def items 
    @@total_items 
  end 
  
  def void_last_transaction
  end 
  
end 