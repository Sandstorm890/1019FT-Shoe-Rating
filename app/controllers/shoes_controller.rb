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
end