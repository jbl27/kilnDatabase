class KilnsController < ApplicationController
  def show
    @user = current_user
    @kiln = @user.kilns.find(params[:id])
  end

  def new
    @user = current_user
    @workshop = @user.workshops.find(params[:workshop_id])
  end

  def create
    @user = current_user
    @workshop = @user.workshops.find(params[:workshop_id])
    @kiln = @workshop.kilns.create(kiln_params)
    redirect_to workshop_kiln_path(@workshop, @kiln)
  end

  private

  def kiln_params
    params.require(:kiln).permit(:name, drying_method_ids: [])
  end
end
