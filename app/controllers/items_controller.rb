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
end
