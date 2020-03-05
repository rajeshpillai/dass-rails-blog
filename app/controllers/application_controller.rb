class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]
  before_action :configure_user_params, if: :devise_controller?

  protected
  def configure_user_params
    devise_parameter_sanitizer
      .permit(:sign_up, keys: [:username, :admin, :email, :password])

    devise_parameter_sanitizer
      .permit(:account_update, keys: [:username, :admin, :email, :password, :current_password])
  end
end
