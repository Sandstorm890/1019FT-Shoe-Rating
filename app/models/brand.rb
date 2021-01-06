class Brand < ApplicationRecord
    has_many :shoes
    validates :name, presence: true, length: {minimum: 2, message: "should be longer than 2 letters!!!!"}
    accepts_nested_attributes_for :shoes, reject_if: proc { |attributes| attributes['color'].blank? || attributes['condition'].blank? || attributes['price'].blank?  }

end
 