class ProfilesController < ApplicationController
  before_action :find_profile, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def show
    
  end
end
