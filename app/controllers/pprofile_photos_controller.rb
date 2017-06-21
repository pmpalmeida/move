class PprofilePhotosController < ApplicationController


  @pprofilephoto = Pprofilephoto.find(params[:id])
  @pprofilephoto =



  params.require(:pprofilephoto).permit(:photo1, :photo1_cache)
end


