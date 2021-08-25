class DreamsController < ApplicationController
  def index
  end
  def show
    @main_profile = MainProfile.where(user_id: current_user.id).first
  end
end
