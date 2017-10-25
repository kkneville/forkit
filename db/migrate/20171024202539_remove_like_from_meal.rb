class RemoveLikeFromMeal < ActiveRecord::Migration
  def change
  	remove_column :meals, :like_id, :integer
  end
end
