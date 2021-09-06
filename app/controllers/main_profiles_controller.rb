class MainProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index_new, only: [:new, :create]
  before_action :move_to_index, only: [:edit, :update]
  def new
    @main_profile = MainProfile.new
  end
  def create
    @main_profile = MainProfile.new(params_main_profile)
    if @main_profile.save
      redirect_to dream_path(current_user.id)
    else
      render :new
    end
  end
  def edit
    @main_profile = MainProfile.where(user_id: params[:id]).first
  end
  def update
    @main_profile = MainProfile.where(user_id: current_user.id).first
    if @main_profile.update(params_main_profile)
      redirect_to dream_path(current_user.id)
    else
      render :edit
    end
  end
  private
  def params_main_profile
    params.require(:main_profile).permit(:user_name, :user_profile, :image, :mission, :mission_ex, :URL_twitter, :URL_facebook, :URL_instagram, :dead_line).merge(user_id: current_user.id)
  end
  def move_to_index_new
    if MainProfile.exists?(user_id: current_user.id)
      redirect_to root_path
    end
  end
  def move_to_index
      if current_user.id != params[:id]
        redirect_to root_path
      end
  end
end
