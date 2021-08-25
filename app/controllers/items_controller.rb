class ItemsController < ApplicationController
  def new
    @item=Item.new
  end
  def create
    @item=Item.new(params_item)
    if @item.save
      redirect_to 
    else
      render :new
    end
  end
  private
  def params_item
    params.require(:item).permit(:item_image, :name, :explanation, :price).merge(user_id: current_user.id)
  end
end
