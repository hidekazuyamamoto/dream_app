class SubPurchasedLogsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @sub_purchased_log = SubPurchasedLog.new
  end
  def create
  end 
end