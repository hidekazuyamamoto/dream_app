class ItemsController < ApplicationController
  def new
    @item=Item.new
  end
  def create
    @item=Item.new(params_item)
    if @item.save
      redirect_to dream_path(current_user.id)
    else
      render :new
    end
  end
  def show
    @item = Item.find(params[:id])
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    if @item.update(params_item)
      redirect_to dream_path(current_user.id)
    else
      render :edit
    end
  end
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to dream_path(current_user.id)
  end
  private
  def params_item
    params.require(:item).permit(:item_image, :item_name, :explanation, :price).merge(user_id: current_user.id)
  end
end
