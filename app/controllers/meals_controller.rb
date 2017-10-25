class MealsController < ApplicationController
  def index
  end

  def new
  end

  def create
    meal = Meal.new
    meal.recipe_id = params[:id]
    meal.title = params[:title]
    meal.source = params[:source]
    meal.img = params[:img]
    meal.publisher = params[:publisher]
    meal.publisher_url = params[:publisher_url]
    meal.rank = params[:rank]
    meal.user = current_user
    meal.save
    session[:meal] = meal.id

    @id = params[:id]
    @recipe = JSON.parse(Net::HTTP.get(URI.parse("http://food2fork.com/api/get?key=91c70198fb6803137c6990f067c53c0d&rId=#{@id}")))
    session[:recipe] = @recipe

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
