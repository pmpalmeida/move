class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home

    @cities = City.all
    @photo = Book.last

  end

end
