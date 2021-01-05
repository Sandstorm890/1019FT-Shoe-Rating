class  TwoWordValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)

        # record is the full shoe object 
        # attribute is :color but it's really whatever we applied this validation to
        # value is "brown" or whatever color was typed in
        # check to see if "brown" is not 2 words or greater
    
        if value.split(" ").length < 2
            #add an error here 
            record.errors.add(attribute, "needs to be at least 2 words")
        end 
    end
end