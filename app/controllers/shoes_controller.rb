class ShoesController < ApplicationController
    before_action :redirect_if_not_logged_in
    layout "shoe"

    def index
        # if this request is a nested route
        if params[:brand_id] && @brand = Brand.find(params[:brand_id])
            @shoes = @brand.shoes
            # if it is a nested route, then lets only send in that brand's shoes
        else # otherwise 
            #show all shoes
             @shoes = Shoe.all
        end
    end

    def show
        @shoe = Shoe.find(params[:id])
    end

    def most_expensive
        @shoes = Shoe.most_expensive_shoes.order_by_price
        render :index, layout: "random"
    end

    def new
        if params[:brand_id] && @brand = Brand.find(params[:brand_id])
            # instantiate a shoe w/ the brand already assigned
            @shoe = Shoe.new(brand_id: params[:brand_id])
            #@shoe = @brand.shoes.build
        else
            @shoe = Shoe.new
            # associate our show to a blank copy of a brand
            @shoe.build_brand
        end
    end

    def create

        @shoe = Shoe.new(shoe_params)
        if params[:brand_id] #if it's nested
            @brand = Brand.find(params[:brand_id])  #give it an @brand variable
        end
     
        if @shoe.save 
            redirect_to shoes_path
        else
            render :new
        end
    end

    def edit 
        @shoe = Shoe.find(params[:id])
    end

    def update
        @shoe = Shoe.find(params[:id])
        @shoe.update(shoe_params)
        if @shoe.valid?
            redirect_to shoes_path 
        else
            render :edit 
        end
    end

    def destroy
        @shoe = Shoe.find(params[:id])
        @shoe.destroy
        redirect_to shoes_path 
    end

    private

    def shoe_params
        params.require(:shoe).permit(:color, :condition, :price, :brand_id,  brand_attributes: [:name, :year_founded])
    end
end