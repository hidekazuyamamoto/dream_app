class SubPurchasedLogsController < ApplicationController
  def index
  end
  def new
    @item = Item.find(params[:item_id])
    @sub_purchased_log = SubPurchasedLog.new
  end
  def create
    @item = Item.find(params[:item_id])
    @sub_purchased_log = SubPurchasedLog.new(params_sub_purchased_log)
    if @sub_purchased_log.valid?
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @sub_purchased_log.price, 
        card: params_sub_purchased_log[:token],    
        currency: 'jpy'              
      )
      @sub_purchased_log.save
      redirect_to item_sub_purchased_logs_path(params[:item_id])
    else
      render :new
    end
  end
  def params_sub_purchased_log
    params.require(:sub_purchased_log).permit(:quantitiy, :price, :name, :postal_code, :area_id, :city, :address, :where_id).merge(item_id: params[:item_id], token: params[:token])
  end 
end