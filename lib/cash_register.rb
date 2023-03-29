# require 'pry'


class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end
  
    def add_item(title, amount, quantity = 1)
      self.last_transaction = amount * quantity
      self.total += self.last_transaction
      quantity.times do
        self.items << title
      end
    end
  
    def apply_discount
      if discount == 0
                    "There is no discount to apply."
                else
                 @total -= (total * discount / 100)
                 "After the discount, the total comes to $#{total}."
                end
      # if self.discount != 0
      #   discount_as_percent = (100.0 - self.discount.to_f) / 100
      #   self.total = (self.total * discount_as_percent).to_i
      #   "After the discount, the total comes to $#{self.total}."
      # else
      #   "There is no discount to apply."
      # end
    end
  
    def void_last_transaction
      self.total -= self.last_transaction
    end
  end
  
# class CashRegister

#     attr_accessor :discount, :total, :items

#     def initialize(discount=0)
#         @discount = discount
#         @total = 0
#         @items = []
#     end

#     def add_item(title, price, quantity=1)
#        @total += price*quantity
#     end

#     def apply_discount
#         if discount == 0
#             "There is no discount to apply."
#         else
#          @total -= (total * discount / 100)
#          "After the discount, the total comes to $#{total}."
#         end
#     end

#     # def items(item)
#     #     items = []
#     #     items << item
#     # end

# end
