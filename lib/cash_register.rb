class CashRegister
    attr_accessor :total, :discount, :items, :previous_total
    
    def initialize(emp_discount = nil)
        @total = 0
        @discount = emp_discount
        @items = []
    end

    def discount
        @discount
    end

    def items
        @items
    end

    def add_item(item, price, quantity = 1)
        @previous_total = total
        @total += (price * quantity)
        quantity.times {@items << item}
    end

    def apply_discount
        if @discount
            "After the discount, the total comes to $#{@total -= (@total * (@discount/100.0)).to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @previous_total
    end
end