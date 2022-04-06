class ItemsController < ApplicationController
before_action :find_item, only: [:show, :update, :destroy, :sold]   

    def index 
        items = Item.where(sold: false)
        render json: items, status: :ok
    end

    def show
          render json: @item, status: :ok
    end

     def create
        item = current_user.sold_items.create(item_params)
        if item.valid?
            render json: item, status: :created
        else
            render json: item.errors.full_messages, status: :unprocessable_entity
        end
     end

     def update
        @item.update!(item_params) 
     end

     def destroy
        @item.destroy
        head :no_content
     end

     def sold 
        @item.update!(sold: true, buyer: current_user)
     end
    
     private

     def item_params
        params.permit(:name, :price, :description)
     end

     def find_item
        @item = Item.find(params[:id])
     end

end
