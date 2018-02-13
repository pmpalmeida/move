class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({ roles: [:is_female] }, :email, :password, :password_confirmation, :name, :photo, :photo_cache, :gender)
    end

    #devise_parameter_sanitizer.permit(:account_update) do |user_params|
    #  user_params.permit( :photo, :photo_cache)
    #end

  end
end

