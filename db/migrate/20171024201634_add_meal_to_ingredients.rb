class AddMealToIngredients < ActiveRecord::Migration
  def change
  	add_reference :ingredients, :meal, index: true, foreign_key: true
  end
end
