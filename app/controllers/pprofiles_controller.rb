class PprofilesController < ApplicationController

  def show
    @pprofile = Pprofile.find(params[:id])
  end

  def update
    @pprofile = Pprofile.find(params[:id])
    @pprofile.update(pprofile_params)
    redirect_to user_path(current_user)
  end

end





  private


  def pprofile_params
    params.require(:pprofile).permit(:name, :phone_number, :city, :neighborhood, :description, :twitter, :instagram, :site, :forum, :photo_profile, :photo_profile_cache, :photo1, :photo1_cache, :photo2, :photo2_cache, :photo3, :photo3_cache, :photo4, :photo4_cache, :photo5, :photo5_cache, :photo6, :photo6_cache, :photo7, :photo7_cache)
  end
