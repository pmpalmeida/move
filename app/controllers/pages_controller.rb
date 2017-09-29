class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

    @cities = City.all

    @pprofile = Pprofile.all.reverse
      @pprofile1 = @pprofile[0]
      @pprofile2 = @pprofile[1]
      @pprofile3 = @pprofile[2]

      @user1 = @pprofile1.user
      @user2 = @pprofile2.user
      @user3 = @pprofile3.user


  end

end
