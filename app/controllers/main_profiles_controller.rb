class MainProfilesController < ApplicationControlle
  def new
    @main_profile = MainProfile.new
  end
  def create
    @main_profile = MainProfile.new
    if @main_profile.create
      redirect_to "dreams#show"
    else
      render :new
    end
end
