class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    if current_user == @user
      if !@user.pprofile.nil?
        @pprofile = @user.pprofile
        @pprofile.city = @user.cities.first.name
      end
    else
      redirect_to root_path
    end
  end

end



