class ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    ingredients = session[:ingredients]
    p ingredients
    list = []
    ingredients.each do |ing|
      item = Item.new
      item.name = ing
      item.save
      list.push(item.id)
    end  
    session[:list] = list
    return redirect_to add_ingredient_path
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
