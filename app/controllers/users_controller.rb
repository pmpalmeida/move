class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    if current_user == @user
      if !@user.pprofile_id.nil?
        @pprofile = @user.pprofile_id
      end
    else
      redirect_to root_path
    end
  end

end



