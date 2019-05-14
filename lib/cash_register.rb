class CashRegister
    attr_accessor :total, :discount, :items, :previous_total
    
    def initialize(emp_discount = nil)
        @total = 0
        @discount = emp_discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        self.previous_total = total
        self.total += (price * quantity)
        quantity.times {self.items << item}
    end

    def apply_discount
        if self.discount
            "After the discount, the total comes to $#{self.total -= (self.total * (self.discount/100.0)).to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.previous_total
    end
end