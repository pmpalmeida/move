class PprofilesController < ApplicationController

skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @pprofile = Pprofile.find(params[:id])
  end

  def update
    @pprofile = Pprofile.find(params[:id])
    @pprofile.update(pprofile_params)
    @pprofile.cityname = @pprofile.city.name
    #@pprofile.city_id = City.find(@pprofile.city.to_i)
    @pprofile.save

    @doc = @pprofile.doc

    if !@doc.is_ready
      #@doc = Doc.new
      #@doc = @pprofile.doc
      #@doc.save

      #@doc = Doc.create
      #@pprofile.doc = @doc
      #@pprofile.doc.save

      redirect_to doc_path(@doc) #redirecionar para documentacao
    else
      redirect_to user_path(current_user) #redirecionar para escolha de plano
    end
  end



  private

  def pprofile_params
    params.require(:pprofile).permit(:name, :phone_number,:city_id, :neighborhood, :description, :twitter, :instagram, :site, :forum, :photo_profile, :photo_profile_cache, :photo1, :photo1_cache, :photo2, :photo2_cache, :photo3, :photo3_cache, :photo4, :photo4_cache, :photo5, :photo5_cache, :photo6, :photo6_cache, :photo7, :photo7_cache)
  end

end
