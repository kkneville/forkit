class MealplanController < ApplicationController
  def index
  end

  def new
    if session[:meal]
      @meal = Meal.find(session[:meal])
    end  
    @mealplans = Mealplan.all
  end

  def create
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
