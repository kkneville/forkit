class LikesController < ApplicationController
  def index
  end

  def new
  end

  def create
    like = Like.new
    like.title = params[:title]
    like.recipe_id = params[:id]
    like.publisher = params[:publisher]
    like.publisher_url = params[:publisher_url]
    like.rank = params[:rank]
    like.img = params[:img]
    like.user = current_user
    like.save
    return redirect_to :back
  end

  def show
    @likes = current_user.likes
  end

  def edit
  end

  def update

  end

  def delete
    like = Like.find(params[:id])
    like.delete
    return redirect_to saved_recipes_path
  end
end
