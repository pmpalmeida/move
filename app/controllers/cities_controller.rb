class CitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def show

    @city = City.find(params[:id])

  end

end
