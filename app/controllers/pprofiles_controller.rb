class PprofilesController < ApplicationController

  def show
    @pprofile = Pprofile.find(params[:id])
  end

end
