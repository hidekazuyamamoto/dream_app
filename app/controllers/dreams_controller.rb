class DreamsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    if user_signed_in?
      @other_dreams = MainProfile.where.not(user_id: current_user.id)
    else
      @other_dreams = MainProfile.all
    end
  end
  def show
    @user = User.find(current_user.id)
    @main_profile = MainProfile.where(user_id: current_user.id).first
    @item = Item.where(user_id: current_user.id)
  end
end
