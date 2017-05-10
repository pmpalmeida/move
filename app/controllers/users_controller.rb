class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if !@user.pprofile_id.nil?
      @pprofile = @user.pprofile_id
    end

  end

end



