class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

end
