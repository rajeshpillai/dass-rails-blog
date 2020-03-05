class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def admin
    @users = User.where(:id => params[:user_ids]).update_all({admin: true})

    redirect_to :action => :index
  end
end
