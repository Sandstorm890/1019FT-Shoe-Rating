# Rails App 10/19 Cohort

## Jan 6th Tasks:
- Review how the .new method works and what methods are actually being called behind the scenes. 
- Implement a nested form for a belongs_to relationship
- Optionally allow a user to choose from a brand that already exists
- Implement a nested form for a has_many relationship
- Understand the methods provided by the `accepts_nested_attributes_for` macro
- Create custom attribute writers and understand why/when they are useful


## Jan 5th Tasks:
- Explain why we use model validations rather than view or controller validations
- Use the [Active Record Validations Guide](https://guides.rubyonrails.org/active_record_validations.html#common-validation-options) to add standard validations to our data
- Display error messages using `.errors`
- Create custom validations

## Dec 17th Tasks:
- Create a form for making new shoes and the corresponding new/create actions
- Demonstrate creating the same form with form_tag, form_for, and form_with
- Create the edit/update actions for editing a shoe
- Add a button to delete a shoe

### Form Examples:

```
<form method="POST" action="/shoes">
    <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
    <label for="shoe_brand">Brand:</label>
    <input id="shoe_brand" type="text" name="shoe[brand]" value="<%= @shoe.brand%>">
    <label for="shoe_price">price:</label>
    <input id="shoe_price" type="integer" name="shoe[price]" step="0.01" >
    <input type="submit" value="Create Shoe">
</form>

------------------------------
<%= form_tag(shoes_path) do %> 
    <%= label_tag(:brand) %>
    <%= text_field_tag(:"shoe[brand]") %>
    <%= submit_tag("Create Shoe") %>
<% end %> 
------------------------------

<%= form_for(@shoe) do |f| %>
    <%= f.label(:brand) %> 
    <%= f.text_field :brand %> 
    <%= f.label(:price) %> 
    <%= f.number_field :price, step: 0.01 %> 
    <%= f.submit %> 
<% end %>

------------------------------

<%= form_with(model: @shoe) do |f| %>
    <%= f.label(:brand) %> 
    <%= f.text_field :brand %> 
    <%= f.label(:price) %> 
    <%= f.number_field :price, step: 0.01 %> 
    <%= f.submit %> 
<% end %>
```

## Dec. 16th Tasks:
- Make a Migration for a Shoe model
    - attributes: brand, color, price, condition
- Make a model file
- Add a few model methods:
    - #name_and_color
    - #display_price
    - .most_expensive_shoe
- Make and Index Route
   - add seed data
- Make a Show Route
- Add links to go from the index to the show route
- Add links to a layout page
- Add a custom route that shows the most expensive shoe