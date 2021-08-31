class DreamsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    main_profile = MainProfile.includes(:user)
    if user_signed_in?
      @other_dreams = main_profile.where.not(user_id: current_user.id)
    else
      @other_dreams = main_profile
    end
  end
  def show
    @user = User.find(params[:id])
    @main_profile = MainProfile.where(user_id: @user.id).first
    item = Item.includes(:user)
    @item = item.where(user_id: @user.id)
  end
end
