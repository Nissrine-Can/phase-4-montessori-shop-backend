class ItemsController < ApplicationController
    
    def index 
        items = Item.where(sold: false)
        render json: items, status: :ok
    end

    def show
        item = Item.find_by(id: params[:id])
        if item
          render json: item, status: :ok
        else 
            render json:  "item not found", status: :not_found
        end
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
        item = Item.find(params[:id])
        item.update!(item_params) 
     end
    
     private

     def item_params
        params.permit(:name, :price, :description)
     end

end
