class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
     end
  end


  def tags
    if params.has_key?(:tag)
      @posts = Tag.find_by(:name => params[:tag]).posts
    end
  end

  def search
    if params.has_key?(:term)
      #Topic.where("name like ?", "%apple%")
      @posts = Post.where("title like ?", "%#{params[:term]}%")
    else
      @posts = Post.order("created_at desc")
    end
    respond_to do |format|
      format.html
      format.json  { render json: @posts}
    end
  end

  def suggestions
    if params.has_key?(:term)
      #Topic.where("name like ?", "%apple%")
      @posts = Post.where("title like ?", "%#{params[:term]}%")
    else
      @posts = Post.order("created_at desc")
    end
   
    respond_to do |format|
      format.json  { render json: @posts.map(&:title).to_json}
    end
  end

  def read
    if params.has_key?(:id)
      @post = Post.find(params[:id])
    end
  end
  
end
