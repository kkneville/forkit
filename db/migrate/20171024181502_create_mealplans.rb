class CreateMealplans < ActiveRecord::Migration
  def change
    create_table :mealplans do |t|
      t.date :startdate
      t.date :enddate
      t.string :notes

      t.timestamps null: false
    end
  end
end
