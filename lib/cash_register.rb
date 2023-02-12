class CashRegister

    attr_accessor :total
    attr_accessor :discount
    attr_accessor :item
    attr_accessor :one_item_price

    def initialize(employee_discount = 0)
        @discount = employee_discount
        @total = 0
        @item = []
    end

    def add_item(title,price,quantity = 1)
        self.one_item_price = price*quantity
        self.total += self.one_item_price
        quantity.times do
            self.item << title
        end
    end

    def apply_discount
        if self.discount >  0
            self.total -= self.total*self.discount/100
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        self.item
    end

    def void_last_transaction
        self.total -= self.one_item_price
    end
end

