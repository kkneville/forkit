class IngredientsController < ApplicationController
  def index
  end

  def new
  end

  def create
    list = sessions[:list]
    list.each do |item|
      ing = Ingredient.new
      ing.name = item
      ing.save
    end
    session.delete[:list]
    return redirect_to create_meal_plan
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
