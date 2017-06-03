class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    if current_user == @user
      if !@user.pprofile.nil?
        @pprofile = @user.pprofile
        # @pprofile.city = @user.cities.first.name
      else
        if @user.is_female
          @pprofile = Pprofile.new
          @pprofile.save
          @user.pprofile = @pprofile
        end
      end
    else
      redirect_to root_path
    end
  end

end



