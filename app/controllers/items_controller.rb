class ItemsController < ApplicationController
  def index
    @item = Item.new
  end

  def new
    @items = Item.new
  end

  def create
    Item.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_explanation, :item_name, :conditon_id, :prefecture_id, :category_id, :price, :delivery_id, :time_required_id, :user).merge(user_id: current_user.id)
  end
end
