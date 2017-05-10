class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if !@user.pprofile.nil?
      @pprofile = @user.pprofile
    end

  end

end
