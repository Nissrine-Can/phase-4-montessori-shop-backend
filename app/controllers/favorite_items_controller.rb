class FavoriteItemsController < ApplicationController
    def create 
        favorite_item = current_user.favorite_items.create(favorite_item_params)
        if favorite_item.valid?
            render json: favorite_item.item, status: :created
        else
            render json: favorite_item.errors, status: :unprocessable_entity
        end
    end

    

    def destroy 
        render json: FavoriteItem.find_by(item_id: Item.find(params[:id]).id, user_id: current_user.id).destroy
    end

    private

    def favorite_item_params
        params.require(:favorite).permit(:item_id, :user_id)
    end


end
