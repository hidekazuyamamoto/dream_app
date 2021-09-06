class ItemsController < ApplicationController

  before_action :item_set, except: [:new, :create]
  
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
  end
  def edit
  end
  def update
    if @item.update(params_item)
      redirect_to dream_path(current_user.id)
    else
      render :edit
    end
  end
  def destroy
    @item.destroy
    redirect_to dream_path(current_user.id)
  end

  private

  def params_item
    params.require(:item).permit(:item_image, :item_name, :explanation, :price).merge(user_id: current_user.id)
  end
  def item_set
    @item = Item.find(params[:id])
  end
  
end
