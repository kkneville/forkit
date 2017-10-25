class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :mealplan, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :like, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
