class MainProfilesController < ApplicationController
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
    @main_profile = MainProfile.where(user_id: params[:id]).first
    if @main_profile.update(params_main_profile)
      redirect_to dream_path(current_user.id)
    else
      render :edit
    end
  end
  private
  def params_main_profile
    params.require(:main_profile).permit(:name, :user_profile, :image, :mission, :mission_ex, :URL_twitter, :URL_facebook, :URL_instagram).merge(user_id: current_user.id)
  end
end
