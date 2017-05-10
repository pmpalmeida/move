class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    if current_user == @user
      if !@user.pprofile.nil?
        @pprofile = @user.pprofile
      end
    else
      redirect_to root_path
    end
  end

end



