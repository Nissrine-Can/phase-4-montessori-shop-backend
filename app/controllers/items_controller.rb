class ItemsController < ApplicationController
    
    def index 
        items = Item.all
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
    
end
