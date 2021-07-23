class WorkshopsController < ApplicationController
  def show
    @user = current_user
  end

  def new
    @user = current_user
  end

  def create
    @user = current_user
    @workshop = @user.workshops.create(workshop_params)
    redirect_to workshop_path(@workshop)
  end

  private

  def workshop_params
    params.require(:workshop).permit(:name)
  end
end
