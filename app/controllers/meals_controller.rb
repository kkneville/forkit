class MealsController < ApplicationController
  def index
  end

  def new
  end

  def create
    meal = Meal.new
    meal.id = params[:id]
    meal.title = params[:title]
    meal.source = params[:source]
    meal.img = params[:img]
    meal.publisher = params[:publisher]
    meal.publisher_url = params[:publisher_url]
    meal.rank = params[:rank]
    session[:ingredients] = params[:ing]

    return redirect_to create_items_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
