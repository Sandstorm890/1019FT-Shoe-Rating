class ShoesController < ApplicationController

    def index
        @shoes = Shoe.all
    end

    def show
        @shoe = Shoe.find(params[:id])
    end

    def most_expensive
        @shoes = Shoe.most_expensive_shoes.order_by_price
        render :index
    end

    def new
        @shoe = Shoe.new
    end

    def create
        @shoe = Shoe.new(shoe_params)
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
        params.require(:shoe).permit(:color, :brand, :condition, :price)
    end
end