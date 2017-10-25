class AddUserToMealplan < ActiveRecord::Migration
  def change
    add_reference :mealplans, :user, index: true, foreign_key: true
  end
end
