class DreamsController < ApplicationController
  before_action :authenticate_user!
  def index
    @other_dreams = MainProfile.where.not(user_id: current_user.id)
  end
  def show
    @user = User.find(current_user.id)
    @main_profile = MainProfile.where(user_id: current_user.id).first
    @item = Item.where(user_id: current_user.id)
  end
end
