class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
     end
  end
end
