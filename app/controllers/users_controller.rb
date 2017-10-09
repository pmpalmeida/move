class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])
    @cities = City.all

    if current_user == @user
      if !@user.pprofile.nil?
        @pprofile = @user.pprofile
        @doc = @pprofile.doc
        # @pprofile.city = @user.cities.first.name
      else
        @user.is_female = true
        @user.save

        if @user.is_female

          @pprofile = Pprofile.create
          @user.pprofile = @pprofile
          @user.save

          @doc = Doc.new
          @doc.is_ready = false
          @doc.save
          @pprofile.doc = @doc
          @pprofile.save

        end
      end
    else
      redirect_to root_path
    end
  end

end



