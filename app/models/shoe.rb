class Shoe < ApplicationRecord
    # relationships
    # validations
    validates :brand, presence: true, length: {minimum: 2, message: "should be longer than 2 letters!!!!"}
    validates :condition, presence: true, two_word: true
    validates :color, presence: true, two_word: true, uniqueness: {scope: [:brand, :price], message: "has already been used with that brand and price"}
    validates :price, presence: true, numericality: {greater_than: 0, less_than: 5000}
    validate :not_too_many_shoes

    def not_too_many_shoes  # validations in the model should be specific just to THAT class
        if Shoe.all.length >= 9 
            errors.add(:base, :invalid, message: "You've made too many shoes")
        end
    end

    # two_word validatator --> the input is more than 2 words in length 

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
