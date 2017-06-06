class PaymentsController < ApplicationController

  def payview

    if !current_user.pprofile.nil?
      if !current_user.pprofile.city.nil?
        @city = City.find(current_user.pprofile.city.to_i)
      end
    else
      redirect_to user_path(current_user)
    end

  end
end
