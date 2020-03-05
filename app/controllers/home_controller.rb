class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
     end
  end


  def search
    if params.has_key?(:tag)
      @posts = Tag.find_by(:name => params[:tag]).posts
    end
  end
end
