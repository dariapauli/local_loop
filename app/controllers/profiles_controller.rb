class ProfilesController < ApplicationController
  before_action :find_profile, only: %i[show edit update]
  before_action :authenticate_user!
  # only profile owner can edit or update post
  # only signed in users can see show page of profile
  # only signed in users can see profile avatar in events show page

  def show
    @user = current_user
    @organizer = User.find(params[:id])
    @events = @organizer.events
    @profile = Profile.find(params[:id])
    @chatroom = Chatroom.find_by_users(@profile.user, current_user)
  end

  def edit
    @user = current_user
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:id, :last_name, :username, :birthdate, :gender, :bio, :interests, :postcode, :city, :user_id, :photo)
  end
end
