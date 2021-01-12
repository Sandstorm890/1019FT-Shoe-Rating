module ShoesHelper

    # a totaly ruby world 
    def display_price
        if @shoe.price > 50 
             content_tag(:h5, "Price: #{number_to_currency(@shoe.price)}")
        else 
             content_tag(:h2, "Price: #{number_to_currency(@shoe.price)}")
        end  
     end


     def display_index_header
          if @brand 
               content_tag(:h1, "#{@brand.name}  Shoes")
          else 
               content_tag(:h1, "All Shoes")
          end 
     end

     def display_new_header
          if @brand 
               content_tag(:h1, "Create a #{@brand.name} Shoe")
          else 
               content_tag(:h1, "Create a Shoe")
          end 
     end


     def brand_form_fields(f)
          if @brand   # params[:brand_id]
               f.hidden_field :brand_id, value: @brand.id 
          else 
               render partial: "brand_fields", locals: { f: f } 
          end 
     end
end
