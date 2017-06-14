class PprofilesController < ApplicationController

  def show
    @pprofile = Pprofile.find(params[:id])
  end

  def update
    @pprofile = Pprofile.find(params[:id])
    @pprofile.update(pprofile_params)
    redirect_to payments_path
  end

end





  private


  def pprofile_params
    params.require(:pprofile).permit(:name, :phone_number, :city, :neighborhood, :description, :twitter, :instagram, :site, :forum)
  end
