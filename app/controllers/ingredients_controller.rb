class IngredientsController < ApplicationController
  def index
  end

  def new
  end

  def create
    meal = Meal.find(session[:meal])
    list = session[:list]
    list.each do |item|
      ing = Ingredient.new
      ing.item_id = item
      ing.meal_id = meal.id
      ing.save
    end
    p session[:list]
    session.delete(:list)
    return redirect_to create_mealplan_path
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
