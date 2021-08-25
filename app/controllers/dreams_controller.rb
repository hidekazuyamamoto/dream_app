class DreamsController < ApplicationController
  def index
  end
  def show
    @user = User.find(current_user.id)
    @main_profile = MainProfile.where(user_id: current_user.id).first
  end
end
