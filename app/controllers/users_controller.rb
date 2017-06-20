class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])

    if current_user == @user
      if !@user.pprofile.nil?
        @pprofile = @user.pprofile
        # @pprofile.city = @user.cities.first.name
      else
        @user.is_female = true
        @user.save

        if @user.is_female

          @pprofile = Pprofile.new
          @pprofile.save
          @user.pprofile = @pprofile

          @book = Book.new
          @book.is_ready = false
          @book.pprofile = @pprofile
          @book.save

          @doc = Doc.new
          @doc.is_ready = false
          @doc.pprofile = @pprofile
          @doc.save

        end
      end
    else
      redirect_to root_path
    end
  end

end



