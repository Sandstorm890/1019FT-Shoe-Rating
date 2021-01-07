module ShoesHelper

    # a totaly ruby world 
    def display_price
        if @shoe.price > 50 
             content_tag(:h5, "Price: #{number_to_currency(@shoe.price)}")
        else 
             content_tag(:h2, "Price: #{number_to_currency(@shoe.price)}")
        end  
     end
end
