class Shoe < ApplicationRecord
    # relationships
    # validations
    validates :price, presence: true 


    #custom reader/writer methods 
    def brand_and_color
        # "Nike - lime green"
        "#{self.brand} - #{self.color}"
    end  

    def self.order_by_price
        order(price: :desc)
    end

    def self.most_expensive_shoes
        where("price > 50")
    end

end
