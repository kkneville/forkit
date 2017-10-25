class AddNameToMealplans < ActiveRecord::Migration
  def change
    add_column :mealplans, :name, :string
  end
end
